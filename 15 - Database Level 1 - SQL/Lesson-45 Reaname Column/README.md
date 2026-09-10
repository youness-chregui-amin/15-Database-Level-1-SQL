# Lesson 45 - SQL Rename Column

**---**

# Introduction

In this lesson, we learned about:

# Renaming Columns in a Database Table

Renaming a column means changing the name of an existing column in a database table without changing the data stored inside that column.

The method used to rename a column depends on the Database Management System (DBMS).

**---**

# Rename Column in a Table (Most Databases)

In many Database Management Systems, such as MySQL, PostgreSQL, and SQLite, we can rename a column using the `ALTER TABLE` command with the `RENAME COLUMN` clause.

**## Syntax**

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

**## Example**

```sql
ALTER TABLE Employees
RENAME COLUMN Gendor TO Gender;
```

Here, the SQL command changes the column name from `Gendor` to `Gender` in the `Employees` table.

The data stored inside the column remains unchanged.

**---**

# Rename Column in a Table (SQL Server)

In Microsoft SQL Server, the `ALTER TABLE ... RENAME COLUMN` syntax is not supported.

Instead, SQL Server provides the system stored procedure `sp_rename`.

**## Syntax**

```sql
EXEC sp_rename
    'table_name.old_column_name',
    'new_column_name',
    'COLUMN';
```

For example:

```sql
EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';
```

This changes the column name from `Gendor` to `Gender`.

**---**

# How `sp_rename` Works

The first parameter identifies the existing column.

For example:

```text
Employees.Gendor
```

means:

```text
Employees → Table
Gendor    → Old Column Name
```

The second parameter is the new column name:

```text
Gender
```

The third parameter tells SQL Server that the object being renamed is a column:

```sql
'COLUMN'
```

Therefore:

```sql
EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';
```

means:

> Rename the `Gendor` column in the `Employees` table to `Gender`.

**---**

# Complete Example (SQL Server)

Here is a complete example showing how to create a table, insert data, rename a column, and verify the result.

```sql
-- 1. Create a table

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    FullName NVARCHAR(50),
    Gendor NVARCHAR(10)
);

-- 2. Insert sample data

INSERT INTO Employees (ID, FullName, Gendor)
VALUES
(1, 'Youness Chergui Amin', 'Male'),
(2, 'Youness Chergui Amin', 'Male');

-- 3. Rename the column

EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';

-- 4. Verify the rename

SELECT ID, FullName, Gender
FROM Employees;
```

The result will use the new column name:

```text
ID    FullName                 Gender
----  -----------------------  ------
1     Youness Chergui Amin     Male
2     Youness Chergui Amin     Male
```

The values inside the column were not changed.

Only the column name changed from:

```text
Gendor
```

to:

```text
Gender
```

**---**

# Renaming a Column with a Schema

If the table belongs to a specific schema, we can specify the schema in the object name.

For example:

```sql
EXEC sp_rename
    'dbo.Employees.Gendor',
    'Gender',
    'COLUMN';
```

Here:

```text
dbo       → Schema
Employees → Table
Gendor    → Old Column
Gender    → New Column
```

**---**

# Important Considerations & Best Practices

## 1. Dependent Objects

Renaming a column does not automatically update every reference to that column.

The old column name may be used by:

* Views
* Stored Procedures
* Triggers
* Application Code
* Queries
* Reports

These references may need to be updated manually.

---

## 2. Permissions

The user must have the required permissions on the table to rename its column.

In SQL Server, appropriate `ALTER` permission on the object is generally required.

---

## 3. `sp_rename` Warning

SQL Server may display a warning when using `sp_rename`.

This is because renaming a column can affect existing scripts, queries, database modules, or application code that depend on the old name.

Therefore, renaming columns in a production database should be planned carefully.

**---**

# Before and After

| Step | Column Name | Status   |
| ---- | ----------- | -------- |
| 1    | `Gendor`    | Old Name |
| 2    | `sp_rename` | Renaming |
| 3    | `Gender`    | New Name |

**---**

# Important SQL Server Command

| Task              | Command                                                 |
| ----------------- | ------------------------------------------------------- |
| Rename Column     | `EXEC sp_rename 'Table.Column', 'NewColumn', 'COLUMN';` |
| Check Column Data | `SELECT * FROM TableName;`                              |

**---**

# Key Takeaway

* SQL Server does not support `ALTER TABLE ... RENAME COLUMN`.
* SQL Server uses `sp_rename` to rename columns.
* The third parameter should be `'COLUMN'`.
* Renaming a column changes its name, not the data stored inside it.
* Dependent queries, views, procedures, triggers, and application code may need to be updated.
* Use `sp_rename` carefully, especially in production databases.

**---**

# Summary

| Concept       | Meaning                                           |
| ------------- | ------------------------------------------------- |
| Rename Column | Change the name of an existing column             |
| `sp_rename`   | SQL Server procedure used to rename objects       |
| `COLUMN`      | Tells SQL Server that the object is a column      |
| Schema        | Identifies the schema containing the table        |
| Dependency    | Code or object that references the renamed column |

**---**

# Author

Youness Chergui Amin

**---**

**---**

# الدرس 45 — SQL Rename Column

**---**

# المقدمة

فهاد الدرس، تعلمنا على:

# تغيير اسم Column داخل Database Table

Rename Column كيعني أننا كنبدلو اسم واحد الـColumn موجود أصلاً داخل Table، بلا ما نبدلو الـData اللي مخزنة فيه.

الطريقة اللي كنستعملو باش نبدلو اسم الـColumn كتختلف حسب الـDatabase Management System أو DBMS اللي خدامين به.

**---**

# تغيير اسم Column فـ Table (Most Databases)

فبزاف ديال Database Management Systems بحال MySQL و PostgreSQL و SQLite، نقدروا نبدلو اسم الـColumn باستعمال `ALTER TABLE` مع `RENAME COLUMN`.

**## Syntax**

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

**## Example**

```sql
ALTER TABLE Employees
RENAME COLUMN Gendor TO Gender;
```

هنا الـSQL Command كيبدل اسم الـColumn من:

```text
Gendor
```

إلى:

```text
Gender
```

داخل Table اللي سميتها:

```text
Employees
```

والـData اللي كانت مخزنة فـColumn ما كتتبدلش.

يعني غير الاسم اللي تبدل.

**---**

# تغيير اسم Column فـ Table (SQL Server)

فـ Microsoft SQL Server، ما نقدروش نستعملو:

```sql
ALTER TABLE ... RENAME COLUMN
```

حيت هاد الـSyntax ما مدعماش فـ SQL Server.

بلاصة منها، SQL Server كيعطينا System Stored Procedure سميتها:

```text
sp_rename
```

وهي اللي كنستعملوها باش نبدلو اسم الـColumn.

**## Syntax**

```sql
EXEC sp_rename
    'table_name.old_column_name',
    'new_column_name',
    'COLUMN';
```

مثلاً:

```sql
EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';
```

هاد الأمر كيبدل اسم:

```text
Gendor
```

إلى:

```text
Gender
```

**---**

# كيفاش كتخدم `sp_rename`؟

الـParameter الأول كيحدد الـColumn القديم اللي بغينا نبدلو الاسم ديالو.

مثلاً:

```text
Employees.Gendor
```

كتعني:

```text
Employees → Table
Gendor    → Old Column Name
```

الـParameter الثاني هو الاسم الجديد:

```text
Gender
```

والـParameter الثالث كيعلم SQL Server بأن الـObject اللي بغينا نبدلو الاسم ديالو هو Column:

```sql
'COLUMN'
```

إذن:

```sql
EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';
```

المعنى ديالو هو:

> بدّل اسم الـColumn `Gendor` الموجود فـTable `Employees` إلى `Gender`.

**---**

# مثال كامل (SQL Server)

هاد المثال كيبين لينا خطوة بخطوة كيفاش:

1. نصايبو Table
2. ندخلو فيها Data
3. نبدلو اسم Column
4. نتأكدو من النتيجة

```sql
-- 1. نصايبو Table

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    FullName NVARCHAR(50),
    Gendor NVARCHAR(10)
);

-- 2. ندخلو Sample Data

INSERT INTO Employees (ID, FullName, Gendor)
VALUES
(1, 'Youness Chergui Amin', 'Male'),
(2, 'Youness Chergui Amin', 'Male');

-- 3. نبدلو اسم Column

EXEC sp_rename
    'Employees.Gendor',
    'Gender',
    'COLUMN';

-- 4. نتأكدو من التغيير

SELECT ID, FullName, Gender
FROM Employees;
```

النتيجة غادي تستعمل الاسم الجديد:

```text
ID    FullName                 Gender
----  -----------------------  ------
1     Youness Chergui Amin     Male
2     Youness Chergui Amin     Male
```

الـValues اللي كانت داخل الـColumn ما تبدلاتش.

غير الاسم تبدل من:

```text
Gendor
```

إلى:

```text
Gender
```

**---**

# تغيير اسم Column باستعمال Schema

إلى كان الـTable تابع لـSchema معينة، نقدروا نحددو الـSchema فـObject Name.

مثلاً:

```sql
EXEC sp_rename
    'dbo.Employees.Gendor',
    'Gender',
    'COLUMN';
```

هنا:

```text
dbo       → Schema
Employees → Table
Gendor    → Old Column
Gender    → New Column
```

يعني:

```text
dbo.Employees.Gendor
```

كتحدد لينا بالضبط الـColumn اللي بغينا نبدلو الاسم ديالو.

**---**

# نقاط مهمة وأفضل الممارسات

## 1. Dependent Objects

ملي كنبدلو اسم Column، SQL Server ما كيضمنش أنه غادي يبدل جميع الـReferences اللي كتشير للاسم القديم.

الاسم القديم يقدر يكون مستعمل فـ:

* Views
* Stored Procedures
* Triggers
* Application Code
* Queries
* Reports

لهذا خاصنا نراجع هاد الـReferences ونبدلوها يدوياً إلا كان ضروري.

---

## 2. Permissions

الـUser خاصو يكون عندو الـPermissions المناسبة على الـTable باش يقدر يبدل اسم الـColumn.

فـ SQL Server، غالباً خاص تكون عندو `ALTER` permission مناسبة على الـObject.

---

## 3. Warning ديال `sp_rename`

SQL Server يقدر يعطي Warning ملي كنستعملو `sp_rename`.

السبب هو أن تغيير اسم الـColumn يقدر يأثر على Scripts أو Queries أو Database Modules أو Application Code اللي باقي كيعتمد على الاسم القديم.

لهذا، إلا كنا خدامين فـProduction Database، خاصنا نخططو مزيان قبل ما نبدلو الاسم.

**---**

# Before and After

| Step | Column Name | Status   |
| ---- | ----------- | -------- |
| 1    | `Gendor`    | Old Name |
| 2    | `sp_rename` | Renaming |
| 3    | `Gender`    | New Name |

يعني:

```text
قبل:
Gendor

     ↓ sp_rename

من بعد:
Gender
```

**---**

# أهم SQL Server Command

| المهمة                 | الأمر                                                   |
| ---------------------- | ------------------------------------------------------- |
| Rename Column          | `EXEC sp_rename 'Table.Column', 'NewColumn', 'COLUMN';` |
| نشوفو Data ديال Column | `SELECT * FROM TableName;`                              |

**---**

# الخلاصة المهمة

* SQL Server ما كيدعمش `ALTER TABLE ... RENAME COLUMN`.
* فـ SQL Server كنستعملو `sp_rename` باش نبدلو اسم الـColumn.
* الـParameter الثالث خاصو يكون `'COLUMN'`.
* Rename Column كيبدل الاسم فقط، وما كيبدلش الـData اللي مخزنة فـColumn.
* بعض الـQueries والـViews والـStored Procedures والـTriggers وApplication Code يقدرو يبقاو كيشيرو للاسم القديم.
* خاصنا نستعملو `sp_rename` بحذر، خصوصاً فـProduction Database.

**---**

# الخلاصة

| Concept       | المعنى                                                     |
| ------------- | ---------------------------------------------------------- |
| Rename Column | تبديل اسم Column موجود                                     |
| `sp_rename`   | System Stored Procedure فـ SQL Server لتغيير أسماء Objects |
| `COLUMN`      | كتعلم SQL Server بأن الـObject هو Column                   |
| Schema        | كتحدد الـSchema اللي تابع ليها الـTable                    |
| Dependency    | شي Code أو Object كيعتمد على الـColumn اللي تبدل اسمو      |

**---**

# المؤلف

Youness Chergui Amin

**---**

**---**
