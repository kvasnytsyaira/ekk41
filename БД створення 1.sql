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