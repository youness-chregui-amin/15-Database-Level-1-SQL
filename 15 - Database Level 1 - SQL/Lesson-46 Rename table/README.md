# Lesson 46 - SQL Rename Table

---

# Introduction

In this lesson, we learned about:

**Renaming Tables in a Database**

How to change the name of an existing table in a database. Just like renaming columns, the method differs between standard SQL databases and Microsoft SQL Server.

---

# Rename Table (Most Databases)

In most database management systems (like MySQL, PostgreSQL, Oracle, and SQLite), the syntax is:

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

### Example

```sql
ALTER TABLE Employees
RENAME TO Staff;
```

This changes the table name from `Employees` to `Staff`.

---

# Rename Table (SQL Server)

In Microsoft SQL Server, we use the built-in stored procedure:

```sql
sp_rename
```

### Syntax

```sql
EXEC sp_rename 'old_table_name', 'new_table_name';
```

### Example

```sql
EXEC sp_rename 'Employees', 'Staff';
```

This renames the table from `Employees` to `Staff`.

---

# How sp_rename Works

The `sp_rename` procedure takes two main parameters:

```sql
EXEC sp_rename 'old_name', 'new_name';
```

* **old_name** → The current name of the table.
* **new_name** → The new name you want to give the table.

SQL Server then changes the table name in the database.

---

# Complete Example (SQL Server)

First, let's create a table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
```

Insert some sample data:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
('Yassine', 'Amrani'),
('Salma', 'Bennani');
```

Now, let's rename the table:

```sql
EXEC sp_rename 'Emp', 'Employees';
```

The table is now called:

```text
Employees
```

We can verify the table by using:

```sql
SELECT *
FROM Employees;
```

---

# Renaming a Table with a Schema

If the table belongs to a specific schema, it is better to include the schema name.

### Syntax

```sql
EXEC sp_rename 'schema_name.old_table_name', 'new_table_name';
```

### Example

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

Here:

* `dbo` → The schema name.
* `Emp` → The old table name.
* `Employees` → The new table name.

---

# Important Considerations & Best Practices

## 1. Broken References

Renaming a table does not automatically update all references to the old table name.

For example, if a stored procedure contains:

```sql
SELECT *
FROM Emp;
```

and we rename the table to `Employees`, the stored procedure may still reference `Emp`.

You should check and update dependent objects after renaming a table.

---

## 2. Schema Prefix

When using `sp_rename`, it is recommended to specify the schema:

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

This makes it clear which table you are renaming.

---

## 3. Permissions

You need the appropriate permissions to rename a table.

If you do not have enough permissions, SQL Server will return an error.

---

## 4. Use sp_rename Carefully

`sp_rename` can be useful, but it should be used carefully, especially in production databases.

Before renaming a table:

* Check dependencies.
* Check stored procedures.
* Check views.
* Check application code.
* Make sure the new name is clear and meaningful.

---

# Before and After

### Before

```text
Emp
```

### Rename Command

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

### After

```text
Employees
```

---

# Important SQL Server Command

The main SQL Server command for renaming a table is:

```sql
EXEC sp_rename 'old_table_name', 'new_table_name';
```

### Example

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

---

# Key Takeaway

To rename a table:

* **Most Databases:**

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

* **SQL Server:**

```sql
EXEC sp_rename 'old_table_name', 'new_table_name';
```

Always check dependencies before renaming tables, especially in large or production databases.

---

# Summary

| Operation      | SQL Server             |
| -------------- | ---------------------- |
| Rename Table   | `EXEC sp_rename`       |
| Old Table Name | `'old_table_name'`     |
| New Table Name | `'new_table_name'`     |
| Include Schema | `'dbo.old_table_name'` |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 46 — SQL Rename Table

---

# المقدمة

فهاد الدرس تعلمنا:

**تغيير اسم الـTable فـDatabase**

يعني كيفاش نبدلو اسم واحد الـTable موجود من قبل فـDatabase. بحال تغيير اسم الـColumn، الطريقة كتختلف حسب نوع الـDatabase، خصوصاً بين SQL Databases العادية و Microsoft SQL Server.

---

# تغيير اسم الـTable — Most Databases

فـأغلب أنظمة إدارة قواعد البيانات بحال MySQL و PostgreSQL و Oracle و SQLite، كنستعملو:

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

### مثال

```sql
ALTER TABLE Employees
RENAME TO Staff;
```

هاد الأمر كيبدل اسم الـTable من `Employees` لـ `Staff`.

---

# تغيير اسم الـTable — SQL Server

فـMicrosoft SQL Server، كنستعملو Stored Procedure جاهزة سميتها:

```sql
sp_rename
```

### Syntax

```sql
EXEC sp_rename 'old_table_name', 'new_name';
```

### مثال

```sql
EXEC sp_rename 'Employees', 'Staff';
```

هاد الأمر كيبدل اسم الـTable من `Employees` لـ `Staff`.

---

# كيفاش خدام sp_rename

الـ`sp_rename` كتحتاج جوج ديال المعلومات الأساسية:

```sql
EXEC sp_rename 'old_name', 'new_name';
```

* **old_name** → الاسم القديم ديال الـTable.
* **new_name** → الاسم الجديد اللي بغينا نعطيو للـTable.

ومن بعد SQL Server كيبدل اسم الـTable فـDatabase.

---

# Complete Example — SQL Server

أولاً، غادي ننشئو Table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
```

ومن بعد ندخلو شوية ديال البيانات:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
('Yassine', 'Amrani'),
('Salma', 'Bennani');
```

دابا غادي نبدلو اسم الـTable:

```sql
EXEC sp_rename 'Emp', 'Employees';
```

دابا الـTable ولى سميتو:

```text
Employees
```

ونقدرو نتأكدو من النتيجة باستعمال:

```sql
SELECT *
FROM Employees;
```

---

# تغيير اسم Table باستعمال Schema

إلا كان الـTable تابع لـSchema معينة، من الأحسن نكتبو اسم الـSchema.

### Syntax

```sql
EXEC sp_rename 'schema_name.old_table_name', 'new_table_name';
```

### مثال

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

هنا:

* `dbo` → اسم الـSchema.
* `Emp` → الاسم القديم ديال الـTable.
* `Employees` → الاسم الجديد ديال الـTable.

---

# Important Considerations & Best Practices

## 1. Broken References

تغيير اسم الـTable ما كيبدلش أوتوماتيكياً جميع الـReferences اللي كتشير للاسم القديم.

مثلاً، إلا كان Stored Procedure فيه:

```sql
SELECT *
FROM Emp;
```

ومن بعد بدلنا اسم الـTable لـ`Employees`، ممكن الـStored Procedure يبقى كيشير لـ`Emp`.

لهذا خاصنا نراجعو ونبدلو الـDependent Objects من بعد تغيير الاسم.

---

## 2. Schema Prefix

ملي كنستعملو `sp_rename`، من الأحسن نكتبو اسم الـSchema:

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

هادشي كيخلي واضح شنو هو الـTable اللي بغينا نبدلو الاسم ديالو.

---

## 3. Permissions

خاص تكون عندك الـPermissions المناسبة باش تقدر تبدل اسم الـTable.

إلا ماكانوش عندك الصلاحيات الكافية، SQL Server غادي يعطيك Error.

---

## 4. استعمل sp_rename بحذر

`sp_rename` مفيدة، ولكن خاص نستعملوها بحذر، خصوصاً فـProduction Databases.

قبل ما تبدل اسم الـTable:

* تأكد من الـDependencies.
* راجع Stored Procedures.
* راجع Views.
* راجع Application Code.
* تأكد أن الاسم الجديد واضح ومناسب.

---

# Before and After

### قبل

```text
Emp
```

### Rename Command

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

### من بعد

```text
Employees
```

---

# Important SQL Server Command

الأمر الأساسي فـSQL Server باش نبدلو اسم الـTable هو:

```sql
EXEC sp_rename 'old_table_name', 'new_table_name';
```

### مثال

```sql
EXEC sp_rename 'dbo.Emp', 'Employees';
```

---

# Key Takeaway

باش نبدلو اسم الـTable:

* **Most Databases:**

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

* **SQL Server:**

```sql
EXEC sp_rename 'old_table_name', 'new_table_name';
```

ودائماً خاصك تراجع الـDependencies قبل ما تبدل أسماء الـTables، خصوصاً فـLarge أو Production Databases.

---

# Summary

| العملية        | SQL Server             |
| -------------- | ---------------------- |
| Rename Table   | `EXEC sp_rename`       |
| Old Table Name | `'old_table_name'`     |
| New Table Name | `'new_table_name'`     |
| Include Schema | `'dbo.old_table_name'` |

---

# Author

**Youness Chergui Amin**

</div>
