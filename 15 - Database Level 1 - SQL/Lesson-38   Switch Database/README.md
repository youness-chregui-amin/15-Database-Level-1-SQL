# Lesson 38 - Switch Database

---

# Introduction

In this lesson, we learned about:

# Switching Between Databases

Switching between databases means changing the active database context in the current SQL Server session.

This allows us to work with different databases using the same connection.

---

# What is Switch Database?

Switching databases happens when:

> We change the active database context from one database to another.

For example:

* Switch from `CompanyDB` to `SalesDB`.

* Switch from `StudentDB` to `EmployeeDB`.

* Switch back to `CompanyDB` when needed.

---

# Main Idea

A single SQL Server connection can work with multiple databases by changing the current database context.

For example:

```text
CompanyDB
    ↓
SalesDB
    ↓
CompanyDB
```

The `USE` statement is used to change the active database context.

---

# SQL Syntax

## Switch to a Database

```sql
USE DatabaseName;
```

For example:

```sql
USE CompanyDB;
```

This changes the current database context to `CompanyDB`.

---

# Example

Suppose we have two databases:

```text
CompanyDB
SalesDB
```

We can switch between them:

```sql
USE CompanyDB;
```

Now the active database is:

```text
CompanyDB
```

Then:

```sql
USE SalesDB;
```

Now the active database is:

```text
SalesDB
```

We can switch back:

```sql
USE CompanyDB;
```

Now we are working with:

```text
CompanyDB
```

---

# Before and After

| Step | Database  | Status        |
| ---- | --------- | ------------- |
| 1    | CompanyDB | Active        |
| 2    | SalesDB   | Switched      |
| 3    | CompanyDB | Switched Back |

---

# How USE Works

The `USE` statement changes the database context of the current session.

For example:

```sql
USE SalesDB;
```

After executing this statement, SQL Server interprets unqualified table references in the context of `SalesDB`.

For example:

```sql
USE SalesDB;

SELECT *
FROM Customers;
```

SQL Server looks for the `Customers` table in the current `SalesDB` database.

---

# Viewing the Current Database

In SQL Server, we can use:

```sql
SELECT DB_NAME();
```

This returns the name of the current database.

Example:

```sql
USE CompanyDB;

SELECT DB_NAME();
```

Result:

```text
CompanyDB
```

---

# Complete Example

```sql
-- Step 1: Switch to CompanyDB
USE CompanyDB;

-- Step 2: Check the current database
SELECT DB_NAME();

-- Step 3: Switch to SalesDB
USE SalesDB;

-- Step 4: Check the current database again
SELECT DB_NAME();

-- Step 5: Switch back to CompanyDB
USE CompanyDB;

-- Step 6: Check the current database
SELECT DB_NAME();
```

---

# Important Point

The database context belongs to the current session or connection.

For example:

```text
Connection
    |
    └── Current Database: CompanyDB
```

After:

```sql
USE SalesDB;
```

The context becomes:

```text
Connection
    |
    └── Current Database: SalesDB
```

The `USE` statement does not copy or move data between databases.

It only changes the database context in which subsequent statements are executed.

---

# Switching Databases and Schemas

A database can contain multiple schemas.

For example:

```text
CompanyDB
    |
    ├── dbo
    │    └── Employees
    |
    └── HR
         └── Employees
```

When working with a specific table, we can specify both the schema and table:

```sql
SELECT *
FROM dbo.Employees;
```

Or:

```sql
SELECT *
FROM HR.Employees;
```

The `USE` statement changes the database, while the schema identifies objects inside that database.

---

# Using Fully Qualified Table Names

SQL Server also allows us to specify the database directly.

Syntax:

```sql
SELECT *
FROM DatabaseName.SchemaName.TableName;
```

Example:

```sql
SELECT *
FROM CompanyDB.dbo.Employees;
```

This allows us to reference a table from another database without switching the current database context.

---

# Common Errors and Solutions

| Error                   | Cause                                               | Solution                          |
| ----------------------- | --------------------------------------------------- | --------------------------------- |
| Database does not exist | The specified database is not available             | Check the database name           |
| Permission Error        | User does not have access                           | Check database permissions        |
| Invalid Object Name     | Table does not exist in the current database/schema | Check the database and table name |
| Wrong Database Context  | Query is running in another database                | Use `USE DatabaseName;`           |

---

# Important SQL Server Commands

| Task                       | Command                             |
| -------------------------- | ----------------------------------- |
| Switch Database            | `USE DatabaseName;`                 |
| View Current Database      | `SELECT DB_NAME();`                 |
| View Databases             | `SELECT name FROM sys.databases;`   |
| Reference Another Database | `DatabaseName.SchemaName.TableName` |

---

# Real-World Example

Suppose we have:

```text
CompanyDB
    └── Employees

SalesDB
    └── Orders
```

We can work with `CompanyDB`:

```sql
USE CompanyDB;

SELECT *
FROM Employees;
```

Then switch to `SalesDB`:

```sql
USE SalesDB;

SELECT *
FROM Orders;
```

We can also access `CompanyDB` without switching:

```sql
SELECT *
FROM CompanyDB.dbo.Employees;
```

---

# Key Takeaway

* `USE DatabaseName;` changes the current database context.

* The change applies to the current SQL Server session or connection.

* `SELECT DB_NAME();` shows the current database.

* We can switch between databases whenever needed.

* `USE` does not move or copy data.

* We can access another database directly using a fully qualified name such as `DatabaseName.SchemaName.TableName`.

---

# Summary

| Concept              | Meaning                                     |
| -------------------- | ------------------------------------------- |
| Switch Database      | Change the current database context         |
| `USE`                | Switch to a specific database               |
| `DB_NAME()`          | Returns the current database name           |
| Session              | Current connection to SQL Server            |
| Schema               | Organizes objects inside a database         |
| Fully Qualified Name | `Database.Schema.Table`                     |
| `USE CompanyDB;`     | Switches the current context to `CompanyDB` |

---

# Author

Youness Chergui Amin

---

---

# الدرس 38 — Switch Database

---

# المقدمة

فهاد الدرس، تعلمنا على:

# التنقل بين Databases

Switching Between Databases كيعني أننا كنبدلو الـ Database Context الحالي فـ SQL Server Session.

هادشي كيسمح لينا نخدمو مع أكثر من Database باستعمال نفس Connection.

---

# شنو هو Switch Database؟

Switching Database كيوقع ملي:

> كنبدلو الـ Database Context الحالي من Database لوحدة أخرى.

مثلاً:

* كنبدلو من `CompanyDB` لـ `SalesDB`.

* كنبدلو من `StudentDB` لـ `EmployeeDB`.

* ونقدرو نرجعو لـ `CompanyDB` من بعد.

---

# الفكرة الرئيسية

نفس SQL Server Connection تقدر تخدم مع أكثر من Database، غير كنبدلو الـ Current Database Context.

مثلاً:

```text
CompanyDB
    ↓
SalesDB
    ↓
CompanyDB
```

الـ `USE` Statement هي اللي كنستعملوها باش نبدلو الـ Active Database.

---

# SQL Syntax

## التبديل إلى Database

```sql
USE DatabaseName;
```

مثلاً:

```sql
USE CompanyDB;
```

هاد الأمر كيبدل الـ Current Database Context لـ `CompanyDB`.

---

# مثال

نفترضو عندنا جوج Databases:

```text
CompanyDB
SalesDB
```

نقدرو نبدلو بينهم:

```sql
USE CompanyDB;
```

دابا الـ Active Database هي:

```text
CompanyDB
```

من بعد:

```sql
USE SalesDB;
```

دابا الـ Active Database هي:

```text
SalesDB
```

ونقدرو نرجعو:

```sql
USE CompanyDB;
```

دابا رجعنا كنخدمو مع:

```text
CompanyDB
```

---

# Before and After

| Step | Database  | Status        |
| ---- | --------- | ------------- |
| 1    | CompanyDB | Active        |
| 2    | SalesDB   | Switched      |
| 3    | CompanyDB | Switched Back |

---

# كيفاش كتخدم USE؟

الـ `USE` Statement كتبدل الـ Database Context ديال الـ Current Session.

مثلاً:

```sql
USE SalesDB;
```

من بعد تنفيذ هاد الأمر، SQL Server غادي يتعامل مع Table References اللي ما محددش فيها Database على أساس أنها تابعة لـ `SalesDB`.

مثلاً:

```sql
USE SalesDB;

SELECT *
FROM Customers;
```

SQL Server غادي يقلب على `Customers` داخل `SalesDB`.

---

# كيفاش نعرفو Database الحالية؟

فـ SQL Server كنستعملو:

```sql
SELECT DB_NAME();
```

هاد Function كترجع اسم الـ Current Database.

مثلاً:

```sql
USE CompanyDB;

SELECT DB_NAME();
```

النتيجة:

```text
CompanyDB
```

---

# مثال كامل

```sql
-- Step 1: نمشيو لـ CompanyDB
USE CompanyDB;

-- Step 2: نشوفو Database الحالية
SELECT DB_NAME();

-- Step 3: نمشيو لـ SalesDB
USE SalesDB;

-- Step 4: نشوفو Database الحالية مرة أخرى
SELECT DB_NAME();

-- Step 5: نرجعو لـ CompanyDB
USE CompanyDB;

-- Step 6: نشوفو Database الحالية
SELECT DB_NAME();
```

---

# نقطة مهمة

الـ Database Context تابع للـ Current Session أو Connection.

مثلاً:

```text
Connection
    |
    └── Current Database: CompanyDB
```

من بعد:

```sql
USE SalesDB;
```

كيولي الـ Context:

```text
Connection
    |
    └── Current Database: SalesDB
```

الـ `USE` ما كينقلش وما كينسخش Data بين Databases.

هو غير كيبدل الـ Database Context اللي غادي يتطبق عليه الـ SQL Statements اللي جايين من بعد.

---

# Switching Databases و Schemas

Database تقدر تحتوي على أكثر من Schema.

مثلاً:

```text
CompanyDB
    |
    ├── dbo
    │    └── Employees
    |
    └── HR
         └── Employees
```

إلى بغينا نحددو Table معينة، نقدروا نحددو الـ Schema والـ Table:

```sql
SELECT *
FROM dbo.Employees;
```

أو:

```sql
SELECT *
FROM HR.Employees;
```

الـ `USE` كتبدل Database، بينما الـ Schema كتحدد Object داخل Database.

---

# Fully Qualified Table Names

SQL Server كيسمح لينا حتى نحددو Database مباشرة فـ Query.

Syntax:

```sql
SELECT *
FROM DatabaseName.SchemaName.TableName;
```

مثلاً:

```sql
SELECT *
FROM CompanyDB.dbo.Employees;
```

بهذه الطريقة نقدروا نوصلو لـ Table من Database أخرى بلا ما نبدلو الـ Current Database Context.

---

# الأخطاء الشائعة والحلول

| الخطأ                   | السبب                                         | الحل                       |
| ----------------------- | --------------------------------------------- | -------------------------- |
| Database does not exist | Database اللي حددنا ما كايناش                 | تأكد من Database Name      |
| Permission Error        | User ما عندوش Access كافي                     | راجع Database Permissions  |
| Invalid Object Name     | Table ما كايناش فـ Database أو Schema الحالية | راجع Database و Table Name |
| Wrong Database Context  | Query كتتنفذ فـ Database أخرى                 | استعمل `USE DatabaseName;` |

---

# أهم SQL Server Commands

| المهمة                     | الأمر                               |
| -------------------------- | ----------------------------------- |
| Switch Database            | `USE DatabaseName;`                 |
| View Current Database      | `SELECT DB_NAME();`                 |
| View Databases             | `SELECT name FROM sys.databases;`   |
| Reference Another Database | `DatabaseName.SchemaName.TableName` |

---

# مثال واقعي

نفترضو عندنا:

```text
CompanyDB
    └── Employees

SalesDB
    └── Orders
```

نقدرو نخدمو مع `CompanyDB`:

```sql
USE CompanyDB;

SELECT *
FROM Employees;
```

ومن بعد نبدلو لـ `SalesDB`:

```sql
USE SalesDB;

SELECT *
FROM Orders;
```

ونقدرو حتى نوصلو لـ `CompanyDB` بلا ما نبدلو Database:

```sql
SELECT *
FROM CompanyDB.dbo.Employees;
```

---

# الخلاصة المهمة

* `USE DatabaseName;` كتبدل الـ Current Database Context.

* التغيير كيتطبق على الـ Current SQL Server Session أو Connection.

* `SELECT DB_NAME();` كترجع اسم Database الحالية.

* نقدروا نبدلو بين Databases وقت ما بغينا.

* `USE` ما كتنقلش وما كتنْسخش Data.

* نقدروا نوصلو لـ Database أخرى مباشرة باستعمال `DatabaseName.SchemaName.TableName`.

---

# الخلاصة

| Concept              | المعنى                                   |
| -------------------- | ---------------------------------------- |
| Switch Database      | تبديل الـ Current Database Context       |
| `USE`                | كتبدل لـ Database معينة                  |
| `DB_NAME()`          | كترجع اسم Database الحالية               |
| Session              | Current Connection مع SQL Server         |
| Schema               | كتُنظم Objects داخل Database             |
| Fully Qualified Name | `Database.Schema.Table`                  |
| `USE CompanyDB;`     | كتبدل الـ Current Context لـ `CompanyDB` |

---

# المؤلف

Youness Chergui Amin

---

---
