-- 1. DATABASE

-- create database
CREATE DATABASE db_agi;

-- drop database
DROP DATABASE db_agi;

-- see active database
SELECT DATABASE();

-- change database
USE db_agi;
USE digitalskola;


-- 2. TABLE

-- show all tables, inlc views
SHOW FULL TABLES;

-- create table mata_kuliah
CREATE TABLE db_agi.mata_kuliah (
	id VARCHAR(5),
	nama VARCHAR(255),
	deskripsi VARCHAR(255)
);

-- create table mata_kuliah if not exists
CREATE TABLE IF NOT EXISTS db_agi.mata_kuliah (
	id VARCHAR(5),
	nama VARCHAR(255),
	deskripsi VARCHAR(255)	
);

-- create table dosen if not exists
CREATE TABLE IF NOT EXISTS db_agi.dosen (
	nip VARCHAR(5) PRIMARY KEY,
	nama VARCHAR(255) NOT NULL,
	status_mengajar ENUM('aktif', 'tidak aktif')
);

-- check table schema
DESCRIBE db_agi.mata_kuliah;
DESCRIBE db_agi.dosen;

-- truncate table: delete the values, but keep the schema
TRUNCATE TABLE db_agi.mata_kuliah;

-- drop table: delete the table schema & values
DROP TABLE db_agi.mata_kuliah;


-- 3. ALTER

-- add column
ALTER TABLE db_agi.mata_kuliah
ADD nip FLOAT(5);

-- modify column data type
ALTER TABLE db_agi.mata_kuliah
MODIFY COLUMN nip VARCHAR(5);

-- delete column
ALTER TABLE db_agi.mata_kuliah
DROP COLUMN nip;

-- add unique constraint: can be null, but cannot be duplicate
ALTER TABLE db_agi.mata_kuliah 
MODIFY nama VARCHAR(255) UNIQUE;

-- add not null constraint: can be not unique (duplicate), but cannot be null
ALTER TABLE db_agi.mata_kuliah 
MODIFY deskripsi VARCHAR(255) NOT NULL;

-- add primary key: unique & not null
ALTER TABLE db_agi.mata_kuliah 
ADD PRIMARY KEY (id);

-- add foreign key: a reference key to other table
ALTER TABLE db_agi.mata_kuliah
ADD FOREIGN KEY (nip) 
    REFERENCES db_agi.dosen(nip) 
    ON DELETE CASCADE;