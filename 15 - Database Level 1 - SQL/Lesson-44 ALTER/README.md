# Lesson 44 - SQL ALTER TABLE Statement

---

# Introduction

## English

In this lesson, we learned about the **SQL ALTER TABLE Statement**.

The `ALTER TABLE` statement is used to modify the structure of an existing database table without dropping and recreating the entire table.

We can use it to:

* Add columns.
* Remove columns.
* Modify column data types.
* Change column nullability.
* Add constraints.
* Remove constraints.

## Darija

فهاد الدرس تعلمنا على **SQL ALTER TABLE Statement**.

الأمر `ALTER TABLE` كنستعملوه باش نبدلو structure ديال table موجودة من قبل، بلا ما نحيدو الـtable كاملة ونعادو نخلقوها.

نقدرو نستعملوه باش:

* نزيدو columns جداد.
* نحيدو columns.
* نبدلو data type ديال column.
* نبدلو `NULL` و `NOT NULL`.
* نزيدو constraints.
* نحيدو constraints.

---

# What is SQL ALTER TABLE?

## English

The SQL `ALTER TABLE` statement is used to modify an existing table.

This is very useful when the database schema needs to change over time.

For example, imagine we already have:

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL
);
```

Later, we decide that we need an `Email` column.

Instead of deleting the table and creating it again, we can simply use:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150);
```

The existing data remains in the table.

> **Important: Data Preservation**

> `ALTER TABLE` normally preserves the existing rows in the table. However, some modifications can fail if they are incompatible with the existing data.

For example, changing a column from `NVARCHAR` to `INT` can fail if existing values cannot be converted to integers.

## Darija

الأمر `ALTER TABLE` كنستعملوه باش نعدلو table موجودة.

هادشي مهم بزاف حيث الـdatabase ديالنا ممكن تتبدل requirements ديالها مع الوقت.

مثلاً عندنا table:

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL
);
```

ومن بعد قررنا نزيدو `Email`.

ما محتاجينش نمسحو الـtable ونعادو نخلقوها، غير نديرو:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150);
```

والـdata اللي كانت موجودة غتبقى.

> **مهم: الحفاظ على البيانات**

> `ALTER TABLE` غالباً كيحافظ على الـrows الموجودة. ولكن بعض التغييرات ممكن تفشل إلا كانت البيانات الموجودة ما متوافقةش مع التغيير الجديد.

مثلاً إلا بغينا نحولو `NVARCHAR` لـ `INT`، والقيم الموجودة ما يمكنش تتحول لأرقام، العملية غتفشل.

---

# Main Commands & Syntax

---

## 1. Add Columns — ADD

### English

To add a new column:

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

Example:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150);
```

We can also add multiple columns:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150),
    PhoneNumber VARCHAR(20);
```

### Darija

باش نزيدو column جديدة كنستعملو `ADD`:

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

مثال:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150);
```

ونقدرو نزيدو أكثر من column فمرة وحدة:

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150),
    PhoneNumber VARCHAR(20);
```

يعني من بعد غتولي table فيها:

```text
CustomerID
CustomerName
Email
PhoneNumber
```

---

# 2. Drop Columns — DROP COLUMN

### English

To remove an existing column:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

Example:

```sql
ALTER TABLE Customers
DROP COLUMN PhoneNumber;
```

We can also remove multiple columns:

```sql
ALTER TABLE Customers
DROP COLUMN Email, PhoneNumber;
```

> **Warning**

> Dropping a column permanently removes the data stored in that column.

### Darija

باش نحيدو column موجودة كنستعملو:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

مثال:

```sql
ALTER TABLE Customers
DROP COLUMN PhoneNumber;
```

ونقدرو نحيدو أكثر من column:

```sql
ALTER TABLE Customers
DROP COLUMN Email, PhoneNumber;
```

> **تحذير**

> إلا حيدتي column، الـdata اللي كانت مخزنة فيها غتتحيد حتى هي.

---

# 3. Modify Column — ALTER COLUMN

### English

In SQL Server, we use `ALTER COLUMN` to change the data type or nullability of an existing column.

Syntax:

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_datatype NULL | NOT NULL;
```

Example:

```sql
ALTER TABLE Customers
ALTER COLUMN PhoneNumber VARCHAR(15) NOT NULL;
```

This changes the column from:

```text
VARCHAR(20)
```

to:

```text
VARCHAR(15) NOT NULL
```

### Darija

فـ SQL Server، إلا بغينا نبدلو datatype ديال column ولا `NULL / NOT NULL` كنستعملو `ALTER COLUMN`.

مثال:

```sql
ALTER TABLE Customers
ALTER COLUMN PhoneNumber VARCHAR(15) NOT NULL;
```

هنا بدلنا:

```text
VARCHAR(20)
```

لـ:

```text
VARCHAR(15) NOT NULL
```

> **Note**

> Syntax ديال تغيير column كيتختلف حسب Database Management System. فـ SQL Server كنستعملو `ALTER COLUMN`.

---

# 4. Add Constraints — ADD CONSTRAINT

### English

We can use `ALTER TABLE` to add constraints to an existing table.

## CHECK Constraint

```sql
ALTER TABLE Customers
ADD CONSTRAINT CK_CustomerAge
CHECK (Age >= 18);
```

This prevents invalid values such as an age below 18.

## UNIQUE Constraint

```sql
ALTER TABLE Customers
ADD CONSTRAINT UC_CustomerEmail
UNIQUE (Email);
```

This prevents duplicate email addresses.

## PRIMARY KEY Constraint

```sql
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (CustomerID);
```

## FOREIGN KEY Constraint

```sql
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
```

## DEFAULT Constraint

In SQL Server:

```sql
ALTER TABLE Customers
ADD CONSTRAINT DF_Customers_Country
DEFAULT 'Morocco' FOR Country;
```

### Darija

نقدرو حتى نزيدو constraints لواحد table موجودة.

### CHECK

```sql
ALTER TABLE Customers
ADD CONSTRAINT CK_CustomerAge
CHECK (Age >= 18);
```

هاد constraint كتحبس القيم اللي ما كتوافقش الشرط، مثلاً age أقل من 18.

### UNIQUE

```sql
ALTER TABLE Customers
ADD CONSTRAINT UC_CustomerEmail
UNIQUE (Email);
```

هادشي كيمنع يكونو جوج customers بنفس Email.

### PRIMARY KEY

```sql
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (CustomerID);
```

### FOREIGN KEY

```sql
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
```

هنا ربطنا `Orders` مع `Customers`.

### DEFAULT

فـ SQL Server:

```sql
ALTER TABLE Customers
ADD CONSTRAINT DF_Customers_Country
DEFAULT 'Morocco' FOR Country;
```

إلا ما دخلناش `Country` عند إضافة row جديدة، SQL Server يقدر يستعمل القيمة الافتراضية:

```text
Morocco
```

---

# 5. Drop Constraints — DROP CONSTRAINT

### English

To remove an existing constraint:

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

Example:

```sql
ALTER TABLE Customers
DROP CONSTRAINT UC_CustomerEmail;
```

This removes the constraint but does not remove the column.

### Darija

باش نحيدو constraint كنستعملو:

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

مثال:

```sql
ALTER TABLE Customers
DROP CONSTRAINT UC_CustomerEmail;
```

هنا غنحيدو الـconstraint، ولكن column `Email` غتبقى موجودة.

---

# Complete Example

## Step 1: Create the Table

### English

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL
);
```

Initially:

```text
CustomerID
CustomerName
```

### Darija

فالأول عندنا table فيها جوج columns:

```text
CustomerID
CustomerName
```

---

## Step 2: Add New Columns

```sql
ALTER TABLE Customers
ADD Email NVARCHAR(150),
    PhoneNumber VARCHAR(20);
```

### Darija

دابا زدنا:

```text
Email
PhoneNumber
```

---

## Step 3: Modify a Column

```sql
ALTER TABLE Customers
ALTER COLUMN PhoneNumber VARCHAR(15) NULL;
```

### Darija

بدلنا `PhoneNumber` من `VARCHAR(20)` لـ `VARCHAR(15)` وخليّناه يقبل `NULL`.

---

## Step 4: Add UNIQUE Constraint

```sql
ALTER TABLE Customers
ADD CONSTRAINT UC_CustomerEmail
UNIQUE (Email);
```

### Darija

دابا `Email` ما يقدرش يكون مكرر.

---

## Step 5: Drop a Column

```sql
ALTER TABLE Customers
DROP COLUMN PhoneNumber;
```

### Darija

وأخيراً حيدنا `PhoneNumber` من table.

---

# Renaming Columns and Tables in SQL Server

## English

In SQL Server, renaming a column or table is not normally done using `ALTER TABLE`.

Instead, SQL Server provides the `sp_rename` system stored procedure.

## 1. Rename a Column

```sql
EXEC sp_rename
    'Customers.CustomerName',
    'FullName',
    'COLUMN';
```

This changes:

```text
CustomerName
```

to:

```text
FullName
```

## 2. Rename a Table

```sql
EXEC sp_rename
    'Customers',
    'Clients';
```

This changes:

```text
Customers
```

to:

```text
Clients
```

> **Warning**

> Renaming database objects can affect stored procedures, views, triggers, application code, and other objects that reference the old name.

## Darija

فـ SQL Server ما كنستعملوش `ALTER TABLE` باش نبدلو اسم column ولا table.

كنستعملو system stored procedure سميتها:

```sql
sp_rename
```

### تبديل اسم Column

```sql
EXEC sp_rename
    'Customers.CustomerName',
    'FullName',
    'COLUMN';
```

يعني:

```text
CustomerName
```

ولات:

```text
FullName
```

### تبديل اسم Table

```sql
EXEC sp_rename
    'Customers',
    'Clients';
```

يعني:

```text
Customers
```

ولات:

```text
Clients
```

> **تحذير**

> إلا بدلنا الاسم، خاصنا ننتابهو للـstored procedures والـviews والـtriggers والكود ديال application اللي ممكن يكون باقي كيستعمل الاسم القديم.

---

# Important Considerations & Best Practices

## 1. Existing Data Compatibility

### English

When changing a column's data type, SQL Server checks whether existing values can be converted.

For example:

```sql
ALTER TABLE Employees
ALTER COLUMN Salary INT;
```

If some existing values cannot be converted to `INT`, the operation can fail.

### Darija

إلا بدلنا datatype، SQL Server كيشوف واش الـdata الموجودة قابلة للتحويل.

مثلاً:

```sql
ALTER TABLE Employees
ALTER COLUMN Salary INT;
```

إلا كانت شي قيم ما يمكنش تتحول لـ`INT`، العملية غتفشل.

---

## 2. Adding NOT NULL Columns

### English

If a table already contains rows, adding a `NOT NULL` column requires SQL Server to have a value for the existing rows.

For example:

```sql
ALTER TABLE Employees
ADD DepartmentID INT NOT NULL;
```

This can fail if the table already contains data.

One solution is to provide a default:

```sql
ALTER TABLE Employees
ADD DepartmentID INT NOT NULL
    CONSTRAINT DF_Employees_DepartmentID DEFAULT 1;
```

### Darija

إلا كانت table فيها data وبغينا نزيدو column جديدة بـ`NOT NULL`، SQL Server خاصو يعرف شنو يحط فهاد column بالنسبة للـrows القديمة.

مثلاً:

```sql
ALTER TABLE Employees
ADD DepartmentID INT NOT NULL;
```

هادشي يقدر يفشل إلا كانت table عامرة بالdata.

نقدرو نعطيو default value:

```sql
ALTER TABLE Employees
ADD DepartmentID INT NOT NULL
    CONSTRAINT DF_Employees_DepartmentID DEFAULT 1;
```

---

# 3. Dropping Columns with Dependencies

### English

You may not be able to drop a column if another database object depends on it.

For example, the column might be used by:

* Foreign Key
* Default Constraint
* Index
* Check Constraint
* Other dependent objects

The dependency may need to be removed first.

### Darija

ماشي ديما نقدروا نحيدو column مباشرة.

ممكن تكون مرتبطة بـ:

* Foreign Key
* Default Constraint
* Index
* Check Constraint
* Objects آخرين

فهاد الحالة خاصنا نتعاملو مع dependency الأول قبل ما نحيدو column.

---

# 4. Performance on Large Tables

### English

`ALTER TABLE` operations on very large tables can require significant work and may acquire locks.

If a table contains millions of rows, schema changes should be planned carefully, especially in production databases.

### Darija

إلا كانت table كبيرة بزاف وفيها ملايين ديال rows، بعض عمليات `ALTER TABLE` تقدر تاخد الوقت وتسبب locks.

خصوصاً فـproduction database، خاصنا نخططو مزيان قبل ما نديرو تغييرات كبيرة.

---

# ALTER TABLE vs DROP TABLE vs TRUNCATE vs DELETE

| Command          | Purpose                 | Existing Data       |
| ---------------- | ----------------------- | ------------------- |
| `ALTER TABLE`    | Modify table structure  | Usually preserved   |
| `DROP TABLE`     | Remove the entire table | Deleted             |
| `TRUNCATE TABLE` | Remove all rows         | Structure preserved |
| `DELETE`         | Remove rows             | Structure preserved |

## Darija

الفرق المهم:

| Command          | شنو كيدير؟                       |
| ---------------- | -------------------------------- |
| `ALTER TABLE`    | كيبدل structure ديال table       |
| `DROP TABLE`     | كيحيد table كاملة                |
| `TRUNCATE TABLE` | كيحيد جميع rows ولكن table كتبقى |
| `DELETE`         | كيحيد rows حسب الشرط             |

مثلاً:

```sql
ALTER TABLE Employees
ADD Email NVARCHAR(150);
```

هنا بدلنا structure والـdata القديمة كتبقى.

ولكن:

```sql
DROP TABLE Employees;
```

هنا table كاملة كتتحيد.

---

# Key Takeaway

## English

The `ALTER TABLE` statement allows us to modify an existing table without recreating it.

The main SQL Server operations are:

```sql
ALTER TABLE ... ADD
```

Add columns or constraints.

```sql
ALTER TABLE ... DROP COLUMN
```

Remove columns.

```sql
ALTER TABLE ... ALTER COLUMN
```

Modify data type or nullability.

```sql
ALTER TABLE ... ADD CONSTRAINT
```

Add constraints.

```sql
ALTER TABLE ... DROP CONSTRAINT
```

Remove constraints.

For renaming:

```sql
EXEC sp_rename ...
```

## Darija

الخلاصة هي أن `ALTER TABLE` كتخلينا نعدلو table موجودة بلا ما نمسحوها ونعادو نخلقوها.

أهم الأوامر:

```sql
ALTER TABLE ... ADD
```

باش نزيدو columns أو constraints.

```sql
ALTER TABLE ... DROP COLUMN
```

باش نحيدو columns.

```sql
ALTER TABLE ... ALTER COLUMN
```

باش نبدلو datatype أو `NULL / NOT NULL`.

```sql
ALTER TABLE ... ADD CONSTRAINT
```

باش نزيدو constraints.

```sql
ALTER TABLE ... DROP CONSTRAINT
```

باش نحيدو constraints.

وباش نبدلو اسم table أو column فـSQL Server:

```sql
EXEC sp_rename ...
```

---

# Summary

## English

In this lesson, we learned:

1. What `ALTER TABLE` is.
2. How to add columns using `ADD`.
3. How to remove columns using `DROP COLUMN`.
4. How to modify columns using `ALTER COLUMN`.
5. How to add constraints using `ADD CONSTRAINT`.
6. How to remove constraints using `DROP CONSTRAINT`.
7. How to rename tables and columns using `sp_rename`.
8. How existing data can affect schema modifications.
9. Why `NOT NULL` columns require special consideration when adding them to tables containing data.
10. Why dependencies and performance should be considered before modifying large tables.

## Darija

فهاد الدرس تعلمنا:

1. شنو هو `ALTER TABLE`.
2. كيفاش نزيدو columns باستعمال `ADD`.
3. كيفاش نحيدو columns باستعمال `DROP COLUMN`.
4. كيفاش نبدلو datatype أو nullability باستعمال `ALTER COLUMN`.
5. كيفاش نزيدو constraints باستعمال `ADD CONSTRAINT`.
6. كيفاش نحيدو constraints باستعمال `DROP CONSTRAINT`.
7. كيفاش نبدلو أسماء tables وcolumns باستعمال `sp_rename`.
8. كيفاش الـdata الموجودة تقدر تأثر على التغييرات.
9. علاش `NOT NULL` خاصها attention إلا كانت table فيها data.
10. علاش خاصنا ننتابهو للـdependencies والـperformance خصوصاً مع tables كبار.

---

# Author

**Youness Chergui Amin**
