
CREATE OR REPLACE FUNCTION tmp_three_points()
  RETURNS epoint[]
  LANGUAGE plpgsql VOLATILE AS $$
    DECLARE
      p1 epoint;
      p2 epoint;
      p3 epoint;
    BEGIN
      p1 := epoint((asin(2*random()-1) / pi()) * 180, (2*random()-1) * 180);
      p2 := epoint(latitude(p1) + (2*random()-1), longitude(p1) + cos(latitude(p1)/180*pi()) * (2*random()-1));
      p3 := epoint(latitude(p1) + (2*random()-1), longitude(p1) + cos(latitude(p1)/180*pi()) * (2*random()-1));
      RETURN ARRAY[p1, p2, p3];
    END;
  $$;

INSERT INTO "test" ("location", "surrounding", "multipoint", "triangle", "votes") SELECT
  epoint((asin(2*random()-1) / pi()) * 180, (2*random()-1) * 180),
  ecircle((asin(2*random()-1) / pi()) * 180, (2*random()-1) * 180, -ln(1-random()) * 1000),
  ecluster_create_multipoint(tmp_three_points()),
  ecluster_create_polygon(tmp_three_points()),
  floor(random()*101)
  FROM generate_series(1, 10000);

DROP FUNCTION tmp_three_points();

