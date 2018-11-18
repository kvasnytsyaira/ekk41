CREATE DATABASE bookstore
go

use bookstore


CREATE TABLE books (
id int not null primary key,
author_id int not null,
genre_id int not null,
pub_house_id int not null,
series_id int not null,
title varchar( 40) not null,
price decimal not null,
);

CREATE TABLE genre (
id int not null primary key,
name varchar (40) not null,
description varchar (200) not null
);

CREATE TABLE pub_house (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE series (
id int not null primary key,
name varchar (40) not null,
);

CREATE TABLE author(
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
full_name varchar (40) not null,
birth_date date not null,
country varchar (40) not null
);

CREATE TABLE basket(
id int not null primary key,
order_id int not null,
book_id int not null
);

CREATE TABLE orders (
id int not null primary key,
customer_id int not null,
employee_id int not null,
ordertime datetime not null
);

CREATE TABLE customer (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE employee (
id int not null primary key,
name varchar (40) not null
);

alter table books add constraint FK_books_genre foreign key (genre_id) references genre(id)

alter table books add constraint FK_books_pub_house foreign key (pub_house_id) references pub_house(id)

alter table books add constraint FK_books_series foreign key (series_id) references series(id)

alter table books add constraint FK_books_author foreign key (author_id) references author(id)

alter table books add constraint FK_books_basket foreign key (id) references basket(id);

alter table orders add constraint FK_orders_customer foreign key (customer_id) references customer(id);

alter table orders add constraint FK_orders_employee foreign key (employee_id) references employee(id);

alter table basket add constraint FK_basket_orders foreign key (order_id) references orders(id);

insert into author (id, first_name, last_name, full_name, birth_date, country)
values('1','Олександр','Дюма','Олександр Дюма','1802-05-02','Франція');

delete from author
where id = 1

insert into author
values('1','Олександр','Дюма','Олександр Дюма','1802-06-24','Франція')



insert into pub_house (id, name)
values('1','Альфа-книга');
insert into pub_house (id, name)
values('2','Азбука-класика');
insert into pub_house (id, name)
values('3','Старий Лев');
insert into pub_house (id, name)
values('4','АРС');
insert into pub_house (id, name)
values('5','Ексмо');
insert into pub_house (id, name)
values('6','Центрполіграф');
insert into pub_house (id, name)
values('7','Клуб Сімейного Дозвілля');
insert into pub_house (id, name)
values('8','Зелений пес');
insert into pub_house (id, name)
values('9','Бімпа');
insert into pub_house (id, name)
values('10','Дитяча література');
insert into pub_house (id, name)
values('11','РІО');
insert into pub_house (id, name)
values('12','Профвидав');
insert into pub_house (id, name)
values('13','АСТ')

insert into genre (id, name, description)
values('2','Фантастика та фентезі','За допомогою додавання вигаданих, уявних елементів створюється світ, відмінний від сьогоденного, реального');
insert into genre (id, name, description)
values('3','Детектив','Різновид творів масової культури в яких розкривається певна таємниця, пов''язана зі злочином');
insert into genre (id, name, description)
values('4','Пригоди','Жанр, сюжети творів якого насичені незвичайними подіями й характеризується їхнім несподіваним поворотом, великою динамікою розгортання');
insert into genre (id, name, description)
values('5','Роман у віршах','Різновид ліро-епічного (змішаного) жанру, у якому поєднані особливості і ліричного, і епічного зображень, що веде до багатоплановості художнього світу');
insert into genre (id, name, description)
values('6','Повість','літературний прозовий твір середньої форми, довший за оповідання, але коротший за роман, під відповідною назвою поширений у слов''янських мовах та країнах');
insert into genre (id, name, description)
values('7','Поезія','Художньо-образна словесна творчість, в якій мова використовується з естетичною чи евокативною метою окрім або замість самої денотації');
insert into genre (id, name, description)
values('8','Дитяча література','Література, творена безпосередньо дітьми або для дітей');
insert into genre (id, name, description)
values('9','Нон-фікшн','Нехудожня література, в якій в основному розповідається про події з реальні факти з життя людей та історії');
insert into genre (id, name, description)
values('10','Поеми','Ліричний, епічний, ліро-епічний твір, переважно віршований, у якому зображені значні події і яскраві характери');
insert into genre (id, name, description)
values('11','Соціально психологічний роман','В складних, часто в екстремальних життєвих ситуаціях розкриваються багатогранні характери героїв з усім розмаїттям їхнього психологічного функціонування в контексті соціального середовища')
