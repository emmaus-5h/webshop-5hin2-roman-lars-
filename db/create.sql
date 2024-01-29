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
  kleurNAAM VARCHAR(20)
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, kwaliteit) values ('liverpool', 'liverpool thuis shirt 23/24.', '816905633-0', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('barcalona', 'barcalona thuis shirt 23/24.', '077030122-3', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('man united', 'manchester united thuis shirt 23/24.' ,'445924201-X', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('psg', 'psg thuis shirt 23/24.', '693155505-7', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('real madrid', 'real madrid thuis shirt 23/24.', '686928463-6', 100, 9/10);
insert into products (name, description, code, price, kwaliteit) values ('bayern munchen', 'bayern munchen thuis shirt 23/24.', '492662523-7', 100, 8.5/10);
insert into products (name, description, code, price, kwaliteit) values ('liverpool uit shirt', 'liverpool uit shirt 23/24.', '816905633-1', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('barcalona uit shirt', 'barcalona uit shirt 23/24.', '077030122-4', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('man united uit shirt', 'manchester united uit shirt 23/24.' ,'445924201-Y', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('psg uit shirt', 'psg uit shirt 23/24.', '693155505-8', 100, 8/10);
insert into products (name, description, code, price, kwaliteit) values ('real madrid uit shirt', 'real madrid uit shirt 23/24.', '686928463-7', 100, 9/10);
insert into products (name, description, code, price, kwaliteit) values ('bayern munchen uit shirt', 'bayern munchen uit shirt 23/24.', '492662523-8', 100, 8.5/10);


insert into  kleur (kleurNAAM) values ('zwart');
insert into  kleur (kleurNAAM) values ('wit');
insert into  kleur (kleurNAAM) values ('rood');
insert into  kleur (kleurNAAM) values ('blauw');
insert into  kleur (kleurNAAM) values ('donker blauw');
insert into  kleur (kleurNAAM) values ('geel/goud');
--n:m kleur shirtjes
