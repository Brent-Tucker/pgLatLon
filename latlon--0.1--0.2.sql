
CREATE OR REPLACE FUNCTION ekey_point_in_dummy(cstring)
  RETURNS ekey_point
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_point_out_dummy(ekey_point)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_in_dummy(cstring)
  RETURNS ekey_area
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_out_dummy(ekey_area)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION epoint_in(cstring)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_in';

CREATE OR REPLACE FUNCTION ebox_in(cstring)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_in';

CREATE OR REPLACE FUNCTION ecircle_in(cstring)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_in';

CREATE OR REPLACE FUNCTION ecluster_in(cstring)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecluster_in';

CREATE OR REPLACE FUNCTION epoint_out(epoint)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_out';

CREATE OR REPLACE FUNCTION ebox_out(ebox)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_out';

CREATE OR REPLACE FUNCTION ecircle_out(ecircle)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_out';

CREATE OR REPLACE FUNCTION ecluster_out(ecluster)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecluster_out';

CREATE OR REPLACE FUNCTION epoint_recv(internal)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_recv';

CREATE OR REPLACE FUNCTION ebox_recv(internal)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_recv';

CREATE OR REPLACE FUNCTION ecircle_recv(internal)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_recv';

CREATE OR REPLACE FUNCTION epoint_send(epoint)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_send';

CREATE OR REPLACE FUNCTION ebox_send(ebox)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_send';

CREATE OR REPLACE FUNCTION ecircle_send(ecircle)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_send';

CREATE OR REPLACE FUNCTION epoint_btree_lt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_lt';

CREATE OR REPLACE FUNCTION epoint_btree_le(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_le';

CREATE OR REPLACE FUNCTION epoint_btree_eq(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_eq';

CREATE OR REPLACE FUNCTION epoint_btree_ne(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_ne';

CREATE OR REPLACE FUNCTION epoint_btree_ge(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_ge';

CREATE OR REPLACE FUNCTION epoint_btree_gt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_gt';

CREATE OR REPLACE FUNCTION epoint_btree_cmp(epoint, epoint)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_epoint_cmp';

CREATE OR REPLACE FUNCTION ebox_btree_lt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_lt';

CREATE OR REPLACE FUNCTION ebox_btree_le(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_le';

CREATE OR REPLACE FUNCTION ebox_btree_eq(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_eq';

CREATE OR REPLACE FUNCTION ebox_btree_ne(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_ne';

CREATE OR REPLACE FUNCTION ebox_btree_ge(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_ge';

CREATE OR REPLACE FUNCTION ebox_btree_gt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_gt';

CREATE OR REPLACE FUNCTION ebox_btree_cmp(ebox, ebox)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ebox_cmp';

CREATE OR REPLACE FUNCTION ecircle_btree_lt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_lt';

CREATE OR REPLACE FUNCTION ecircle_btree_le(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_le';

CREATE OR REPLACE FUNCTION ecircle_btree_eq(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_eq';

CREATE OR REPLACE FUNCTION ecircle_btree_ne(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_ne';

CREATE OR REPLACE FUNCTION ecircle_btree_ge(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_ge';

CREATE OR REPLACE FUNCTION ecircle_btree_gt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_gt';

CREATE OR REPLACE FUNCTION ecircle_btree_cmp(ecircle, ecircle)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_btree_ecircle_cmp';

CREATE OR REPLACE FUNCTION cast_epoint_to_ebox(epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_to_ebox';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecircle(epoint)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_to_ecircle';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecluster(epoint)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_to_ecluster';

CREATE OR REPLACE FUNCTION cast_ebox_to_ecluster(ebox)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_to_ecluster';

CREATE OR REPLACE FUNCTION epoint(float8, float8)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_epoint';

CREATE OR REPLACE FUNCTION empty_ebox()
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_empty_ebox';

CREATE OR REPLACE FUNCTION ebox(float8, float8, float8, float8)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_ebox';

CREATE OR REPLACE FUNCTION ebox(epoint, epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_ebox_from_epoints';

CREATE OR REPLACE FUNCTION ecircle(float8, float8, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_ecircle';

CREATE OR REPLACE FUNCTION ecircle(epoint, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_create_ecircle_from_epoint';

CREATE OR REPLACE FUNCTION latitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_lat';

CREATE OR REPLACE FUNCTION longitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_lon';

CREATE OR REPLACE FUNCTION min_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_lat_min';

CREATE OR REPLACE FUNCTION max_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_lat_max';

CREATE OR REPLACE FUNCTION min_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_lon_min';

CREATE OR REPLACE FUNCTION max_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_lon_max';

CREATE OR REPLACE FUNCTION center(ecircle)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_center';

CREATE OR REPLACE FUNCTION radius(ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_radius';

CREATE OR REPLACE FUNCTION epoint_ebox_overlap_proc(epoint, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_ebox_overlap';

CREATE OR REPLACE FUNCTION epoint_ecircle_overlap_proc(epoint, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_ecircle_overlap';

CREATE OR REPLACE FUNCTION epoint_ecluster_overlap_proc(epoint, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_ecluster_overlap';

CREATE OR REPLACE FUNCTION ebox_overlap_proc(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ebox_overlap';

CREATE OR REPLACE FUNCTION ecircle_overlap_proc(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_overlap';

CREATE OR REPLACE FUNCTION ecircle_ecluster_overlap_proc(ecircle, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_ecluster_overlap';

CREATE OR REPLACE FUNCTION epoint_distance_proc(epoint, epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_distance';

CREATE OR REPLACE FUNCTION epoint_ecircle_distance_proc(epoint, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_ecircle_distance';

CREATE OR REPLACE FUNCTION epoint_ecluster_distance_proc(epoint, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_epoint_ecluster_distance';

CREATE OR REPLACE FUNCTION ecircle_distance_proc(ecircle, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_distance';

CREATE OR REPLACE FUNCTION ecircle_ecluster_distance_proc(ecircle, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0002', 'pgl_ecircle_ecluster_distance';

CREATE OR REPLACE FUNCTION pgl_gist_consistent(internal, internal, smallint, oid, internal)
  RETURNS boolean
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_consistent';

CREATE OR REPLACE FUNCTION pgl_gist_union(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_union';

CREATE OR REPLACE FUNCTION pgl_gist_compress_epoint(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_compress_epoint';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecircle(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_compress_ecircle';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecluster(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_compress_ecluster';

CREATE OR REPLACE FUNCTION pgl_gist_decompress(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_decompress';

CREATE OR REPLACE FUNCTION pgl_gist_penalty(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_penalty';

CREATE OR REPLACE FUNCTION pgl_gist_picksplit(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_picksplit';

CREATE OR REPLACE FUNCTION pgl_gist_same(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_same';

CREATE OR REPLACE FUNCTION pgl_gist_distance(internal, internal, smallint, oid)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0002', 'pgl_gist_distance';

