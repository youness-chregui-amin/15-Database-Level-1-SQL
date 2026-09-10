# Lesson 35 - What is SQL?

---

# Introduction

In this lesson, we learned about:

# SQL (Structured Query Language)

SQL is one of the most important languages used in database management because it allows developers to communicate with, manipulate, and manage data efficiently.

---

# What is SQL?

# SQL = Structured Query Language

* SQL is pronounced as "S-Q-L" or sometimes as "See-Quel".

* SQL is used to communicate with a database.

* SQL allows you to access and manipulate data in databases.

* Database Management Systems that use SQL include Microsoft SQL Server, Oracle, MySQL, PostgreSQL, and others.

---

# Purpose of SQL

SQL is used to:

* Execute queries against a database.

* Retrieve data from a database.

* Insert records into a database.

* Update existing records.

* Delete records from a database.

* Create databases.

* Create tables and other database objects.

* Create stored procedures.

* Create views.

* Set permissions and control access to database objects.

---

# What Can You Do With SQL?

SQL can perform many powerful operations:

| Capability | Description                                |
| ---------- | ------------------------------------------ |
| Retrieve   | Get data from one or more tables           |
| Insert     | Add new records to a table                 |
| Update     | Modify existing records                    |
| Delete     | Remove records from a table                |
| Create     | Build databases, tables, and other objects |
| Manage     | Control permissions and access             |

---

# Examples of SQL Statements

## Data Retrieval

```sql
SELECT * FROM Employees WHERE Salary < 1000;
```

```sql
SELECT FirstName, LastName
FROM Employees
WHERE Salary < 1000 AND Gender = 'M';
```

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 500 AND 1000;
```

---

## Aggregate Functions

```sql
SELECT COUNT(*) FROM Employees;
```

```sql
SELECT SUM(Salary) FROM Employees;
```

```sql
SELECT AVG(Salary) FROM Employees;
```

---

## Data Modification

```sql
DELETE FROM Employees
WHERE ID = 10;
```

```sql
UPDATE Employees
SET FirstName = 'Amjad'
WHERE ID = 10;
```

---

## Database & Table Creation

```sql
CREATE DATABASE MyDatabase;
```

```sql
DROP DATABASE MyDatabase;
```

```sql
CREATE TABLE Employees (
    ID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

---

# Types of SQL Statements

The SQL language is commonly divided into five main categories:

| Type | Full Name                    | Commands                      |
| ---- | ---------------------------- | ----------------------------- |
| DDL  | Data Definition Language     | CREATE, DROP, ALTER, TRUNCATE |
| DML  | Data Manipulation Language   | INSERT, UPDATE, DELETE        |
| DQL  | Data Query Language          | SELECT                        |
| DCL  | Data Control Language        | GRANT, REVOKE                 |
| TCL  | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT   |

---

# Why Use SQL?

SQL replaces many traditional file-processing approaches by allowing developers to work directly with structured data stored in databases.

| Traditional File Processing | SQL Approach                  |
| --------------------------- | ----------------------------- |
| Write code and loops        | Simple and powerful queries   |
| Manual data handling        | Direct database commands      |
| Complex data access         | Structured queries            |
| Difficult data management   | Organized database operations |

---

# Advantages of SQL

* Simple and relatively easy to learn.

* Standardized language used across many database systems.

* Powerful data retrieval and manipulation.

* Efficient query processing.

* Supports large amounts of data.

* Supports multiple users and applications.

* Provides mechanisms for controlling access to data.

---

# Key Takeaway

# SQL is the Language Used to Communicate With Databases

SQL allows developers to retrieve, insert, update, delete, and manage data inside databases.

It also provides commands for creating and managing database structures and controlling access to database objects.

---

# Conclusion

* SQL stands for Structured Query Language.

* SQL is used to communicate with relational databases.

* SQL allows us to retrieve, insert, update, and delete data.

* SQL can be used to create and modify database structures.

* SQL provides different categories of commands such as DDL, DML, DQL, DCL, and TCL.

* SQL is an essential skill for anyone working with relational databases.

---

# Summary

| Concept | Meaning                      |
| ------- | ---------------------------- |
| SQL     | Structured Query Language    |
| DDL     | Data Definition Language     |
| DML     | Data Manipulation Language   |
| DQL     | Data Query Language          |
| DCL     | Data Control Language        |
| TCL     | Transaction Control Language |
| SELECT  | Retrieve data from tables    |
| INSERT  | Add new records              |
| UPDATE  | Modify existing records      |
| DELETE  | Remove records               |
| CREATE  | Create database objects      |
| DROP    | Remove database objects      |

---

# Author

Youness Chergui Amin

---

---

# الدرس 35 — شنو هو SQL؟

---

# المقدمة

فهاد الدرس، تعلمنا على:

# SQL (Structured Query Language)

SQL هي وحدة من أهم اللغات المستعملة فـ Database Management، حيت كتسمح للمطورين يتواصلو مع قواعد البيانات، ويسترجعو ويعدلو ويدبرو البيانات بطريقة فعالة.

---

# شنو هو SQL؟

# SQL = Structured Query Language

* SQL كتتقرا "S-Q-L"، وكاين حتى اللي كينطقها "See-Quel".

* SQL كتستعمل باش نتواصلو مع Database.

* SQL كتسمح لينا نوصلو للبيانات ونعدلوها وندبروها.

* بزاف ديال Database Management Systems كيعتمدو على SQL بحال Microsoft SQL Server و Oracle و MySQL و PostgreSQL وغيرهم.

---

# شنو هو الهدف من SQL؟

SQL كتستعمل باش:

* ننفذو Queries على Database.

* نسترجعو البيانات من Database.

* نضيفو Records جديدة.

* نعدلو Records موجودة.

* نحيدو Records.

* ننشئو Databases.

* ننشئو Tables و Database Objects أخرى.

* ننشئو Stored Procedures.

* ننشئو Views.

* نحددو Permissions ونتحكمو فالوصول للبيانات.

---

# شنو نقدر نديرو بـ SQL؟

SQL كتخلينا نديرو بزاف ديال العمليات:

| العملية  | الشرح                              |
| -------- | ---------------------------------- |
| Retrieve | نسترجعو البيانات من Table أو أكثر  |
| Insert   | نضيفو Records جديدة                |
| Update   | نعدلو Records موجودة               |
| Delete   | نحيدو Records                      |
| Create   | ننشئو Databases و Tables و Objects |
| Manage   | نتحكمو فـ Permissions و Access     |

---

# أمثلة ديال SQL Statements

## استرجاع البيانات

```sql
SELECT * FROM Employees WHERE Salary < 1000;
```

هاد Query كتجيب جميع Employees اللي Salary ديالهم أقل من 1000.

```sql
SELECT FirstName, LastName
FROM Employees
WHERE Salary < 1000 AND Gender = 'M';
```

هاد Query كتجيب FirstName و LastName ديال Employees اللي Salary ديالهم أقل من 1000 و Gender ديالهم M.

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 500 AND 1000;
```

هاد Query كتجيب Employees اللي Salary ديالهم بين 500 و 1000.

---

# Aggregate Functions

كاينين Functions كيسمحولنا نحسبو معلومات على مجموعة ديال Records.

```sql
SELECT COUNT(*) FROM Employees;
```

كتحسب عدد Employees.

```sql
SELECT SUM(Salary) FROM Employees;
```

كتحسب مجموع Salaries.

```sql
SELECT AVG(Salary) FROM Employees;
```

كتحسب متوسط Salaries.

---

# تعديل البيانات

## DELETE

```sql
DELETE FROM Employees
WHERE ID = 10;
```

كتحيد Employee اللي عندو ID = 10.

## UPDATE

```sql
UPDATE Employees
SET FirstName = 'Amjad'
WHERE ID = 10;
```

كتبدل FirstName ديال Employee اللي عندو ID = 10.

---

# إنشاء Database و Table

## إنشاء Database

```sql
CREATE DATABASE MyDatabase;
```

كتنشئ Database جديدة سميتها MyDatabase.

## حذف Database

```sql
DROP DATABASE MyDatabase;
```

كتحيد Database سميتها MyDatabase.

## إنشاء Table

```sql
CREATE TABLE Employees (
    ID int,
    FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
```

هاد الأمر كينشئ Table سميتها Employees وكيحدد الأعمدة ديالها.

---

# أنواع SQL Statements

SQL كتتقسم غالباً لخمسة أنواع رئيسية:

| النوع | الاسم الكامل                 | Commands                      |
| ----- | ---------------------------- | ----------------------------- |
| DDL   | Data Definition Language     | CREATE, DROP, ALTER, TRUNCATE |
| DML   | Data Manipulation Language   | INSERT, UPDATE, DELETE        |
| DQL   | Data Query Language          | SELECT                        |
| DCL   | Data Control Language        | GRANT, REVOKE                 |
| TCL   | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT   |

---

# علاش كنستعملو SQL؟

SQL كتسهل علينا التعامل مع البيانات مقارنة مع الطرق التقليدية ديال File Processing.

بلا ما نبقاو نكتبو بزاف ديال Code و Loops باش نقلبو على البيانات ونعالجوها، SQL كتسمح لينا نستعملو Queries مباشرة على Database.

| Traditional File Processing | SQL Approach              |
| --------------------------- | ------------------------- |
| كتابة Code و Loops          | Queries بسيطة وقوية       |
| التعامل اليدوي مع البيانات  | Database Commands مباشرة  |
| الوصول المعقد للبيانات      | Structured Queries        |
| صعوبة فـ Data Management    | Database Operations منظمة |

---

# مميزات SQL

* سهلة نسبياً فالتعلم والاستعمال.

* لغة Standard كتستعمل فأنظمة قواعد بيانات مختلفة.

* قوية فـ Data Retrieval و Data Manipulation.

* كتسمح بتنفيذ Queries بكفاءة.

* كتدعم التعامل مع كميات كبيرة من البيانات.

* كتدعم Multiple Users و Applications.

* كتسمح بالتحكم فالوصول للبيانات.

---

# الخلاصة المهمة

# SQL هي اللغة اللي كنستعملوها باش نتواصلو مع Database

SQL كتسمح لينا نسترجعو البيانات، نضيفوها، نعدلوها، نحيدوها، وندبروها داخل Database.

وكتوفر حتى Commands لإنشاء وتعديل Database Structure والتحكم فالوصول إلى Database Objects.

---

# الخلاصة

* SQL اختصار لـ Structured Query Language.

* SQL كتستعمل للتواصل مع Relational Databases.

* SQL كتسمح لينا نسترجعو، نضيفو، نعدلو، ونحيدو البيانات.

* SQL كتستعمل لإنشاء وتعديل Database Structures.

* SQL فيها أنواع مختلفة ديال Commands بحال DDL و DML و DQL و DCL و TCL.

* SQL مهارة أساسية لأي شخص خدام مع Relational Databases.

---

# Summary

| Concept | المعنى                       |
| ------- | ---------------------------- |
| SQL     | Structured Query Language    |
| DDL     | Data Definition Language     |
| DML     | Data Manipulation Language   |
| DQL     | Data Query Language          |
| DCL     | Data Control Language        |
| TCL     | Transaction Control Language |
| SELECT  | استرجاع البيانات من Tables   |
| INSERT  | إضافة Records جديدة          |
| UPDATE  | تعديل Records موجودة         |
| DELETE  | حذف Records                  |
| CREATE  | إنشاء Database Objects       |
| DROP    | حذف Database Objects         |

---

# المؤلف

Youness Chergui Amin

---

---
