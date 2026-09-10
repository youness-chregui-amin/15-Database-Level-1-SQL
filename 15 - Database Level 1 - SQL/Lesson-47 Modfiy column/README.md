# Lesson 47 - SQL Modify Column

---

# Introduction

In this lesson, we learned about:

# Modifying Columns in an Existing Database Table

Modifying a column means changing the definition or properties of an existing column in a database table.

We can modify things such as the data type, size, or nullability of a column.

The syntax for modifying a column depends on the Database Management System (DBMS).

---

# Modify Column in Different Databases

Different Database Management Systems use different syntax to modify an existing column.

---

# 1. MySQL

MySQL uses `MODIFY COLUMN` or `CHANGE COLUMN`.

### Modify Data Type or Constraints

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type [constraints];
```

### Rename and Modify a Column

```sql
ALTER TABLE table_name
CHANGE COLUMN old_column_name new_column_name new_data_type [constraints];
```

---

# 2. PostgreSQL

PostgreSQL uses `ALTER COLUMN` with different commands depending on what we want to change.

### Change Data Type

```sql
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_data_type;
```

### Set NOT NULL

```sql
ALTER TABLE table_name
ALTER COLUMN column_name SET NOT NULL;
```

### Allow NULL

```sql
ALTER TABLE table_name
ALTER COLUMN column_name DROP NOT NULL;
```

---

# 3. Oracle

Oracle uses the `MODIFY` clause.

```sql
ALTER TABLE table_name
MODIFY column_name new_data_type [constraints];
```

---

# Modify Column in SQL Server

In Microsoft SQL Server, we use:

`ALTER TABLE` + `ALTER COLUMN`

### Syntax

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
```

---

# Important Note

When modifying a column in SQL Server, we should specify:

* The new data type
* The size if the data type requires it
* The nullability: `NULL` or `NOT NULL`

For example:

```sql
ALTER TABLE Employees
ALTER COLUMN FirstName NVARCHAR(100) NULL;
```

This changes `FirstName` to `NVARCHAR(100)` and allows `NULL` values.

---

# Complete Example

First, we create a table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
```

Then, we insert some data:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
('Yassine', 'Amrani'),
('Salma', 'Bennani');
```

Now, we modify the `FirstName` column:

```sql
ALTER TABLE Emp
ALTER COLUMN FirstName NVARCHAR(100) NULL;
```

The column has now:

* Increased from 50 to 100 characters
* Changed from `NOT NULL` to `NULL`

---

# Insert NULL Value

Because the column now allows `NULL`, we can insert:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
(NULL, 'El Fassi');
```

---

# Verify the Results

We can use `SELECT` to view the data:

```sql
SELECT ID, FirstName, LastName
FROM Emp;
```

---

# Important Considerations

Before modifying a column in a production database, we should consider several important points.

---

# 1. Data Truncation and Data Loss

If we decrease the size of a column, existing data may not fit.

For example:

```sql
NVARCHAR(100)
```

to:

```sql
NVARCHAR(50)
```

If an existing value contains more than 50 characters, the modification can fail.

The same applies when changing between incompatible data types.

For example:

```sql
NVARCHAR
```

to:

```sql
INT
```

Existing values must be compatible with the new data type.

---

# 2. Existing NULL Values

We cannot change a column from `NULL` to `NOT NULL` if the column already contains `NULL` values.

For example:

```sql
ALTER TABLE Employees
ALTER COLUMN FirstName NVARCHAR(50) NOT NULL;
```

This can fail if some rows already contain `NULL`.

We must first update those values.

---

# 3. Dependencies

A column may be used by other database objects, such as:

* `PRIMARY KEY`
* `FOREIGN KEY`
* `INDEX`
* `CHECK`
* `UNIQUE`
* Computed columns

These dependencies can prevent the column from being modified.

Depending on the situation, we may need to modify or temporarily remove the dependent object first.

---

# 4. Performance on Large Tables

Modifying a column in a large table can take time.

For example, if a table contains millions of rows, SQL Server may need to process a large amount of data.

This can also cause locks and affect database performance while the operation is running.

---

# Key Takeaway

Modifying a column allows us to change the definition or properties of an existing column.

In SQL Server, the main syntax is:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
```

Before modifying a column, we should always check the existing data and any dependencies.

---

# Summary

| Operation        | SQL Server                               |
| ---------------- | ---------------------------------------- |
| Modify Column    | `ALTER TABLE ... ALTER COLUMN`           |
| Change Data Type | `ALTER COLUMN column_name new_data_type` |
| Allow NULL       | `ALTER COLUMN ... NULL`                  |
| Prevent NULL     | `ALTER COLUMN ... NOT NULL`              |

---

# Common Examples

| Modification     | Example                          |
| ---------------- | -------------------------------- |
| Increase Size    | `NVARCHAR(50)` → `NVARCHAR(100)` |
| Decrease Size    | `NVARCHAR(100)` → `NVARCHAR(50)` |
| Allow NULL       | `NOT NULL` → `NULL`              |
| Prevent NULL     | `NULL` → `NOT NULL`              |
| Change Data Type | `NVARCHAR` → `INT`               |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 47 - SQL Modify Column

---

# المقدمة

فهاد الدرس تعلمنا على:

# تعديل Columns الموجودة فـDatabase Table

تعديل Column كيعني أننا كنبدلو التعريف ديالو ولا شي Properties ديالو وهو موجود أصلاً فـTable.

نقدرو نبدلو مثلاً:

* Data Type
* Size
* Nullability

والطريقة اللي كنستعملو كتختلف حسب الـDatabase Management System (DBMS).

---

# تعديل Column فـDatabases مختلفة

كل Database Management System عندها Syntax مختلفة باش نعدلو Column موجود.

---

# 1. MySQL

MySQL كتستعمل `MODIFY COLUMN` أو `CHANGE COLUMN`.

### تعديل Data Type أو Constraints

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_data_type [constraints];
```

### تغيير الاسم والتعديل فـنفس الوقت

```sql
ALTER TABLE table_name
CHANGE COLUMN old_column_name new_column_name new_data_type [constraints];
```

---

# 2. PostgreSQL

PostgreSQL كتستعمل `ALTER COLUMN` ومعاه أوامر مختلفة حسب شنو بغينا نبدلو.

### تغيير Data Type

```sql
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_data_type;
```

### نخليو Column ماكيقبلش NULL

```sql
ALTER TABLE table_name
ALTER COLUMN column_name SET NOT NULL;
```

### نخليو Column يقبل NULL

```sql
ALTER TABLE table_name
ALTER COLUMN column_name DROP NOT NULL;
```

---

# 3. Oracle

Oracle كتستعمل `MODIFY`.

```sql
ALTER TABLE table_name
MODIFY column_name new_data_type [constraints];
```

---

# تعديل Column فـSQL Server

فـMicrosoft SQL Server كنستعملو:

`ALTER TABLE` + `ALTER COLUMN`

### Syntax

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
```

---

# ملاحظة مهمة

ملي بغينا نعدلو Column فـSQL Server، خاصنا نحددو:

* الـData Type الجديد
* الـSize إلا كان الـData Type كيحتاجو
* واش Column كيقبل `NULL` ولا `NOT NULL`

مثلاً:

```sql
ALTER TABLE Employees
ALTER COLUMN FirstName NVARCHAR(100) NULL;
```

هاد الأمر كيبدل `FirstName` لـ`NVARCHAR(100)` وكيخليه يقبل `NULL`.

---

# مثال كامل

أولاً كنصايبو Table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
```

من بعد كندخلو شي Data:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
('Yassine', 'Amrani'),
('Salma', 'Bennani');
```

دابا غادي نعدلو Column ديال `FirstName`:

```sql
ALTER TABLE Emp
ALTER COLUMN FirstName NVARCHAR(100) NULL;
```

دابا Column تبدل:

* تزاد الـSize من 50 حتى لـ100 characters
* تبدلات من `NOT NULL` لـ`NULL`

---

# إدخال NULL Value

حيت Column ولى كيقبل `NULL`، نقدروا ندخلو:

```sql
INSERT INTO Emp (FirstName, LastName)
VALUES
(NULL, 'El Fassi');
```

---

# التأكد من النتيجة

نقدرو نستعملو `SELECT` باش نشوفو Data:

```sql
SELECT ID, FirstName, LastName
FROM Emp;
```

---

# حوايج مهمة خاصنا ننتابهو ليها

قبل ما نعدلو Column فـProduction Database، خاصنا ننتابهو لشي حوايج مهمة.

---

# 1. Data Truncation و Data Loss

إلا نقصنا الـSize ديال Column، ممكن شي Data موجودة ماعادش تدخل فـSize الجديد.

مثلاً:

```sql
NVARCHAR(100)
```

إلى:

```sql
NVARCHAR(50)
```

إلا كانت شي Value موجودة فيها أكثر من 50 characters، عملية التعديل تقدر تفشل.

ونفس الفكرة إلا بدلنا Data Type لواحد النوع آخر وماكانتـش الـValues الموجودة متوافقة معاه.

مثلاً:

```sql
NVARCHAR
```

إلى:

```sql
INT
```

خاص الـValues الموجودة تكون قابلة للتحويل لـ`INT`.

---

# 2. NULL Values الموجودة

ما نقدروش نبدلو Column من `NULL` لـ`NOT NULL` إلا كان فيه أصلاً شي `NULL` Values.

مثلاً:

```sql
ALTER TABLE Employees
ALTER COLUMN FirstName NVARCHAR(50) NOT NULL;
```

هاد الأمر يقدر يفشل إلا كان شي Row فيه `FirstName = NULL`.

خاصنا الأول نبدلو هاد الـNULL Values لقيم أخرى.

---

# 3. Dependencies

Column يقدر يكون مستعمل من طرف Objects أخرى فـDatabase، بحال:

* `PRIMARY KEY`
* `FOREIGN KEY`
* `INDEX`
* `CHECK`
* `UNIQUE`
* Computed columns

هاد Dependencies يقدرو يمنعو تعديل Column.

وحسب الحالة، ممكن نحتاجو نعدلو ولا نحيدو مؤقتاً الـObject اللي مرتبط بالـColumn قبل ما نديرو التعديل.

---

# 4. Performance فـLarge Tables

إلا كانت Table كبيرة بزاف، تعديل Column يقدر ياخد وقت.

مثلاً، إلا كانت Table فيها الملايين ديال Rows، SQL Server يقدر يحتاج يعالج كمية كبيرة ديال Data.

وهاد العملية تقدر حتى تدير Locks وتـأثر على Performance ديال Database وهي خدامة.

---

# الخلاصة المهمة

Modify Column كيسمح لينا نبدلو التعريف ولا Properties ديال Column موجود أصلاً.

فـSQL Server، الـSyntax الرئيسية هي:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type [NULL | NOT NULL];
```

وقبل ما نعدلو أي Column، خاصنا ديما نشوفو الـData الموجودة والـDependencies المرتبطة بها.

---

# الملخص

| العملية          | SQL Server                               |
| ---------------- | ---------------------------------------- |
| Modify Column    | `ALTER TABLE ... ALTER COLUMN`           |
| Change Data Type | `ALTER COLUMN column_name new_data_type` |
| Allow NULL       | `ALTER COLUMN ... NULL`                  |
| Prevent NULL     | `ALTER COLUMN ... NOT NULL`              |

---

# أمثلة شائعة

| التعديل         | المثال                           |
| --------------- | -------------------------------- |
| زيادة الـSize   | `NVARCHAR(50)` → `NVARCHAR(100)` |
| نقص الـSize     | `NVARCHAR(100)` → `NVARCHAR(50)` |
| السماح بـNULL   | `NOT NULL` → `NULL`              |
| منع NULL        | `NULL` → `NOT NULL`              |
| تغيير Data Type | `NVARCHAR` → `INT`               |

---

# المؤلف

Youness Chergui Amin

</div>
