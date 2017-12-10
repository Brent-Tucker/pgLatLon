DROP OPERATOR <> (epoint, epoint);
DROP OPERATOR <> (ebox, ebox);
DROP OPERATOR <> (ecircle, ecircle);

CREATE OPERATOR <> (
  leftarg = epoint,
  rightarg = epoint,
  procedure = epoint_btree_ne,
  commutator = <>,
  negator = =,
  restrict = neqsel,
  join = neqjoinsel
);

CREATE OPERATOR <> (
  leftarg = ebox,
  rightarg = ebox,
  procedure = ebox_btree_ne,
  commutator = <>,
  negator = =,
  restrict = neqsel,
  join = neqjoinsel
);

CREATE OPERATOR <> (
  leftarg = ecircle,
  rightarg = ecircle,
  procedure = ecircle_btree_ne,
  commutator = <>,
  negator = =,
  restrict = neqsel,
  join = neqjoinsel
);

