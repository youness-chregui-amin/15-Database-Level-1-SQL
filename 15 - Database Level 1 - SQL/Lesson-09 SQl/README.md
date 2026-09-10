# Lesson 09 - What is SQL?

---

# Introduction

In this lesson, we learned about:

# SQL (Structured Query Language)

SQL is the standard language used to communicate with databases.

It allows developers and database administrators to:

* Access data
* Manage data
* Create databases and tables
* Modify records
* Control permissions

---

# What is SQL?

# SQL = Structured Query Language

SQL is a language specifically designed to work with relational databases.

### Pronunciation

* S-Q-L
* Sequel

---

# Purpose of SQL

SQL is used to:

* Retrieve data from databases
* Insert new records
* Update existing data
* Delete records
* Create and manage databases
* Create tables and relationships

---

# Database Systems That Use SQL

Many database systems support SQL, including:

* Microsoft SQL Server
* Oracle
* MySQL
* PostgreSQL
* Microsoft Access

---

# What Can You Do With SQL?

Using SQL, you can:

* Execute queries
* Retrieve data
* Insert records
* Update records
* Delete records
* Create databases
* Create tables
* Create stored procedures
* Create views
* Set permissions

---

# SQL Query Examples

---

## Select Data

```sql
SELECT * FROM Employees;
```

Retrieves all records from the Employees table.

---

## Select with Condition

```sql
SELECT * FROM Employees
WHERE Salary < 1000;
```

Retrieves employees with a salary less than 1000.

---

## Multiple Conditions

```sql
SELECT FirstName, LastName
FROM Employees
WHERE Salary < 1000 AND Gender = 'M';
```

Retrieves employees whose salary is less than 1000 and whose gender is M.

---

## BETWEEN Operator

```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 500 AND 1000;
```

Retrieves employees whose salary is between 500 and 1000.

---

## COUNT Function

```sql
SELECT COUNT(*) FROM Employees;
```

Counts the total number of records.

---

## SUM Function

```sql
SELECT SUM(Salary) FROM Employees;
```

Calculates the total salaries.

---

## AVG Function

```sql
SELECT AVG(Salary) FROM Employees;
```

Calculates the average salary.

---

## Delete Data

```sql
DELETE FROM Employees
WHERE ID = 10;
```

Deletes a specific record.

---

## Update Data

```sql
UPDATE Employees
SET FirstName = 'Amjad'
WHERE ID = 10;
```

Updates existing data.

---

# Database Creation Example

```sql
CREATE DATABASE MyDatabase;
```

Creates a new database.

---

# Delete Database

```sql
DROP DATABASE MyDatabase;
```

Deletes the database permanently.

---

# Create Table Example

```sql
CREATE TABLE Employees
(
    ID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

Creates a new Employees table.

---

# Types of SQL Statements

SQL commands are divided into several categories.

---

# 1. DDL

# Data Definition Language

Used to define database structure.

### Commands

* CREATE
* ALTER
* DROP
* TRUNCATE

---

# 2. DML

# Data Manipulation Language

Used to manipulate data.

### Commands

* INSERT
* UPDATE
* DELETE

---

# 3. DQL

# Data Query Language

Used to retrieve data.

### Command

* SELECT

---

# 4. DCL

# Data Control Language

Used to control permissions.

### Commands

* GRANT
* REVOKE

---

# 5. TCL

# Transaction Control Language

Used to manage transactions.

### Commands

* COMMIT
* ROLLBACK
* SAVEPOINT

---

# Key Takeaway

* SQL is the language used to work with relational databases
* SQL allows you to work with both database data and structure
* SQL commands are organized into categories based on their purpose

---

# Summary

* SQL stands for Structured Query Language
* SQL communicates with databases
* SQL can:

  * Retrieve data
  * Insert data
  * Update data
  * Delete data
  * Create databases and tables
* SQL has different command categories:

  * DDL
  * DML
  * DQL
  * DCL
  * TCL

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 09 - شنو هو SQL؟

---

# المقدمة

فهاد الدرس تعلمنا على:

# SQL (Structured Query Language)

SQL هي اللغة اللي كنستعملوها باش نتواصلو مع الـDatabases ونتعاملو معاها.

كتخلي الـDevelopers و Database Administrators يقدرو:

</div>

<ul dir="rtl">
  <li>يوصلو للبيانات</li>
  <li>يسيرو البيانات</li>
  <li>ينشئو Databases و Tables</li>
  <li>يعدلو Records</li>
  <li>يتحكمو فالصلاحيات</li>
</ul>

<div dir="rtl" align="right">

---

# شنو هو SQL؟

# SQL = Structured Query Language

SQL هي لغة مصممة بشكل خاص باش نخدمو بها مع الـRelational Databases.

### طريقة النطق

</div>

<ul dir="rtl">
  <li>S-Q-L</li>
  <li>Sequel</li>
</ul>

<div dir="rtl" align="right">

---

# شنو هو الهدف ديال SQL؟

SQL كتستعمل باش:

</div>

<ul dir="rtl">
  <li>نجيبو البيانات من الـDatabases</li>
  <li>نضيفو Records جداد</li>
  <li>نعدلو البيانات الموجودة</li>
  <li>نمسحو Records</li>
  <li>ننشئو ونسيرو Databases</li>
  <li>ننشئو Tables و Relationships</li>
</ul>

<div dir="rtl" align="right">

---

# Database Systems اللي كتستعمل SQL

كاينين بزاف ديال أنظمة الـDatabase اللي كيدعمو SQL، بحال:

</div>

<ul dir="rtl">
  <li>Microsoft SQL Server</li>
  <li>Oracle</li>
  <li>MySQL</li>
  <li>PostgreSQL</li>
  <li>Microsoft Access</li>
</ul>

<div dir="rtl" align="right">

---

# شنو نقدر نديرو بـ SQL؟

باستعمال SQL نقدر:

</div>

<ul dir="rtl">
  <li>نديرو Queries</li>
  <li>نجيبو البيانات</li>
  <li>نضيفو Records</li>
  <li>نعدلو Records</li>
  <li>نمسحو Records</li>
  <li>ننشئو Databases</li>
  <li>ننشئو Tables</li>
  <li>ننشئو Stored Procedures</li>
  <li>ننشئو Views</li>
  <li>نحددو Permissions</li>
</ul>

<div dir="rtl" align="right">

---

# أمثلة على SQL Queries

---

## جلب البيانات

```sql
SELECT * FROM Employees;
```

هاد الـQuery كترجع لينا جميع الـRecords اللي كاينين فـEmployees Table.

---

## جلب البيانات بشرط

```sql
SELECT * FROM Employees
WHERE Salary < 1000;
```

هاد الـQuery كترجع غير الموظفين اللي الـSalary ديالهم أقل من 1000.

---

## استعمال عدة شروط

```sql
SELECT FirstName, LastName
FROM Employees
WHERE Salary < 1000 AND Gender = 'M';
```

هاد الـQuery كترجع الموظفين اللي الـSalary ديالهم أقل من 1000 والـGender ديالهم هو M.

---

## BETWEEN Operator

```sql
SELECT * FROM Employees
WHERE Salary BETWEEN 500 AND 1000;
```

هاد الـQuery كترجع الموظفين اللي الـSalary ديالهم بين 500 و1000.

---

## COUNT Function

```sql
SELECT COUNT(*) FROM Employees;
```

كتحسب العدد الإجمالي ديال الـRecords.

---

## SUM Function

```sql
SELECT SUM(Salary) FROM Employees;
```

كتحسب مجموع الـSalaries.

---

## AVG Function

```sql
SELECT AVG(Salary) FROM Employees;
```

كتحسب متوسط الـSalary.

---

## حذف البيانات

```sql
DELETE FROM Employees
WHERE ID = 10;
```

كتمسح Record معين من الـEmployees Table.

---

## تعديل البيانات

```sql
UPDATE Employees
SET FirstName = 'Amjad'
WHERE ID = 10;
```

كتعدل البيانات الموجودة فـRecord معين.

---

# مثال على إنشاء Database

```sql
CREATE DATABASE MyDatabase;
```

هاد الأمر كينشئ Database جديدة سميتها MyDatabase.

---

# حذف Database

```sql
DROP DATABASE MyDatabase;
```

هاد الأمر كيمسح الـDatabase بشكل نهائي.

---

# مثال على إنشاء Table

```sql
CREATE TABLE Employees
(
    ID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

هاد الأمر كينشئ Table جديدة سميتها Employees.

---

# أنواع SQL Statements

أوامر SQL مقسمة لعدة أنواع، وكل نوع عندو استعمال معين.

---

# 1. DDL

# Data Definition Language

كتستعمل باش نحددو وننشئو Structure ديال الـDatabase.

### Commands

</div>

<ul dir="rtl">
  <li>CREATE</li>
  <li>ALTER</li>
  <li>DROP</li>
  <li>TRUNCATE</li>
</ul>

<div dir="rtl" align="right">

---

# 2. DML

# Data Manipulation Language

كتستعمل باش نتعاملو مع البيانات الموجودة.

### Commands

</div>

<ul dir="rtl">
  <li>INSERT</li>
  <li>UPDATE</li>
  <li>DELETE</li>
</ul>

<div dir="rtl" align="right">

---

# 3. DQL

# Data Query Language

كتستعمل باش نجيبو البيانات من الـDatabase.

### Command

</div>

<ul dir="rtl">
  <li>SELECT</li>
</ul>

<div dir="rtl" align="right">

---

# 4. DCL

# Data Control Language

كتستعمل باش نتحكمو فـPermissions والصلاحيات.

### Commands

</div>

<ul dir="rtl">
  <li>GRANT</li>
  <li>REVOKE</li>
</ul>

<div dir="rtl" align="right">

---

# 5. TCL

# Transaction Control Language

كتستعمل باش نسيرو الـTransactions.

### Commands

</div>

<ul dir="rtl">
  <li>COMMIT</li>
  <li>ROLLBACK</li>
  <li>SAVEPOINT</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>SQL هي اللغة اللي كنستعملوها باش نخدمو مع الـRelational Databases</li>
  <li>SQL كتخلينا نتعاملو مع البيانات والـStructure ديال الـDatabase</li>
  <li>أوامر SQL مقسمة لأنواع مختلفة حسب الاستعمال ديالها</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>SQL اختصار لـ Structured Query Language</li>
  <li>SQL كتستعمل للتواصل مع الـDatabases</li>
  <li>SQL كتقدر:</li>
  <li>تجيب البيانات</li>
  <li>تضيف البيانات</li>
  <li>تعدل البيانات</li>
  <li>تمسح البيانات</li>
  <li>تنشئ Databases و Tables</li>
  <li>SQL عندها أنواع مختلفة ديال الأوامر:</li>
  <li>DDL</li>
  <li>DML</li>
  <li>DQL</li>
  <li>DCL</li>
  <li>TCL</li>
</ul>

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
