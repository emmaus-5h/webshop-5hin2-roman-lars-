--
-- create tables
--

-- feedback GEE 30 jan 2024
-- de n:m met kleuren klopt (de tabellen, de insert moet je nog toevoegen)
-- er moet 1:n, maar dat is eenvoudiger.
-- kwaliteit apart in een tabel voegt een 1:n toe. Dan moet je er wel bijvoorbeeld een beschrijving van kwaliteit bij voegen
-- daarna moet er nog 1 tabel bij

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  kwaliteit_id VARCHAR(20),
  populariteit_id VARCHAR(20)
);

CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleurNAAM VARCHAR(20)
);

CREATE TABLE soorteerOPkleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  kleur_id INTEGER
);

CREATE TABLE kwaliteit (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  cijfer_kwaliteit VARCHAR(10),
  reden_cijfer VARCHAR (20)
);

CREATE TABLE populariteit (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  hoeveelheid_populariteit VARCHAR(30),
  reden_populariteit VARCHAR (40)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('liverpool', 'liverpool thuis shirt 23/24.', '816905633-0', 99, 7, 3);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('liverpool uit shirt', 'liverpool uit shirt 23/24.', '816905633-1', 99, 7, 4);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('barcelona', 'barcalona thuis shirt 23/24.', '077030122-3', 99, 8, 5);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('barcelona uit shirt', 'barcalona uit shirt 23/24.', '077030122-4', 99, 8, 5);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('man united', 'manchester united thuis shirt 23/24.' ,'445924201-X', 99, 7, 4);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('man united uit shirt', 'manchester united uit shirt 23/24.' ,'445924201-Y', 99, 7, 4);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('psg', 'psg thuis shirt 23/24.', '693155505-7', 99, 10, 6);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('psg uit shirt', 'psg uit shirt 23/24.', '693155505-8', 99, 10, 6);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('bayern munchen', 'bayern munchen thuis shirt 23/24.', '492662523-7', 99, 9, 5);
insert into products (name, description, code, price, kwaliteit_id, populariteit_id) values ('bayern munchen uit shirt', 'bayern munchen uit shirt 23/24.', '492662523-8', 99, 9, 5);



insert into  kleur (kleurNAAM) values ('zwart');
insert into  kleur (kleurNAAM) values ('wit');
insert into  kleur (kleurNAAM) values ('rood');
insert into  kleur (kleurNAAM) values ('blauw');
insert into  kleur (kleurNAAM) values ('donker blauw');
insert into  kleur (kleurNAAM) values ('geel/goud');
insert into  kleur (kleurNAAM) values ('groen');
insert into  kleur (kleurNAAM) values ('donker groen');
insert into  kleur (kleurNAAM) values ('grijs');
insert into  kleur (kleurNAAM) values ('roze');


insert into  soorteerOPkleur (products_id, kleur_id) values (1, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (1, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (2, 1);
insert into  soorteerOPkleur (products_id, kleur_id) values (2, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (2, 7);
insert into  soorteerOPkleur (products_id, kleur_id) values (2, 8);
insert into  soorteerOPkleur (products_id, kleur_id) values (3, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (3, 4);
insert into  soorteerOPkleur (products_id, kleur_id) values (3, 5);
insert into  soorteerOPkleur (products_id, kleur_id) values (3, 6);
insert into  soorteerOPkleur (products_id, kleur_id) values (4, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (4, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (4, 4);
insert into  soorteerOPkleur (products_id, kleur_id) values (5, 1);
insert into  soorteerOPkleur (products_id, kleur_id) values (5, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (5, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (6, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (6, 8);
insert into  soorteerOPkleur (products_id, kleur_id) values (7, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (7, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (7, 5);
insert into  soorteerOPkleur (products_id, kleur_id) values (8, 1);
insert into  soorteerOPkleur (products_id, kleur_id) values (8, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (8, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (8, 5);
insert into  soorteerOPkleur (products_id, kleur_id) values (9, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (9, 3);
insert into  soorteerOPkleur (products_id, kleur_id) values (10, 2);
insert into  soorteerOPkleur (products_id, kleur_id) values (10, 9);
insert into  soorteerOPkleur (products_id, kleur_id) values (10, 10);
--n:m kleur shirtjes



insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('1/10','voelt niet goed aan en is slechte kwaliteit.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('2/10','slechte kwaliteit en zit niet lekker.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('3/10','normale stof maar slecht gemakt en zit niet lekker.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('4/10','alles normaal maar is gemaakt door kinderarbeid.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('5/10','gemaakt door kinderarbeid maar alles goede kwaliteit');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('6/10','nomale kwaliteit en is gemaakt in een fabriek.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('7/10','goede kwaliteit en is gemaakt in een fabriek.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('8/10',' met de hand gemaakt door een groot bedrijf dat met goede kwaliteit werkt maar onder slechte omstandigheden.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('9/10','met de hand gemaakt door professionals in de grootmarkt.');
insert into  kwaliteit (cijfer_kwaliteit, reden_cijfer) values ('10/10','een 10 van de 10, heeft geen uitleg nodig!!!! alles is perfect.');
--1:n kwaliteit



insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('niet populair', 'het is lelijk en verkoopt niet');
insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('beetje populair','verkoopt in normnale hoeveelheden');
insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('populair', 'verkoopt veel');
insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('heel populair','verkoopt veel en ziet er goed uit');
insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('iedereen draagt het','verkoopt aan ongeveer 70% dat de site boezoekt');
insert into  populariteit (hoeveelheid_populariteit, reden_populariteit) values ('je kan het niet missen','meer dan 70% dat de site boezoekt koopt het');
--1:n populariteit