
CREATE EXTENSION latlon;

CREATE TABLE "test" (
        "id"            SERIAL4         PRIMARY KEY,
        "location"      EPOINT          NOT NULL,
        "surrounding"   ECIRCLE         NOT NULL,
        "multipoint"    ECLUSTER        NOT NULL,
        "triangle"      ECLUSTER        NOT NULL,
        "votes"         INT4            NOT NULL );

CREATE INDEX "test_location_key"    ON "test" USING gist ("location");
CREATE INDEX "test_surrounding_key" ON "test" USING gist ("surrounding");
CREATE INDEX "test_multipoint_key"  ON "test" USING gist ("multipoint");
CREATE INDEX "test_triangle_key"    ON "test" USING gist ("triangle");
CREATE INDEX "test_vote_key" ON "test" ("votes");


-- Below follows an example of how to perform a nearest-neighbor search with
-- weighted geometric objects (distance scaled anti-proportionally through
-- "votes" column).
--
-- NOTE: The approach may be speeded up by providing new data types like
--       "weighted_ecluster" with corresponding GiST index support in future
--       versions of pgLatLon.

CREATE TYPE "test_with_relevance" AS (
        "id"            INT4,
        "location"      EPOINT,
        "surrounding"   ECIRCLE,
        "multipoint"    ECLUSTER,
        "triangle"      ECLUSTER,
        "votes"         INT4,
        "relevance"     FLOAT8 );

CREATE FUNCTION "get_by_relevance" (epoint, int4 = 1, int4 = 10000)
  RETURNS SETOF "test_with_relevance"
  LANGUAGE plpgsql STABLE AS $$
    DECLARE
      "max_votes" INT4;
      "tries"     INT4 = 2;
      "all"       INT4;
      "matches"   INT4;
    BEGIN
      SELECT "votes" INTO "max_votes" FROM "test" ORDER BY "votes" DESC LIMIT 1;
      IF "max_votes" > 0 THEN
        LOOP
          RAISE DEBUG 'Considering % entries', "tries";
          SELECT
            count(1),
            count(CASE WHEN "relevance" < "worst_case" THEN 1 ELSE NULL END)
            INTO "all", "matches"
            FROM (
              SELECT
                CASE
                  WHEN "votes" = 0
                  THEN 'inf'::FLOAT8
                  ELSE "fair_distance" / "votes"
                END AS "relevance",
                max("fair_distance") OVER () / "max_votes" AS "worst_case"
              FROM (
                SELECT fair_distance("triangle", $1, $3), "votes" FROM "test"
                ORDER BY fair_distance
                LIMIT "tries"
              ) AS "subquery1"
            ) AS "subquery2";
          EXIT WHEN "matches" >= $2 OR "all" < "tries";
          "tries" := "tries" * 2;
        END LOOP;
        RETURN QUERY SELECT * FROM (
          SELECT
            *,
            CASE
              WHEN "votes" = 0
              THEN 'inf'::FLOAT8
              ELSE fair_distance("triangle", $1, $3) / "votes"
            END AS "relevance"
            FROM "test" ORDER BY fair_distance("triangle", $1, $3) LIMIT "tries"
        ) AS "subquery" ORDER BY "relevance", "id" LIMIT $2;
      ELSE
        RETURN QUERY SELECT * FROM "test" ORDER BY "id" LIMIT $2;
      END IF;
      RETURN;
    END;
  $$;

