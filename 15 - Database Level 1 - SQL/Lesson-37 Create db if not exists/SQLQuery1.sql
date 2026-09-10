-- create database DB2

-- create database DB3

-- create database DB

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'DB4')
BEGIN CREATE DATABASE DB4
END