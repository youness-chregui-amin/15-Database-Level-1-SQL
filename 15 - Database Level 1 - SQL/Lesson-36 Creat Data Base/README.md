# Lesson 36 - SQL CREATE DATABASE Statement

---

# Introduction

In this lesson, we learned about:

# Creating Databases with SQL

The `CREATE DATABASE` statement is one of the fundamental SQL commands used to create new databases for storing and managing data.

It allows database administrators and developers to:

* Create new databases for projects.

* Organize data into separate database structures.

* Prepare the environment for creating tables and other database objects.

---

# What is a CREATE DATABASE Statement?

# CREATE DATABASE = Create a New Database

The `CREATE DATABASE` statement is used to create a new database in a SQL Database Management System.

A database can contain:

* Tables

* Views

* Stored Procedures

* Functions

* Other database objects

Before creating tables, we usually need to create a database first.

---

# Basic Syntax

```sql
CREATE DATABASE database_name;
```

---

# Example

## Creating a Simple Database

```sql
CREATE DATABASE Koko;
```

### Meaning

* This SQL command creates a new database named `Koko`.

* The database can now contain tables and other database objects.

---

# Key Components

| Component     | Meaning                                     |
| ------------- | ------------------------------------------- |
| CREATE        | SQL keyword used to create an object        |
| DATABASE      | Specifies that we want to create a database |
| database_name | Name of the new database                    |
| ;             | Statement terminator                        |

---

# More Examples

## Example 1: Company Database

```sql
CREATE DATABASE CompanyDB;
```

Creates a database for storing company information.

## Example 2: School Database

```sql
CREATE DATABASE SchoolDB;
```

Creates a database for storing school data.

## Example 3: Library Database

```sql
CREATE DATABASE LibraryDB;
```

Creates a database for managing library resources.

---

# Important Rules for Database Names

Database naming rules depend on the SQL Database Management System.

| Rule              | Description                                                   |
| ----------------- | ------------------------------------------------------------- |
| No Spaces         | Avoid spaces; use `_` or another valid naming style           |
| Unique            | The database name must not conflict with an existing database |
| Case Sensitivity  | Depends on the database system and configuration              |
| Valid Characters  | Use valid characters supported by the database system         |
| Naming Convention | Use clear and meaningful names                                |

---

# Common Naming Conventions

```text
✓ StudentDB

✓ EmployeeDatabase

✓ CRM_System

✓ InventoryDB

✗ My Database

✗ database-name

✗ 2database
```

Using clear and consistent names makes databases easier to manage.

---

# Real-World Example

## E-Commerce Project

```sql
CREATE DATABASE ECommerceDB;
```

After creating the database, we can create tables for:

* Products

* Customers

* Orders

* Payments

---

# Process Flow

```text
1. Create Database
        ↓
2. Select Database
        ↓
3. Create Tables
        ↓
4. Insert Data
        ↓
5. Query Data
```

For example:

```sql
CREATE DATABASE ECommerceDB;

USE ECommerceDB;
```

After selecting the database, we can create tables inside it.

---

# Common Errors and Solutions

| Error                   | Cause                              | Solution                                                           |
| ----------------------- | ---------------------------------- | ------------------------------------------------------------------ |
| Database already exists | The database name is already used  | Choose another name or remove the existing database if appropriate |
| Syntax Error            | Incorrect SQL syntax               | Check the command and spelling                                     |
| Invalid Name            | Invalid characters or naming rules | Use a valid database name                                          |
| Permission Error        | User does not have permission      | Use an account with the required permissions                       |

---

# Key Differences

| Task            | Command                          |
| --------------- | -------------------------------- |
| Create Database | `CREATE DATABASE database_name;` |
| Select Database | `USE database_name;`             |
| Drop Database   | `DROP DATABASE database_name;`   |
| Create Table    | `CREATE TABLE table_name (...);` |

---

# Complete Example Workflow

```sql
-- Step 1: Create a new database
CREATE DATABASE StudentRecordsDB;

-- Step 2: Select the database
USE StudentRecordsDB;

-- Step 3: Create a table
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

### Explanation

First, we create the database.

Then, we select the database using the `USE` statement.

Finally, we create a table inside the selected database.

---

# Why is CREATE DATABASE Important?

The `CREATE DATABASE` statement allows us to:

* Organize data logically.

* Separate data belonging to different applications or projects.

* Create a container for database objects.

* Prepare a database environment for storing and managing data.

* Manage different databases on the same database server.

---

# Key Takeaway

* `CREATE DATABASE` creates a new database.

* A database provides a container for tables and other database objects.

* We can use `USE` to select a database before working with its tables.

* Database names should be clear, meaningful, and valid for the database system.

* After creating and selecting a database, we can create tables and start working with data.

---

# Summary

| Concept         | Description                                          |
| --------------- | ---------------------------------------------------- |
| CREATE DATABASE | SQL command used to create a new database            |
| Syntax          | `CREATE DATABASE database_name;`                     |
| Example         | `CREATE DATABASE Koko;`                              |
| USE             | Selects the database to work with                    |
| DROP DATABASE   | Removes a database                                   |
| Purpose         | Prepare an environment for storing and managing data |
| Next Step       | Select the database and create tables                |

---

# Author

Youness Chergui Amin

---

---

# الدرس 36 — SQL CREATE DATABASE Statement

---

# المقدمة

فهاد الدرس، تعلمنا على:

# إنشاء Databases باستعمال SQL

الـ `CREATE DATABASE` هي وحدة من الأوامر الأساسية فـ SQL، وكتستعمل باش ننشئو Database جديدة لتخزين وتنظيم وتدبير البيانات.

كتسمح لينا:

* ننشئو Database جديدة للمشاريع.

* ننظمو البيانات فـ Database مستقلة.

* نوجدو البيئة باش ننشئو Tables و Database Objects أخرى.

---

# شنو هو CREATE DATABASE Statement؟

# CREATE DATABASE = إنشاء Database جديدة

الـ `CREATE DATABASE` كتستعمل باش ننشئو Database جديدة داخل SQL Database Management System.

الـ Database تقدر تحتوي على:

* Tables

* Views

* Stored Procedures

* Functions

* Database Objects أخرى

قبل ما ننشئو Tables، خاصنا غالباً ننشئو Database أولاً.

---

# Basic Syntax

```sql
CREATE DATABASE database_name;
```

---

# مثال

## إنشاء Database بسيطة

```sql
CREATE DATABASE Koko;
```

### المعنى

* هاد SQL Command كينشئ Database سميتها `Koko`.

* من بعد نقدروا نستعملوها باش نخزنو فيها Tables و Database Objects أخرى.

---

# المكونات الأساسية

| Component     | المعنى                            |
| ------------- | --------------------------------- |
| CREATE        | SQL Keyword كتستعمل لإنشاء Object |
| DATABASE      | كتحدد أننا باغين ننشئو Database   |
| database_name | الاسم ديال Database الجديدة       |
| ;             | كتنهي SQL Statement               |

---

# أمثلة أخرى

## المثال 1: Company Database

```sql
CREATE DATABASE CompanyDB;
```

كتنشئ Database مخصصة لتخزين معلومات الشركة.

## المثال 2: School Database

```sql
CREATE DATABASE SchoolDB;
```

كتنشئ Database مخصصة لتخزين بيانات المدرسة.

## المثال 3: Library Database

```sql
CREATE DATABASE LibraryDB;
```

كتنشئ Database مخصصة لتسيير بيانات المكتبة.

---

# قواعد تسمية Database

قواعد تسمية Database كتختلف حسب SQL Database Management System اللي كنستعملو.

| القاعدة           | الشرح                                                        |
| ----------------- | ------------------------------------------------------------ |
| No Spaces         | من الأفضل نتفاداو المسافات ونستعملو `_` أو Naming Style واضح |
| Unique            | الاسم ما خاصوش يتعارض مع Database موجودة                     |
| Case Sensitivity  | كتختلف حسب النظام والـ Configuration                         |
| Valid Characters  | خاصنا نستعملو Characters مسموح بها                           |
| Naming Convention | خاص الاسم يكون واضح ومعبر                                    |

---

# أمثلة على Naming Conventions

```text
✓ StudentDB

✓ EmployeeDatabase

✓ CRM_System

✓ InventoryDB

✗ My Database

✗ database-name

✗ 2database
```

استعمال أسماء واضحة ومنظمة كيخلي Database أسهل فالإدارة.

---

# مثال واقعي

## E-Commerce Project

```sql
CREATE DATABASE ECommerceDB;
```

من بعد إنشاء Database، نقدروا ننشئو Tables ديال:

* Products

* Customers

* Orders

* Payments

---

# Process Flow

```text
1. إنشاء Database
        ↓
2. اختيار Database
        ↓
3. إنشاء Tables
        ↓
4. إدخال Data
        ↓
5. Query على Data
```

مثلاً:

```sql
CREATE DATABASE ECommerceDB;

USE ECommerceDB;
```

من بعد ما نختارو Database، نقدروا ننشئو Tables داخلها.

---

# الأخطاء الشائعة والحلول

| الخطأ                   | السبب                           | الحل                                                       |
| ----------------------- | ------------------------------- | ---------------------------------------------------------- |
| Database already exists | Database بنفس الاسم موجودة      | اختار اسم آخر أو حيد Database الموجودة إلا كان ذلك مناسباً |
| Syntax Error            | SQL Syntax فيها خطأ             | راجع الأمر والـ Spelling                                   |
| Invalid Name            | الاسم فيه Characters غير مسموحة | استعمل اسم صالح حسب النظام                                 |
| Permission Error        | User ما عندوش Permission كافية  | استعمل Account عندو الصلاحيات المطلوبة                     |

---

# الفرق بين الأوامر

| المهمة          | الأمر                            |
| --------------- | -------------------------------- |
| إنشاء Database  | `CREATE DATABASE database_name;` |
| اختيار Database | `USE database_name;`             |
| حذف Database    | `DROP DATABASE database_name;`   |
| إنشاء Table     | `CREATE TABLE table_name (...);` |

---

# مثال كامل

```sql
-- Step 1: إنشاء Database جديدة
CREATE DATABASE StudentRecordsDB;

-- Step 2: اختيار Database
USE StudentRecordsDB;

-- Step 3: إنشاء Table
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

### الشرح

أولاً، كننشئو Database.

من بعد، كنختارو Database باستعمال `USE`.

وأخيراً، كننشئو Table داخل Database اللي اخترناها.

---

# علاش CREATE DATABASE مهمة؟

الـ `CREATE DATABASE` كتسمح لينا:

* ننظمو البيانات بطريقة منطقية.

* نفصلو بيانات المشاريع والتطبيقات المختلفة.

* نوفروا Container لجميع Database Objects.

* نوجدو Environment لتخزين وتسيير البيانات.

* ندبرو أكثر من Database داخل نفس Database Server.

---

# الخلاصة المهمة

* `CREATE DATABASE` كتستعمل لإنشاء Database جديدة.

* Database كتكون Container للـ Tables و Database Objects الأخرى.

* كنستعملو `USE` باش نختارو Database اللي بغينا نخدمو عليها.

* خاص Database Name يكون واضح، معبر، وصالح حسب النظام.

* من بعد إنشاء واختيار Database، نقدروا ننشئو Tables ونبداو نخدمو بالبيانات.

---

# الخلاصة

| Concept         | المعنى                                   |
| --------------- | ---------------------------------------- |
| CREATE DATABASE | SQL Command لإنشاء Database جديدة        |
| Syntax          | `CREATE DATABASE database_name;`         |
| Example         | `CREATE DATABASE Koko;`                  |
| USE             | كتختار Database باش نخدمو عليها          |
| DROP DATABASE   | كتحيد Database                           |
| Purpose         | إنشاء Environment لتخزين وتسيير البيانات |
| Next Step       | اختيار Database وإنشاء Tables            |

---

# المؤلف

Youness Chergui Amin

---

---
