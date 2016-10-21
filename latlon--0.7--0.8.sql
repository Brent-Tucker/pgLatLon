
CREATE FUNCTION GeoJSON_LinearRing_vertices(jsonb, text = 'epoint_lonlat')
  RETURNS SETOF jsonb
  LANGUAGE sql IMMUTABLE STRICT AS $$
    SELECT "result" FROM
      ( SELECT jsonb_array_length($1) - 1 ) AS "lastindex_row" ("lastindex")
      CROSS JOIN LATERAL jsonb_array_elements(
        CASE WHEN
          coords_to_epoint(
            ($1->0->>0)::float8,
            ($1->0->>1)::float8,
            $2
          ) = coords_to_epoint(
            ($1->"lastindex"->>0)::float8,
            ($1->"lastindex"->>1)::float8,
            $2
          )
        THEN
          $1 - "lastindex"
        ELSE
          $1
        END
      ) AS "result_row" ("result")
  $$;

-- NOTE: drop function to throw error if indices depend on it
--       (they need to be rebuilt)
DROP FUNCTION GeoJSON_to_ecluster(jsonb, text);

CREATE FUNCTION GeoJSON_to_ecluster(jsonb, text = 'epoint_lonlat')
  RETURNS ecluster
  LANGUAGE sql IMMUTABLE STRICT AS $$
    SELECT CASE $1->>'type'
    WHEN 'Point' THEN
      coords_to_epoint(
        ($1->'coordinates'->>0)::float8,
        ($1->'coordinates'->>1)::float8,
        $2
      )::ecluster
    WHEN 'MultiPoint' THEN
      ( SELECT ecluster_create_multipoint(array_agg(
          coords_to_epoint(
            ("coord"->>0)::float8,
            ("coord"->>1)::float8,
            $2
          )
        ))
        FROM jsonb_array_elements($1->'coordinates') AS "coord"
      )
    WHEN 'LineString' THEN
      ( SELECT ecluster_create_path(array_agg(
          coords_to_epoint(
            ("coord"->>0)::float8,
            ("coord"->>1)::float8,
            $2
          )
        ))
        FROM jsonb_array_elements($1->'coordinates') AS "coord"
      )
    WHEN 'MultiLineString' THEN
      ( SELECT ecluster_concat(array_agg(
          ( SELECT ecluster_create_path(array_agg(
              coords_to_epoint(
                ("coord"->>0)::float8,
                ("coord"->>1)::float8,
                $2
              )
            ))
            FROM jsonb_array_elements("coord_array") AS "coord"
          )
        ))
        FROM jsonb_array_elements($1->'coordinates') AS "coord_array"
      )
    WHEN 'Polygon' THEN
      ( SELECT ecluster_concat(array_agg(
          ( SELECT ecluster_create_polygon(array_agg(
              coords_to_epoint(
                ("coord"->>0)::float8,
                ("coord"->>1)::float8,
                $2
              )
            ))
            FROM GeoJSON_LinearRing_vertices("coord_array", $2) AS "coord"
          )
        ))
        FROM jsonb_array_elements($1->'coordinates') AS "coord_array"
      )
    WHEN 'MultiPolygon' THEN
      ( SELECT ecluster_concat(array_agg(
          ( SELECT ecluster_concat(array_agg(
              ( SELECT ecluster_create_polygon(array_agg(
                  coords_to_epoint(
                    ("coord"->>0)::float8,
                    ("coord"->>1)::float8,
                    $2
                  )
                ))
                FROM GeoJSON_LinearRing_vertices("coord_array", $2) AS "coord"
              )
            ))
            FROM jsonb_array_elements("coord_array_array") AS "coord_array"
          )
        ))
        FROM jsonb_array_elements($1->'coordinates') AS "coord_array_array"
      )
    WHEN 'GeometryCollection' THEN
      ( SELECT ecluster_concat(array_agg(
          GeoJSON_to_ecluster("geometry", $2)
        ))
        FROM jsonb_array_elements($1->'geometries') AS "geometry"
      )
    WHEN 'Feature' THEN
      GeoJSON_to_ecluster($1->'geometry', $2)
    WHEN 'FeatureCollection' THEN
      ( SELECT ecluster_concat(array_agg(
          GeoJSON_to_ecluster("feature", $2)
        ))
        FROM jsonb_array_elements($1->'features') AS "feature"
      )
    ELSE
      NULL
    END
  $$;

