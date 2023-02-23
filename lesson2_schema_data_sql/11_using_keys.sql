INSERT INTO
  films (title, year, genre, director, duration)
VALUES
  ('Godzilla', 1998, 'scifi', 'Roland Emmerich', 139);

INSERT INTO
  films (title, year, genre, director, duration)
VALUES
  ('Godzilla', 2014, 'scifi', 'Gareth Edwards', 123);

CREATE SEQUENCE counter;

SELECT
  nextval('counter');

DROP SEQUENCE counter;

CREATE SEQUENCE counter_even START 2 INCREMENT 2;

-- Postgres auto-generates a PRIMARY KEY index name after the following statement:
--  regions_pkey
CREATE TABLE
  regions (id serial PRIMARY KEY, name text, area integer);

ALTER TABLE films
ADD COLUMN id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY;

ALTER TABLE films
DROP CONSTRAINT "films_pkey";