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
  kwaliteit_id VARCHAR(20)
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
  cijfer VARCHAR(20),
  reden_cijfer VARCHAR (30)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, kwaliteit_id) values ('liverpool', 'liverpool thuis shirt 23/24.', '816905633-0', 100, 7);
insert into products (name, description, code, price, kwaliteit_id) values ('liverpool uit shirt', 'liverpool uit shirt 23/24.', '816905633-1', 100, 7);
insert into products (name, description, code, price, kwaliteit_id) values ('barcelona', 'barcalona thuis shirt 23/24.', '077030122-3', 100, 8);
insert into products (name, description, code, price, kwaliteit_id) values ('barcelona uit shirt', 'barcalona uit shirt 23/24.', '077030122-4', 100, 8);
insert into products (name, description, code, price, kwaliteit_id) values ('man united', 'manchester united thuis shirt 23/24.' ,'445924201-X', 100, 7);
insert into products (name, description, code, price, kwaliteit_id) values ('man united uit shirt', 'manchester united uit shirt 23/24.' ,'445924201-Y', 100, 7);
insert into products (name, description, code, price, kwaliteit_id) values ('psg', 'psg thuis shirt 23/24.', '693155505-7', 100, 10);
insert into products (name, description, code, price, kwaliteit_id) values ('psg uit shirt', 'psg uit shirt 23/24.', '693155505-8', 100, 10);
insert into products (name, description, code, price, kwaliteit_id) values ('bayern munchen', 'bayern munchen thuis shirt 23/24.', '492662523-7', 100, 9);
insert into products (name, description, code, price, kwaliteit_id) values ('bayern munchen uit shirt', 'bayern munchen uit shirt 23/24.', '492662523-8', 100, 9);



insert into  kleur (kleurNAAM) values ('zwart');
insert into  kleur (kleurNAAM) values ('wit');
insert into  kleur (kleurNAAM) values ('rood');
insert into  kleur (kleurNAAM) values ('blauw');
insert into  kleur (kleurNAAM) values ('donker blauw');
insert into  kleur (kleurNAAM) values ('geel/goud');
insert into  kleur (kleurNAAM) values ('groen');
insert into  kleur (kleurNAAM) values ('donker groen');



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

--n:m kleur shirtjes



insert into  kwaliteit (cijfer, reden_cijfer) values ('1/10','voelt niet goed aan en is slechte kwaliteit');
insert into  kwaliteit (cijfer, reden_cijfer) values ('2/10','slechte kwaliteit en zit niet lekker');
insert into  kwaliteit (cijfer, reden_cijfer) values ('3/10','normale stof maar slecht gemakt en zit niet lekker');
insert into  kwaliteit (cijfer, reden_cijfer) values ('4/10','alles normaal maar is gemaakt door kinderarbeid');
insert into  kwaliteit (cijfer, reden_cijfer) values ('5/10','gemaakt door kinderarbeid maar alles goede kwaliteit');
insert into  kwaliteit (cijfer, reden_cijfer) values ('6/10','nomale kwaliteit en is gemaakt in een fabriek');
insert into  kwaliteit (cijfer, reden_cijfer) values ('7/10','goede kwaliteit en is gemaakt in een fabriek');
insert into  kwaliteit (cijfer, reden_cijfer) values ('8/10',' met de hand gemaakt door een kleinschalig bedrijf dat met goede kwaliteit werkt maar onder slechte omstandigheden');
insert into  kwaliteit (cijfer, reden_cijfer) values ('9/10','met de hand gemaakt door professionals');
insert into  kwaliteit (cijfer, reden_cijfer) values ('10/10','een 10 van de 10, heeft geen uitleg nodig!!!!');