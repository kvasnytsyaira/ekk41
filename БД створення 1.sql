CREATE DATABASE ABH
GO

USE ABH

CREATE TABLE type_objects
(id nvarchar(8) NOT NULL CONSTRAINT prim_type_obj PRIMARY KEY,
type nvarchar(80) NOT NULL)

CREATE TABLE locations
(id nvarchar(8) NOT NULL CONSTRAINT prim_loc PRIMARY KEY,
name nvarchar(40) NOT NULL,
district nvarchar(30) NOT NULL,
city nvarchar(20) NOT NULL)

CREATE TABLE owners
(id nvarchar(8) NOT NULL CONSTRAINT prim_own PRIMARY KEY,
name nvarchar(40) NOT NULL,
surname nvarchar(40) NOT NULL,
phone nvarchar(20) NOT NULL,
email nvarchar(40) NOT NULL)

CREATE TABLE type_clients
(id nvarchar(8) NOT NULL CONSTRAINT prim_type_cl PRIMARY KEY,
type nvarchar(40) NOT NULL)

CREATE TABLE clients
(id nvarchar(8) NOT NULL CONSTRAINT prim_client PRIMARY KEY,
id_type nvarchar(8) NOT NULL,
name nvarchar(40) NOT NULL,
surname nvarchar(40) NOT NULL,
phone nvarchar(20) NOT NULL,
email nvarchar(40) NOT NULL,
CONSTRAINT fk_cl_tp FOREIGN KEY (id_type)
REFERENCES type_clients (id)
)

CREATE TABLE objects
(id nvarchar(8) NOT NULL CONSTRAINT prim_obj PRIMARY KEY,  -- номер об'єкта
id_type nvarchar(8) NOT NULL, -- тип нерухомості
id_location nvarchar(8) NOT NULL, -- місцезнаходження нерухомості
id_owner nvarchar(8) NOT NULL,
street nvarchar(40) NOT NULL, -- вулиця
area nvarchar(8) NULL, -- площа
price nvarchar(8) NOT NULL, --ціна
CONSTRAINT fk_ol FOREIGN KEY (id_location)
REFERENCES locations (id),
CONSTRAINT fk_obj_tp FOREIGN KEY (id_type)
REFERENCES type_objects (id),
CONSTRAINT fk_obj_ow FOREIGN KEY (id_owner)
REFERENCES owners (id)
)

CREATE TABLE options_conditions
(id nvarchar(8) NOT NULL CONSTRAINT prim_op_cond PRIMARY KEY,
object_option nvarchar(50) NOT NULL)

CREATE TABLE contracts
(id nvarchar(8) NOT NULL CONSTRAINT prim_contr PRIMARY KEY, --ІД УГОДИ
id_obj nvarchar(8) NOT NULL, --ІД ОБ'ЄКТА
id_cl nvarchar(8) NOT NULL, -- ІД КЛІЄНТА 
date_contr  nvarchar(15) NOT NULL,
term nvarchar(5),
ct_price  nvarchar(15) NOT NULL,
CONSTRAINT fk_ct_o FOREIGN KEY (id_obj)
REFERENCES objects (id),
CONSTRAINT fk_ct_cl FOREIGN KEY (id_cl)
REFERENCES clients (id)) 


CREATE TABLE conditions
(id_obj nvarchar(8),
id_condit nvarchar(8),
CONSTRAINT fk_c_obj FOREIGN KEY (id_obj)
REFERENCES objects (id),
CONSTRAINT fk_obj_lc FOREIGN KEY (id_condit)
REFERENCES options_conditions (id))
