--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  kwaliteit VARCHAR(20)
);

CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  kleurNAAM VARCHAR(255),
  description TEXT
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('liverpool', 'liverpool thuis shirt 23/24.', '816905633-0', 100);
insert into products (name, description, code, price) values ('barcalona', 'barcalona thuis shirt 23/24.', '077030122-3', 100);
insert into products (name, description, code, price) values ('man united', 'manchester united thuis shirt 23/24.' ,'445924201-X', 100);
insert into products (name, description, code, price) values ('psg', 'psg thuis shirt 23/24.', '693155505-7', 100);
insert into products (name, description, code, price) values ('real madrid', 'real madrid thuis shirt 23/24.', '686928463-6', 100);
insert into products (name, description, code, price) values ('bayern munchen', 'bayern munchen thuis shirt 23/24.', '492662523-7', 100);

--n:m kleur shirtjes
