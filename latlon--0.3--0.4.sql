
CREATE OR REPLACE FUNCTION ekey_point_in_dummy(cstring)
  RETURNS ekey_point
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_point_out_dummy(ekey_point)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_in_dummy(cstring)
  RETURNS ekey_area
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION ekey_area_out_dummy(ekey_area)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_notimpl';

CREATE OR REPLACE FUNCTION epoint_in(cstring)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_in';

CREATE OR REPLACE FUNCTION ebox_in(cstring)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_in';

CREATE OR REPLACE FUNCTION ecircle_in(cstring)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_in';

CREATE OR REPLACE FUNCTION ecluster_in(cstring)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_in';

CREATE OR REPLACE FUNCTION epoint_out(epoint)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_out';

CREATE OR REPLACE FUNCTION ebox_out(ebox)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_out';

CREATE OR REPLACE FUNCTION ecircle_out(ecircle)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_out';

CREATE OR REPLACE FUNCTION ecluster_out(ecluster)
  RETURNS cstring
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_out';

CREATE OR REPLACE FUNCTION epoint_recv(internal)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_recv';

CREATE OR REPLACE FUNCTION ebox_recv(internal)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_recv';

CREATE OR REPLACE FUNCTION ecircle_recv(internal)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_recv';

CREATE OR REPLACE FUNCTION epoint_send(epoint)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_send';

CREATE OR REPLACE FUNCTION ebox_send(ebox)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_send';

CREATE OR REPLACE FUNCTION ecircle_send(ecircle)
  RETURNS bytea
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_send';

CREATE OR REPLACE FUNCTION epoint_btree_lt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_lt';

CREATE OR REPLACE FUNCTION epoint_btree_le(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_le';

CREATE OR REPLACE FUNCTION epoint_btree_eq(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_eq';

CREATE OR REPLACE FUNCTION epoint_btree_ne(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_ne';

CREATE OR REPLACE FUNCTION epoint_btree_ge(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_ge';

CREATE OR REPLACE FUNCTION epoint_btree_gt(epoint, epoint)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_gt';

CREATE OR REPLACE FUNCTION epoint_btree_cmp(epoint, epoint)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_epoint_cmp';

CREATE OR REPLACE FUNCTION ebox_btree_lt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_lt';

CREATE OR REPLACE FUNCTION ebox_btree_le(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_le';

CREATE OR REPLACE FUNCTION ebox_btree_eq(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_eq';

CREATE OR REPLACE FUNCTION ebox_btree_ne(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_ne';

CREATE OR REPLACE FUNCTION ebox_btree_ge(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_ge';

CREATE OR REPLACE FUNCTION ebox_btree_gt(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_gt';

CREATE OR REPLACE FUNCTION ebox_btree_cmp(ebox, ebox)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ebox_cmp';

CREATE OR REPLACE FUNCTION ecircle_btree_lt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_lt';

CREATE OR REPLACE FUNCTION ecircle_btree_le(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_le';

CREATE OR REPLACE FUNCTION ecircle_btree_eq(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_eq';

CREATE OR REPLACE FUNCTION ecircle_btree_ne(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_ne';

CREATE OR REPLACE FUNCTION ecircle_btree_ge(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_ge';

CREATE OR REPLACE FUNCTION ecircle_btree_gt(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_gt';

CREATE OR REPLACE FUNCTION ecircle_btree_cmp(ecircle, ecircle)
  RETURNS int4
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_btree_ecircle_cmp';

CREATE OR REPLACE FUNCTION cast_epoint_to_ebox(epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_to_ebox';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecircle(epoint)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_to_ecircle';

CREATE OR REPLACE FUNCTION cast_epoint_to_ecluster(epoint)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_to_ecluster';

CREATE OR REPLACE FUNCTION cast_ebox_to_ecluster(ebox)
  RETURNS ecluster
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_to_ecluster';

CREATE OR REPLACE FUNCTION epoint(float8, float8)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_epoint';

CREATE OR REPLACE FUNCTION empty_ebox()
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_empty_ebox';

CREATE OR REPLACE FUNCTION ebox(float8, float8, float8, float8)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_ebox';

CREATE OR REPLACE FUNCTION ebox(epoint, epoint)
  RETURNS ebox
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_ebox_from_epoints';

CREATE OR REPLACE FUNCTION ecircle(float8, float8, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_ecircle';

CREATE OR REPLACE FUNCTION ecircle(epoint, float8)
  RETURNS ecircle
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_create_ecircle_from_epoint';

CREATE OR REPLACE FUNCTION latitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_lat';

CREATE OR REPLACE FUNCTION longitude(epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_lon';

CREATE OR REPLACE FUNCTION min_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_lat_min';

CREATE OR REPLACE FUNCTION max_latitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_lat_max';

CREATE OR REPLACE FUNCTION min_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_lon_min';

CREATE OR REPLACE FUNCTION max_longitude(ebox)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_lon_max';

CREATE OR REPLACE FUNCTION center(ecircle)
  RETURNS epoint
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_center';

CREATE OR REPLACE FUNCTION radius(ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_radius';

CREATE OR REPLACE FUNCTION epoint_ebox_overlap_proc(epoint, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ebox_overlap';

CREATE OR REPLACE FUNCTION epoint_ecircle_overlap_proc(epoint, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ecircle_overlap';

CREATE OR REPLACE FUNCTION epoint_ecluster_overlap_proc(epoint, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ecluster_overlap';

CREATE OR REPLACE FUNCTION epoint_ecluster_may_overlap_proc(epoint, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ebox_overlap_proc(ebox, ebox)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_overlap';

CREATE OR REPLACE FUNCTION ebox_ecircle_may_overlap_proc(ebox, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_ecircle_may_overlap';

CREATE OR REPLACE FUNCTION ebox_ecluster_may_overlap_proc(ebox, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ebox_ecluster_may_overlap';

CREATE OR REPLACE FUNCTION ecircle_overlap_proc(ecircle, ecircle)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_overlap';

CREATE OR REPLACE FUNCTION ecircle_ecluster_overlap_proc(ecircle, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_ecluster_overlap';

CREATE OR REPLACE FUNCTION ecircle_ecluster_may_overlap_proc(ecircle, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_ecluster_may_overlap';

CREATE FUNCTION ecluster_overlap_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_overlap';

CREATE OR REPLACE FUNCTION ecluster_may_overlap_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_may_overlap';

CREATE FUNCTION ecluster_contains_proc(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_contains';

CREATE OR REPLACE FUNCTION epoint_distance_proc(epoint, epoint)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_distance';

CREATE OR REPLACE FUNCTION epoint_ecircle_distance_proc(epoint, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ecircle_distance';

CREATE OR REPLACE FUNCTION epoint_ecluster_distance_proc(epoint, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_epoint_ecluster_distance';

CREATE OR REPLACE FUNCTION ecircle_distance_proc(ecircle, ecircle)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_distance';

CREATE OR REPLACE FUNCTION ecircle_ecluster_distance_proc(ecircle, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecircle_ecluster_distance';

CREATE FUNCTION ecluster_distance_proc(ecluster, ecluster)
  RETURNS float8
  LANGUAGE C IMMUTABLE STRICT
  AS '$libdir/latlon-v0004', 'pgl_ecluster_distance';

CREATE OPERATOR && (
  leftarg = ecluster,
  rightarg = ecluster,
  procedure = ecluster_overlap_proc,
  commutator = &&,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecircle_overlap_castwrap(ebox, ecircle)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster && $2';

CREATE OPERATOR && (
  leftarg = ebox,
  rightarg = ecircle,
  procedure = ebox_ecircle_overlap_castwrap,
  commutator = &&,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecircle_overlap_castwrap(ecircle, ebox)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 && $2::ecluster';

CREATE OPERATOR && (
  leftarg = ecircle,
  rightarg = ebox,
  procedure = ebox_ecircle_overlap_castwrap,
  commutator = &&,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecluster_overlap_castwrap(ebox, ecluster)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster && $2';

CREATE OPERATOR && (
  leftarg = ebox,
  rightarg = ecluster,
  procedure = ebox_ecluster_overlap_castwrap,
  commutator = &&,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecluster_overlap_castwrap(ecluster, ebox)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 && $2::ecluster';

CREATE OPERATOR && (
  leftarg = ecluster,
  rightarg = ebox,
  procedure = ebox_ecluster_overlap_castwrap,
  commutator = &&,
  restrict = areasel,
  join = areajoinsel
);


CREATE OPERATOR @> (
  leftarg = ebox,
  rightarg = epoint,
  procedure = epoint_ebox_overlap_commutator,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE OPERATOR <@ (
  leftarg = epoint,
  rightarg = ebox,
  procedure = epoint_ebox_overlap_proc,
  commutator = @>,
  restrict = areasel,
  join = areajoinsel
);

CREATE OPERATOR @> (
  leftarg = ecluster,
  rightarg = epoint,
  procedure = epoint_ecluster_overlap_commutator,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE OPERATOR <@ (
  leftarg = epoint,
  rightarg = ecluster,
  procedure = epoint_ecluster_overlap_proc,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE OPERATOR @> (
  leftarg = ecluster,
  rightarg = ecluster,
  procedure = ecluster_contains_proc,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ecluster_contains_commutator(ecluster, ecluster)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $2 @> $1';

CREATE OPERATOR <@ (
  leftarg = ecluster,
  rightarg = ecluster,
  procedure = ecluster_contains_commutator,
  commutator = @>,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecluster_contains_castwrap(ebox, ecluster)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster @> $2';

CREATE OPERATOR @> (
  leftarg = ebox,
  rightarg = ecluster,
  procedure = ebox_ecluster_contains_castwrap,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ebox_ecluster_contains_castwrap(ecluster, ebox)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $2::ecluster @> $1';

CREATE OPERATOR <@ (
  leftarg = ecluster,
  rightarg = ebox,
  procedure = ebox_ecluster_contains_castwrap,
  commutator = @>,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ecluster_ebox_contains_castwrap(ecluster, ebox)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 @> $2::ecluster';

CREATE OPERATOR @> (
  leftarg = ecluster,
  rightarg = ebox,
  procedure = ecluster_ebox_contains_castwrap,
  commutator = <@,
  restrict = areasel,
  join = areajoinsel
);

CREATE FUNCTION ecluster_ebox_contains_castwrap(ebox, ecluster)
  RETURNS boolean
  LANGUAGE sql IMMUTABLE AS 'SELECT $2 @> $1::ecluster';

CREATE OPERATOR <@ (
  leftarg = ebox,
  rightarg = ecluster,
  procedure = ecluster_ebox_contains_castwrap,
  commutator = @>,
  restrict = areasel,
  join = areajoinsel
);


CREATE OPERATOR <-> (
  leftarg = ecluster,
  rightarg = ecluster,
  procedure = ecluster_distance_proc,
  commutator = <->
);

CREATE FUNCTION epoint_ebox_distance_castwrap(epoint, ebox)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 <-> $2::ecluster';

CREATE OPERATOR <-> (
  leftarg = epoint,
  rightarg = ebox,
  procedure = epoint_ebox_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION epoint_ebox_distance_castwrap(ebox, epoint)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster <-> $2';

CREATE OPERATOR <-> (
  leftarg = ebox,
  rightarg = epoint,
  procedure = epoint_ebox_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION ebox_distance_castwrap(ebox, ebox)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster <-> $2::ecluster';

CREATE OPERATOR <-> (
  leftarg = ebox,
  rightarg = ebox,
  procedure = ebox_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION ebox_ecircle_distance_castwrap(ebox, ecircle)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster <-> $2';

CREATE OPERATOR <-> (
  leftarg = ebox,
  rightarg = ecircle,
  procedure = ebox_ecircle_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION ebox_ecircle_distance_castwrap(ecircle, ebox)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 <-> $2::ecluster';

CREATE OPERATOR <-> (
  leftarg = ecircle,
  rightarg = ebox,
  procedure = ebox_ecircle_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION ebox_ecluster_distance_castwrap(ebox, ecluster)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1::ecluster <-> $2';

CREATE OPERATOR <-> (
  leftarg = ebox,
  rightarg = ecluster,
  procedure = ebox_ecluster_distance_castwrap,
  commutator = <->
);

CREATE FUNCTION ebox_ecluster_distance_castwrap(ecluster, ebox)
  RETURNS float8
  LANGUAGE sql IMMUTABLE AS 'SELECT $1 <-> $2::ecluster';

CREATE OPERATOR <-> (
  leftarg = ecluster,
  rightarg = ebox,
  procedure = ebox_ecluster_distance_castwrap,
  commutator = <->
);

DROP OPERATOR CLASS epoint_ops USING gist;
DROP OPERATOR CLASS ecircle_ops USING gist;
DROP OPERATOR CLASS ecluster_ops USING gist;

CREATE OR REPLACE FUNCTION pgl_gist_consistent(internal, internal, smallint, oid, internal)
  RETURNS boolean
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_consistent';

CREATE OR REPLACE FUNCTION pgl_gist_union(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_union';

CREATE OR REPLACE FUNCTION pgl_gist_compress_epoint(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_compress_epoint';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecircle(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_compress_ecircle';

CREATE OR REPLACE FUNCTION pgl_gist_compress_ecluster(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_compress_ecluster';

CREATE OR REPLACE FUNCTION pgl_gist_decompress(internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_decompress';

CREATE OR REPLACE FUNCTION pgl_gist_penalty(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_penalty';

CREATE OR REPLACE FUNCTION pgl_gist_picksplit(internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_picksplit';

CREATE OR REPLACE FUNCTION pgl_gist_same(internal, internal, internal)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_same';

CREATE OR REPLACE FUNCTION pgl_gist_distance(internal, internal, smallint, oid)
  RETURNS internal
  LANGUAGE C STRICT
  AS '$libdir/latlon-v0004', 'pgl_gist_distance';

CREATE OPERATOR CLASS epoint_ops
  DEFAULT FOR TYPE epoint USING gist AS
  OPERATOR  11 = ,
  OPERATOR  22 &&  (epoint, ebox),
  OPERATOR 222 <@  (epoint, ebox),
  OPERATOR  23 &&  (epoint, ecircle),
  OPERATOR  24 &&  (epoint, ecluster),
  OPERATOR 124 &&+ (epoint, ecluster),
  OPERATOR 224 <@  (epoint, ecluster),
  OPERATOR  31 <-> (epoint, epoint) FOR ORDER BY float_ops,
  OPERATOR  32 <-> (epoint, ebox) FOR ORDER BY float_ops,
  OPERATOR  33 <-> (epoint, ecircle) FOR ORDER BY float_ops,
  OPERATOR  34 <-> (epoint, ecluster) FOR ORDER BY float_ops,
  FUNCTION 1 pgl_gist_consistent(internal, internal, smallint, oid, internal),
  FUNCTION 2 pgl_gist_union(internal, internal),
  FUNCTION 3 pgl_gist_compress_epoint(internal),
  FUNCTION 4 pgl_gist_decompress(internal),
  FUNCTION 5 pgl_gist_penalty(internal, internal, internal),
  FUNCTION 6 pgl_gist_picksplit(internal, internal),
  FUNCTION 7 pgl_gist_same(internal, internal, internal),
  FUNCTION 8 pgl_gist_distance(internal, internal, smallint, oid),
  STORAGE ekey_point;

CREATE OPERATOR CLASS ecircle_ops
  DEFAULT FOR TYPE ecircle USING gist AS
  OPERATOR  13 = ,
  OPERATOR  21 &&  (ecircle, epoint),
  OPERATOR  22 &&  (ecircle, ebox),
  OPERATOR 122 &&+ (ecircle, ebox),
  OPERATOR  23 &&  (ecircle, ecircle),
  OPERATOR  24 &&  (ecircle, ecluster),
  OPERATOR 124 &&+ (ecircle, ecluster),
  OPERATOR  31 <-> (ecircle, epoint) FOR ORDER BY float_ops,
  OPERATOR  32 <-> (ecircle, ebox) FOR ORDER BY float_ops,
  OPERATOR  33 <-> (ecircle, ecircle) FOR ORDER BY float_ops,
  OPERATOR  34 <-> (ecircle, ecluster) FOR ORDER BY float_ops,
  FUNCTION 1 pgl_gist_consistent(internal, internal, smallint, oid, internal),
  FUNCTION 2 pgl_gist_union(internal, internal),
  FUNCTION 3 pgl_gist_compress_ecircle(internal),
  FUNCTION 4 pgl_gist_decompress(internal),
  FUNCTION 5 pgl_gist_penalty(internal, internal, internal),
  FUNCTION 6 pgl_gist_picksplit(internal, internal),
  FUNCTION 7 pgl_gist_same(internal, internal, internal),
  FUNCTION 8 pgl_gist_distance(internal, internal, smallint, oid),
  STORAGE ekey_area;

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
  FUNCTION 1 pgl_gist_consistent(internal, internal, smallint, oid, internal),
  FUNCTION 2 pgl_gist_union(internal, internal),
  FUNCTION 3 pgl_gist_compress_ecluster(internal),
  FUNCTION 4 pgl_gist_decompress(internal),
  FUNCTION 5 pgl_gist_penalty(internal, internal, internal),
  FUNCTION 6 pgl_gist_picksplit(internal, internal),
  FUNCTION 7 pgl_gist_same(internal, internal, internal),
  FUNCTION 8 pgl_gist_distance(internal, internal, smallint, oid),
  STORAGE ekey_area;

