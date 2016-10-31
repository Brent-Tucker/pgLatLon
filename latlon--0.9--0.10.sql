
CREATE TYPE epoint_with_sample_count;

CREATE OR REPLACE FUNCTION ekey_point_in_dummy(cstring)
  RETURNS ekey_point
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_point_out_dummy(ekey_point)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_in_dummy(cstring)
  RETURNS ekey_area
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_out_dummy(ekey_area)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION epoint_in(cstring)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_in';

CREATE FUNCTION epoint_with_sample_count_in(cstring)
  RETURNS epoint_with_sample_count
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_with_sample_count_in';

CREATE OR REPLACE FUNCTION ebox_in(cstring)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_in';

CREATE OR REPLACE FUNCTION ecircle_in(cstring)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_in';

CREATE OR REPLACE FUNCTION ecluster_in(cstring)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_in';

CREATE OR REPLACE FUNCTION epoint_out(epoint)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_out';

CREATE FUNCTION epoint_with_sample_count_out(epoint_with_sample_count)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_with_sample_count_out';

CREATE OR REPLACE FUNCTION ebox_out(ebox)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_out';

CREATE OR REPLACE FUNCTION ecircle_out(ecircle)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_out';

CREATE OR REPLACE FUNCTION ecluster_out(ecluster)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_out';

CREATE OR REPLACE FUNCTION epoint_recv(internal)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_recv';

CREATE OR REPLACE FUNCTION ebox_recv(internal)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_recv';

CREATE OR REPLACE FUNCTION ecircle_recv(internal)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_recv';

CREATE OR REPLACE FUNCTION epoint_send(epoint)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_send';

CREATE OR REPLACE FUNCTION ebox_send(ebox)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_send';

CREATE OR REPLACE FUNCTION ecircle_send(ecircle)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_send';

CREATE TYPE epoint_with_sample_count (
  internallength = 20,
  input = epoint_with_sample_count_in,
  output = epoint_with_sample_count_out,
  alignment = double );

CREATE OR REPLACE FUNCTION epoint_btree_lt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_lt';

CREATE OR REPLACE FUNCTION epoint_btree_le(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_le';

CREATE OR REPLACE FUNCTION epoint_btree_eq(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_eq';

CREATE OR REPLACE FUNCTION epoint_btree_ne(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_ne';

CREATE OR REPLACE FUNCTION epoint_btree_ge(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_ge';

CREATE OR REPLACE FUNCTION epoint_btree_gt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_gt';

CREATE OR REPLACE FUNCTION epoint_btree_cmp(epoint, epoint)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_epoint_cmp';

CREATE OR REPLACE FUNCTION ebox_btree_lt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_lt';

CREATE OR REPLACE FUNCTION ebox_btree_le(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_le';

CREATE OR REPLACE FUNCTION ebox_btree_eq(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_eq';

CREATE OR REPLACE FUNCTION ebox_btree_ne(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_ne';

CREATE OR REPLACE FUNCTION ebox_btree_ge(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_ge';

CREATE OR REPLACE FUNCTION ebox_btree_gt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_gt';

CREATE OR REPLACE FUNCTION ebox_btree_cmp(ebox, ebox)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ebox_cmp';

CREATE OR REPLACE FUNCTION ecircle_btree_lt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_lt';

CREATE OR REPLACE FUNCTION ecircle_btree_le(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_le';

CREATE OR REPLACE FUNCTION ecircle_btree_eq(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_eq';

CREATE OR REPLACE FUNCTION ecircle_btree_ne(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_ne';

CREATE OR REPLACE FUNCTION ecircle_btree_ge(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_ge';

CREATE OR REPLACE FUNCTION ecircle_btree_gt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_gt';

CREATE OR REPLACE FUNCTION ecircle_btree_cmp(ecircle, ecircle)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_btree_ecircle_cmp';

CREATE OR REPLACE FUNCTION cast_epoint_to_ebox(epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_to_ebox';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecircle(epoint)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_to_ecircle';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecluster(epoint)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_to_ecluster';

CREATE OR REPLACE FUNCTION cast_ebox_to_ecluster(ebox)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_to_ecluster';

CREATE OR REPLACE FUNCTION epoint(float8, float8)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_epoint';

CREATE FUNCTION epoint_with_sample_count(epoint, int4)
  RETURNS epoint_with_sample_count
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_epoint_with_sample_count';

CREATE OR REPLACE FUNCTION empty_ebox()
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_empty_ebox';

CREATE OR REPLACE FUNCTION ebox(float8, float8, float8, float8)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_ebox';

CREATE OR REPLACE FUNCTION ebox(epoint, epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_ebox_from_epoints';

CREATE OR REPLACE FUNCTION ecircle(float8, float8, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_ecircle';

CREATE OR REPLACE FUNCTION ecircle(epoint, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_create_ecircle_from_epoint';

CREATE OR REPLACE FUNCTION latitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_lat';

CREATE OR REPLACE FUNCTION longitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_lon';

CREATE OR REPLACE FUNCTION min_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_lat_min';

CREATE OR REPLACE FUNCTION max_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_lat_max';

CREATE OR REPLACE FUNCTION min_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_lon_min';

CREATE OR REPLACE FUNCTION max_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_lon_max';

CREATE OR REPLACE FUNCTION center(ecircle)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_center';

CREATE OR REPLACE FUNCTION radius(ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_radius';

CREATE OR REPLACE FUNCTION epoint_ebox_overlap_proc(epoint, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ebox_overlap';

CREATE OR REPLACE FUNCTION epoint_ecircle_overlap_proc(epoint, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ecircle_overlap';

CREATE OR REPLACE FUNCTION epoint_ecluster_overlap_proc(epoint, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ecluster_overlap';

CREATE OR REPLACE FUNCTION epoint_ecluster_may_overlap_proc(epoint, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ebox_overlap_proc(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_overlap';

CREATE OR REPLACE FUNCTION ebox_ecircle_may_overlap_proc(ebox, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_ecircle_may_overlap';

CREATE OR REPLACE FUNCTION ebox_ecluster_may_overlap_proc(ebox, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ebox_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ecircle_overlap_proc(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_overlap';

CREATE OR REPLACE FUNCTION ecircle_ecluster_overlap_proc(ecircle, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_ecluster_overlap';

CREATE OR REPLACE FUNCTION ecircle_ecluster_may_overlap_proc(ecircle, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ecluster_overlap_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_overlap';

CREATE OR REPLACE FUNCTION ecluster_may_overlap_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ecluster_contains_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_contains';

CREATE OR REPLACE FUNCTION epoint_distance_proc(epoint, epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_distance';

CREATE OR REPLACE FUNCTION epoint_ecircle_distance_proc(epoint, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ecircle_distance';

CREATE OR REPLACE FUNCTION epoint_ecluster_distance_proc(epoint, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_epoint_ecluster_distance';

CREATE OR REPLACE FUNCTION ecircle_distance_proc(ecircle, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_distance';

CREATE OR REPLACE FUNCTION ecircle_ecluster_distance_proc(ecircle, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecircle_ecluster_distance';

CREATE OR REPLACE FUNCTION ecluster_distance_proc(ecluster, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_distance';

DROP FUNCTION monte_carlo_area(ecluster, int4);

CREATE FUNCTION fair_distance_operator_proc(ecluster, epoint_with_sample_count)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0009', 'pgl_ecluster_epoint_sc_fair_distance';

CREATE OPERATOR <=> (
  leftarg = ecluster,
  rightarg = epoint_with_sample_count,
  procedure = fair_distance_operator_proc
);

CREATE OR REPLACE FUNCTION pgl_gist_consistent(internal, internal, smallint, oid, internal)
  RETURNS boolean
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_consistent';

CREATE OR REPLACE FUNCTION pgl_gist_union(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_union';

CREATE OR REPLACE FUNCTION pgl_gist_compress_epoint(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_compress_epoint';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecircle(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_compress_ecircle';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecluster(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_compress_ecluster';

CREATE OR REPLACE FUNCTION pgl_gist_decompress(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_decompress';

CREATE OR REPLACE FUNCTION pgl_gist_penalty(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_penalty';

CREATE OR REPLACE FUNCTION pgl_gist_picksplit(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_picksplit';

CREATE OR REPLACE FUNCTION pgl_gist_same(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_same';

CREATE OR REPLACE FUNCTION pgl_gist_distance(internal, internal, smallint, oid)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0009', 'pgl_gist_distance';

DROP OPERATOR CLASS ecluster_ops USING gist;

CREATE OPERATOR CLASS ecluster_ops
  DEFAULT FOR TYPE ecluster USING gist AS
  OPERATOR  21 &&  (ecluster, epoint),
  OPERATOR 121 &&+ (ecluster, epoint),
  OPERATOR 221 @>  (ecluster, epoint),
  OPERATOR  22 &&  (ecluster, ebox),
  OPERATOR 122 &&+ (ecluster, ebox),
  OPERATOR 222 @>  (ecluster, ebox),
  OPERATOR 322 <@  (ecluster, ebox),
  OPERATOR  23 &&  (ecluster, ecircle),
  OPERATOR 123 &&+ (ecluster, ecircle),
  OPERATOR  24 &&  (ecluster, ecluster),
  OPERATOR 124 &&+ (ecluster, ecluster),
  OPERATOR 224 @>  (ecluster, ecluster),
  OPERATOR 324 <@  (ecluster, ecluster),
  OPERATOR  31 <-> (ecluster, epoint) FOR ORDER BY float_ops,
  OPERATOR  32 <-> (ecluster, ebox) FOR ORDER BY float_ops,
  OPERATOR  33 <-> (ecluster, ecircle) FOR ORDER BY float_ops,
  OPERATOR  34 <-> (ecluster, ecluster) FOR ORDER BY float_ops,
  OPERATOR 131 <=> (ecluster, epoint_with_sample_count) FOR ORDER BY float_ops,
  FUNCTION 1 pgl_gist_consistent(internal, internal, smallint, oid, internal),
  FUNCTION 2 pgl_gist_union(internal, internal),
  FUNCTION 3 pgl_gist_compress_ecluster(internal),
  FUNCTION 4 pgl_gist_decompress(internal),
  FUNCTION 5 pgl_gist_penalty(internal, internal, internal),
  FUNCTION 6 pgl_gist_picksplit(internal, internal),
  FUNCTION 7 pgl_gist_same(internal, internal, internal),
  FUNCTION 8 pgl_gist_distance(internal, internal, smallint, oid),
  STORAGE ekey_area;

CREATE OR REPLACE FUNCTION fair_distance(ecluster, epoint, int4 = 10000)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 <=> epoint_with_sample_count($2, $3)';


