CREATE TABLE nas (
  na bytea NOT NULL,
  PRIMARY KEY(na)
);

CREATE TABLE handles (
  handle bytea NOT NULL,
  idx int4 NOT NULL,
  type bytea,
  data bytea,
  ttl_type int2,
  ttl int4,
  timestamp int4,
  refs text,
  admin_read bool,
  admin_write bool,
  pub_read bool,
  pub_write bool,
  PRIMARY KEY(handle, idx)
);

CREATE INDEX dataindex ON handles ( data );

CREATE INDEX handleindex ON handles ( handle );

GRANT ALL ON nas,handles to handleserver;

GRANT select ON nas,handles TO public;
