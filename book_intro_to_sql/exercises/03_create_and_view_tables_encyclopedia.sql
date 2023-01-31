-- Create DB using local command:
-- `dcreatedb encyclopedia`

-- Connect to that using this command:
-- `dpsql -d encyclopedia`

-- Define the database from this file with this command (run in this file's dir):
-- `dpsql -d encyclopedia < 03_create_and_view_tables_encyclopedia.sql`

CREATE TABLE countries (
  id serial,  -- Would usually add a UNIQUE constraint on a `serial`-type column.
              -- Also, would not use `serial` in Postgres v10+. See next statement.
  name varchar(50) UNIQUE NOT NULL,
  capital varchar(50) NOT NULL,
  population int
);

CREATE TABLE famous_people (
   id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
   name varchar(100) NOT NULL,
   occupation varchar(150),
   date_of_birth varchar(50),
   deceased boolean DEFAULT FALSE
);

CREATE TABLE animals (
  id serial UNIQUE NOT NULL,
  name varchar(100) NOT NULL,
  binomial_name varchar(100) NOT NULL,
  max_weight_kg decimal(8, 3),
  max_age_years int,
  conservation_status char(2)
);

-- List all tables using meta-command (when connected to `encyclopedia` DB): `\dt`
-- Display `animals` table schema: `\d animals`