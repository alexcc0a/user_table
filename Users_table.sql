create schema users_table;

create table persons
(
    name varchar(150) not null,
    surname varchar(150) not null,
    age int check ( age > 0 ),
    phone_number varchar(150) default '0',
    city_of_living varchar(250) default '-',
    PRIMARY KEY (name, surname, age)
);

insert into persons (name, surname, age, city_of_living) values ('Jon', 'Smitt', 51, 'London');
insert into persons (name, surname, age, city_of_living) values ('Ivan', 'Ivanov', 9, 'Moscow');
insert into persons (name, surname, age, city_of_living) values ('Alexsander', 'Nesterov', 28, 'Moscow');
insert into persons (name, surname, age, phone_number, city_of_living) values ('Robert', 'Deniro', 79, '+3459236777703', 'London');

select name, surname
from persons
where city_of_living = 'Moscow' or 'MOSCOW';

select * from persons
where age > 27;