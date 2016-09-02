
CREATE EXTENSION latlon;

CREATE TABLE "test" (
        "id"            SERIAL4         PRIMARY KEY,
        "location"      EPOINT          NOT NULL,
        "surrounding"   ECIRCLE         NOT NULL,
        "multipoint"    ECLUSTER        NOT NULL,
        "triangle"      ECLUSTER        NOT NULL );

CREATE INDEX "test_location_key"    ON "test" USING gist ("location");
CREATE INDEX "test_surrounding_key" ON "test" USING gist ("surrounding");
CREATE INDEX "test_multipoint_key"  ON "test" USING gist ("multipoint");
CREATE INDEX "test_triangle_key"    ON "test" USING gist ("triangle");

