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
price decimal (5,2) not null,
);

CREATE TABLE genre (
id int not null primary key,
name varchar (40) not null,
description varchar (200)
);

CREATE TABLE pub_house (
id int not null primary key,
name varchar (40) not null
);

CREATE TABLE series (
id int not null primary key,
name varchar (40)
);

CREATE TABLE author(
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
full_name varchar (40),
birth_date date,
country varchar (40)
);

CREATE TABLE basket(
id int not null primary key,
order_id int not null,
book_id int not null,
number int not null
);

CREATE TABLE orders (
id int not null primary key,
customer_id int not null,
employee_id int not null,
parcel_number varchar(10),
ordertime datetime not null
);

CREATE TABLE customer (
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null
);

CREATE TABLE employee (
id int not null primary key,
first_name varchar (40) not null,
last_name varchar (40) not null,
address varchar (40)
);

alter table books add constraint FK_books_genre foreign key (genre_id) references genre(id)

alter table books add constraint FK_books_pub_house foreign key (pub_house_id) references pub_house(id)

alter table books add constraint FK_books_series foreign key (series_id) references series(id)

alter table books add constraint FK_books_author foreign key (author_id) references author(id)

alter table books add constraint FK_books_basket foreign key (id) references basket(id);

alter table orders add constraint FK_orders_customer foreign key (customer_id) references customer(id);

alter table orders add constraint FK_orders_employee foreign key (employee_id) references employee(id);

alter table basket add constraint FK_basket_orders foreign key (order_id) references orders(id);

insert into author
values('1','Олександр','Дюма','Олександр Дюма','1802-06-24','Франція');
insert into author
values('2','Олександр','Пушкін','Олександр Сергійович Пушкін','1799-06-06','Росія');
insert into author
values('3','Кір','Буличов','Кір Буличов','1934-10-18','Росія');
insert into author
values('4','Агата Мері','Міллер', 'Агата Мері Кларисса Міллер','1890-09-18','Велика Британія');
insert into author
values('5','Артур','Дойль','Артут Игнатус Конан Дойль','1895-05-22','Велика Британія');
insert into author
values('6','Жюль','Верн','Жуль Верн','1828-02-08','Франція');
insert into author
values('7','Лев','Толстой','Лев Миколайович Толстой','1828-08-28','Росія');
insert into author
values('8','Анна','Ахматова','Анна Андріївна Ахматова','1889-06-11','Росія');
insert into author
values('9','Сергій','Єсенін','Сергій Олександрович Єсенін','1895-10-03','Росія');
insert into author
values('10','Дейл','Карнеги','Дейл Брекенридж Карнеги','1888-11-24','США');
insert into author
values('11','Олексій','Толстой','Олексій Миколайович Толстой','1883-01-10','Росія')

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

insert into series (id, name)
values('1','Поза серією');
insert into series (id, name)
values('2','Азбука-Класика');
insert into series (id, name)
values('3','Зарубіжна класика');
insert into series (id, name)
values('4','Літературні пам''ятки');
insert into series (id, name)
values('5','Бібліотека пригод');
insert into series (id, name)
values('6','Російська класика');
insert into series (id, name)
values('7','Агата Крісті');
insert into series (id, name)
values('8','Еркюль Пуаро');
insert into series (id, name)
values('9','Повне зібрання в одному томі');
insert into series (id, name)
values('10','Pocket Book');
insert into series (id, name)
values('11','Поезія ХХ століття');

insert into customer (id, first_name, last_name)
values('1', 'Єлісов', 'Микола');
insert into customer (id, first_name, last_name)
values('2', 'Базарник', 'Станіслав');
insert into customer (id, first_name, last_name)
values('3', 'Грибенюк', 'Марія');
insert into customer (id, first_name, last_name)
values('4', 'Денисов', 'Олександр');
insert into customer (id, first_name, last_name)
values('5', 'Зайченко', 'Олександр')

insert into employee (id, first_name, last_name, address)
values('1', 'Курченко', 'Микола', 'вул.Лісна, 30');
insert into employee (id, first_name, last_name, address)
values('2', 'Казіцька', 'Олеся', 'вул.Вишнева, 14');
insert into employee (id, first_name, last_name, address)
values('3', 'Лісник', 'Олена', 'вул.Злучна, 20');
insert into employee (id, first_name, last_name, address)
values('4', 'Квач', 'Олег', 'вул.Спортивна, 124');
insert into employee (id, first_name, last_name, address)
values('5', 'Корчакова', 'Ольга', 'вул.Весела, 223');
insert into employee (id, first_name, last_name, address)
values('6', 'Білець', 'Юрій', 'вул.Зелена, 200')

insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('2', '1', '1', '1А-1', '2018-05-13 10:34:09');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('3', '1', '2', '2Б-2', '2018-05-13 12:44:19');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('4', '2', '3', '3В-3', '2018-05-13 14:47:12');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('5', '3', '3', '4Г-4', '2018-05-13 14:57:54');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('6', '4', '4', '5Д-5', '2018-05-13 16:02:23');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('7', '5', '5', '6А-6', '2018-05-13 17:34:35');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('8', '6', '1', '7Б-7', '2018-05-14 09:19:57');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('9', '1', '3', '8В-8', '2018-05-14 14:25:54');
insert into orders (id, customer_id, employee_id, parcel_number, ordertime)
values('10', '2', '1', '9Г-9', '2018-05-14 16:54:12')

insert into basket (id, order_id, book_id, number)
values('1', '2', '1', '20');
insert into basket (id, order_id, book_id, number)
values('2', '2', '3', '30');
insert into basket (id, order_id, book_id, number)
values('3', '3', '4', '20');
insert into basket (id, order_id, book_id, number)
values('4', '3', '6', '20');
insert into basket (id, order_id, book_id, number)
values('5', '4', '8', '40');
insert into basket (id, order_id, book_id, number)
values('6', '4', '9', '30');
insert into basket (id, order_id, book_id, number)
values('7', '5', '1', '20');
insert into basket (id, order_id, book_id, number)
values('8', '5', '3', '20');
insert into basket (id, order_id, book_id, number)
values('9', '5', '11', '20');
insert into basket (id, order_id, book_id, number)
values('10', '6', '13', '20');
insert into basket (id, order_id, book_id, number)
values('11', '6', '16', '25');
insert into basket (id, order_id, book_id, number)
values('12', '7', '17', '35');
insert into basket (id, order_id, book_id, number)
values('13', '7', '18', '35');
insert into basket (id, order_id, book_id, number)
values('14', '8', '20', '23');
insert into basket (id, order_id, book_id, number)
values('15', '8', '22', '22');
insert into basket (id, order_id, book_id, number)
values('16', '9', '23', '20');
insert into basket (id, order_id, book_id, number)
values('17', '9', '24', '29');
insert into basket (id, order_id, book_id, number)
values('18', '9', '25', '35');
insert into basket (id, order_id, book_id, number)
values('19', '10', '27', '60');
insert into basket (id, order_id, book_id, number)
values('20', '10', '28', '34');
insert into basket (id, order_id, book_id, number)
values('21', '10', '30', '35')


insert into books (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('1', '1', '4', '1', '3', 'Три мушкетери', '72.25');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('3', '2', '5', '2', '2', 'Євгеній Онєгін', '62.67');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('4', '2', '10', '3', '4', 'Мідний вершник', '46.45');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('6', '3', '2', '4', '5', 'На днях землетрус в Легоні', '63.87');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('8', '3', '2', '5', '6', 'Підземелля відьом', '58.99');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('9', '4', '3', '5', '1', 'Таємничий супротивник', '64.75');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('11', '4', '3', '5', '7', 'Десять негритят', '83.15');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('13', '4', '3', '6', '8', 'Пуаро веде розслідування', '68.90');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('16', '5', '3', '7', '9', 'Повна збірка оповідань про Шерлока', '85.65');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('17', '6', '4', '8', '1', 'Діти капітана Гранта', '77.86');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('18', '6', '4', '9', '1', '20 тисяч льє під водою', '85.50');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('20', '6', '4', '10', '1', 'Таємничий острів', '69.90');

insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('23', '7', '10', '5', '1', 'Анна Кареніна', '82.95');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('24', '7', '6', '10', '1', 'Заметіль', '68.25');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('25', '8', '7', '8', '1', 'Збірка віршів Анни Ахматової ', '73.65');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('27', '9', '7', '12', '11', 'Вірші і поеми', '69.99');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('28', '10', '9', '5', '1', 'Як припинити турбуватись і розпочати життя', '57.35');
insert into books  (id, author_id, genre_id, pub_house_id, series_id, title, price)
values ('30', '11', '8', '13', '1', 'Золотий ключик або пригоди Буратіно', '67.83');
