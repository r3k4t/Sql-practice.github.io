
CREATE TABLE sales_reps(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50),
  region_id INTEGER
);

CREATE TABLE region(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50)
);

CREATE TABLE web_events(
  id INTEGER PRIMARY KEY NOT NULL,
  account_id INTEGER,
  occurred_at TIMESTAMP,
  channel VARCHAR(50)
);

CREATE TABLE accounts(
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(50),
  website VARCHAR(50),
  lat FLOAT,
  lon FLOAT,
  primary_poc VARCHAR(50),
  sales_rep_id INTEGER
);

CREATE TABLE orders(
  id INTEGER PRIMARY KEY NOT NULL,
  account_id INTEGER,
  occurred_at TIMESTAMP,
  standard_qty FLOAT,
  gloss_qty FLOAT,
  poster_qty FLOAT,
  total FLOAT,
  standard_amt_usd FLOAT,
  gloss_amt_usd FLOAT,
  poster_amt_usd FLOAT,
  total_amt_usd FLOAT
);