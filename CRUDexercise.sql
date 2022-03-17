-- noinspection SqlNoDataSourceInspectionForFile

/* Creating a new DB */
create database shirts_db;

/* Create table shirts */
use shirts_db;

create table shirts (
    shirt_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size VARCHAR(1),
    last_worn INT NOT NULL 
);

/* Getting starter data into table */
insert into shirts
(article,color,shirt_size,last_worn)
values 
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

/* Add in a new shirt */
insert into shirts(article,color,shirt_size,last_worn)
values
('polo shirt', 'purple', 'M', 50);

/* Select all shirts, only article & color */
select article, color from shirts;

/* Select all M shirts. Print everything except shirt_id*/
select article,color,shirt_size,last_worn from shirts 
where shirt_size='M';

/* Update all polo shirt size to L */
Select * from shirts where article='polo shirt';

update shirts 
set shirt_size='L' 
where article='polo shirt';

/* Update last_worn 15 days ago to 0*/
Select * from shirts where last_worn=15;

update shirts
set last_worn=0
where last_worn=15;

/* Update all white shirts size to XS and color to off white*/
select * from shirts where color='white';

update shirts
set shirt_size='X', color='off white'
where color='white';

/* Delete all shirts whose last_worn is 200*/
select * from shirts where last_worn=200;

delete from shirts 
where last_worn=200;

/* Delete all tank tops*/
select * from shirts where article='tank top';

delete from shirts
where article='tank top';

/* Delete all shirts */ 
delete from shirts;

/* delete table shirts */
drop table shirts;
