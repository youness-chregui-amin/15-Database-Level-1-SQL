# Lesson 41 - SQL CREATE TABLE Statement

---

# Introduction

In this lesson, we learned about:

**SQL CREATE TABLE Statement**

The `CREATE TABLE` statement is used to create a new table inside a database.

A table consists of **columns**, and each column has a specific **data type** and can have different constraints.

---

# What is CREATE TABLE?

The `CREATE TABLE` statement is used to create a new table in a database.

The table defines the structure where data will be stored.

---

# Basic Syntax

```sql
CREATE TABLE TableName
(
    Column1 DataType,
    Column2 DataType,
    Column3 DataType,
    ...
);
```

For every column, we must specify:

1. The column name.
2. The data type.
3. Optionally, constraints such as `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, etc.

---

# Main Idea

When creating a table:

* **Column name** specifies the name of the column.
* **Data type** specifies what kind of data the column can store.
* **Constraints** define rules that the data must follow.

For example:

```sql
ID int NOT NULL
```

means:

* `ID` → column name.
* `int` → data type.
* `NOT NULL` → the column cannot contain `NULL`.

---

# SQL Server Data Types

Some commonly used SQL Server data types are:

| Data Type     | Description                          | Example            |
| ------------- | ------------------------------------ | ------------------ |
| `int`         | Integer numbers                      | `25`               |
| `smallint`    | Smaller integer numbers              | `100`              |
| `decimal`     | Exact decimal numbers                | `1500.50`          |
| `smallmoney`  | Currency values with a smaller range | `2500.75`          |
| `varchar(n)`  | Non-Unicode variable-length text     | `'Ahmed'`          |
| `nvarchar(n)` | Unicode variable-length text         | `'Youness'`        |
| `date`        | Date only                            | `2026-09-09`       |
| `datetime`    | Date and time                        | `2026-09-09 10:30` |
| `bit`         | `0` or `1`                           | `1`                |

The data type determines the kind of values that can be stored in a column.

---

# NULL and NOT NULL

When defining a column, we can specify whether it can contain `NULL`.

### NOT NULL

```sql
Name nvarchar(50) NOT NULL
```

This means the `Name` column **must have a value**.

### NULL

```sql
Phone nvarchar(10) NULL
```

This means the `Phone` column is allowed to contain `NULL`.

`NULL` means that a value is **unknown or not provided**.

---

# PRIMARY KEY

A **Primary Key** is used to uniquely identify each row in a table.

Example:

```sql
ID int NOT NULL PRIMARY KEY
```

The Primary Key:

* Must contain unique values.
* Cannot contain `NULL`.
* Identifies each record uniquely.

For example:

| ID | Name    | Phone      |
| -- | ------- | ---------- |
| 1  | Ahmed   | 0612345678 |
| 2  | Youness | 0623456789 |
| 3  | Ali     | 0634567890 |

Each employee has a different `ID`.

---

# Example

Let's create an `Employees` table:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL,
    PRIMARY KEY (ID)
);
```

---

# Explanation

## ID

```sql
ID int NOT NULL
```

* `ID` is the column name.
* `int` stores integer numbers.
* `NOT NULL` means it cannot be empty.
* It is defined as the `PRIMARY KEY`.

The `ID` uniquely identifies each employee.

---

## Name

```sql
Name nvarchar(50) NOT NULL
```

* `Name` is the column name.
* `nvarchar(50)` stores Unicode text.
* The maximum declared length is 50 characters.
* `NOT NULL` means a value must be provided.

---

## Phone

```sql
Phone nvarchar(10) NULL
```

* `Phone` stores text representing the phone number.
* `nvarchar(10)` allows up to 10 characters.
* `NULL` is allowed.

Using a text type for phone numbers is generally appropriate because phone numbers are identifiers, not numbers used for mathematical calculations.

---

## Salary

```sql
Salary smallmoney NULL
```

* `Salary` stores monetary values.
* `smallmoney` is a SQL Server currency data type.
* `NULL` is allowed.

---

# PRIMARY KEY Definition

The Primary Key can be defined separately:

```sql
PRIMARY KEY (ID)
```

So the complete table becomes:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL,
    PRIMARY KEY (ID)
);
```

You can also define it directly on the column:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL
);
```

Both approaches create `ID` as the Primary Key.

---

# Relational Schema

The relational schema of the table can be represented as:

```text
Employees(
    ID PK,
    Name,
    Phone,
    Salary
)
```

Where:

* `Employees` → table name.
* `ID` → Primary Key.
* `Name` → employee name.
* `Phone` → employee phone number.
* `Salary` → employee salary.

---

# Creating the Table in a Specific Database

Before creating a table, make sure you are using the correct database:

```sql
USE CompanyDB;

CREATE TABLE Employees
(
    ID int NOT NULL PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL
);
```

The `USE` statement changes the current database context for the session.

---

# Important Rules

| Rule           | Explanation                     |
| -------------- | ------------------------------- |
| `CREATE TABLE` | Creates a new table             |
| Column name    | Identifies a column             |
| Data type      | Defines the type of data stored |
| `NOT NULL`     | A value must be provided        |
| `NULL`         | A value can be missing/unknown  |
| `PRIMARY KEY`  | Uniquely identifies each row    |
| `nvarchar(n)`  | Stores Unicode text             |
| `int`          | Stores integer numbers          |
| `smallmoney`   | Stores monetary values          |

---

# Key Takeaway

The `CREATE TABLE` statement defines the **structure of a table**.

A table is made up of:

```text
Table
 ├── Columns
 │    ├── Name
 │    ├── Data Type
 │    └── Constraints
 └── Rows
```

The basic form is:

```sql
CREATE TABLE TableName
(
    ColumnName DataType Constraint
);
```

---

# Summary

| Concept           | Meaning                                  |
| ----------------- | ---------------------------------------- |
| `CREATE TABLE`    | Creates a new table                      |
| Column            | Represents one attribute/field           |
| Data Type         | Defines what type of value can be stored |
| `NULL`            | Allows the column to have no value       |
| `NOT NULL`        | Requires a value                         |
| `PRIMARY KEY`     | Uniquely identifies each row             |
| `nvarchar`        | Unicode text                             |
| `int`             | Integer numbers                          |
| `smallmoney`      | Currency values                          |
| Relational Schema | Describes the table structure            |

---

# Author

Youness Chergui Amin

---

---

# الدرس 41 — SQL CREATE TABLE Statement

---

# المقدمة

فهاد الدرس تعلمنا:

**SQL CREATE TABLE Statement**

الأمر `CREATE TABLE` كنستعملوه باش ننشئو **Table جديدة** داخل Database.

الـTable كتكون من مجموعة ديال **Columns**، وكل Column عندو:

* اسم.
* Data Type.
* ويمكن تكون عندو Constraints.

---

# شنو هو CREATE TABLE؟

`CREATE TABLE` هو أمر SQL كنستعملوه باش ننشئو Table جديدة داخل Database.

الـTable كتحدد الـStructure اللي غادي نخزنو فيه البيانات.

---

# الصيغة الأساسية

```sql
CREATE TABLE TableName
(
    Column1 DataType,
    Column2 DataType,
    Column3 DataType,
    ...
);
```

كل Column خاصنا نحددو فيه:

1. اسم الـColumn.
2. الـData Type.
3. ويمكن نزيدو Constraints بحال `PRIMARY KEY` و `NOT NULL`.

---

# الفكرة الرئيسية

ملي كننشئو Table:

* **Column Name** → اسم الـColumn.
* **Data Type** → نوع البيانات اللي غادي تتخزن.
* **Constraints** → القواعد اللي خاص البيانات تحترمها.

مثلاً:

```sql
ID int NOT NULL
```

المعنى:

* `ID` → اسم الـColumn.
* `int` → نوع البيانات.
* `NOT NULL` → ما يمكنش تكون فيه `NULL`.

---

# أنواع البيانات فـ SQL Server

كاينين بزاف ديال Data Types، ومن أهمهم:

| Data Type     | الشرح                             | مثال               |
| ------------- | --------------------------------- | ------------------ |
| `int`         | أعداد صحيحة                       | `25`               |
| `smallint`    | أعداد صحيحة أصغر                  | `100`              |
| `decimal`     | أعداد عشرية دقيقة                 | `1500.50`          |
| `smallmoney`  | قيم مالية                         | `2500.75`          |
| `varchar(n)`  | نصوص Variable-Length بدون Unicode | `'Ahmed'`          |
| `nvarchar(n)` | نصوص Variable-Length مع Unicode   | `'Youness'`        |
| `date`        | التاريخ فقط                       | `2026-09-09`       |
| `datetime`    | التاريخ والوقت                    | `2026-09-09 10:30` |
| `bit`         | `0` أو `1`                        | `1`                |

الـData Type هو اللي كيحدد شنو النوع ديال القيمة اللي نقدروا نخزنو فـColumn.

---

# NULL و NOT NULL

ملي كننشئو Column، نقدروا نحددو واش مسموح ليها تكون `NULL` ولا لا.

## NOT NULL

```sql
Name nvarchar(50) NOT NULL
```

المعنى أن `Name` خاصها تكون عندها قيمة.

## NULL

```sql
Phone nvarchar(10) NULL
```

المعنى أن `Phone` مسموح ليها تكون `NULL`.

و `NULL` كتعني أن القيمة **ما معروفةش أو ما توفراتش**.

---

# PRIMARY KEY

الـ **Primary Key** كنستعملوه باش نميزو كل Row بوحدها داخل الـTable.

مثلاً:

```sql
ID int NOT NULL PRIMARY KEY
```

الـPrimary Key:

* خاص القيم ديالو تكون Unique.
* ما يمكنش تكون `NULL`.
* كتميز كل Record بشكل فريد.

مثلاً:

| ID | Name    | Phone      |
| -- | ------- | ---------- |
| 1  | Ahmed   | 0612345678 |
| 2  | Youness | 0623456789 |
| 3  | Ali     | 0634567890 |

كل Employee عندو `ID` مختلف.

---

# المثال

غادي ننشئو Table سميتها `Employees`:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL,
    PRIMARY KEY (ID)
);
```

---

# الشرح

## ID

```sql
ID int NOT NULL
```

* `ID` هو اسم الـColumn.
* `int` كيخزن أعداد صحيحة.
* `NOT NULL` يعني ما يمكنش تكون القيمة `NULL`.
* وكيتم تعريفو كـ`PRIMARY KEY`.

الـ`ID` كيميز كل Employee بوحدو.

---

## Name

```sql
Name nvarchar(50) NOT NULL
```

* `Name` هو اسم الـColumn.
* `nvarchar(50)` كيخزن Unicode Text.
* الحد المصرح به هو 50 حرف.
* `NOT NULL` يعني خاص تكون عندو قيمة.

---

## Phone

```sql
Phone nvarchar(10) NULL
```

* `Phone` كيخزن رقم الهاتف كنص.
* `nvarchar(10)` كتسمح حتى لـ10 characters.
* `NULL` مسموح.

استعمال Text Type بحال `nvarchar` مناسب لأرقام الهاتف حيث رقم الهاتف هو **Identifier** وماشي رقم غادي نديرو عليه عمليات حسابية.

---

## Salary

```sql
Salary smallmoney NULL
```

* `Salary` كيخزن قيمة مالية.
* `smallmoney` هو Data Type خاص بالقيم المالية فـSQL Server.
* `NULL` مسموح.

---

# تعريف PRIMARY KEY

نقدروا نعرفو الـPrimary Key بطريقة منفصلة:

```sql
PRIMARY KEY (ID)
```

يعني:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL,
    PRIMARY KEY (ID)
);
```

ونقدروا حتى نكتبوه مباشرة مع الـColumn:

```sql
CREATE TABLE Employees
(
    ID int NOT NULL PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL
);
```

الطريقتين كيعطيو `ID` دور الـPrimary Key.

---

# Relational Schema

نقدروا نمثلو الـRelational Schema ديال Table هكا:

```text
Employees(
    ID PK,
    Name,
    Phone,
    Salary
)
```

فين:

* `Employees` → اسم الـTable.
* `ID` → Primary Key.
* `Name` → اسم الموظف.
* `Phone` → رقم الهاتف.
* `Salary` → الراتب.

---

# إنشاء Table داخل Database معينة

قبل ما تنشئ Table، تأكد أنك خدام على الـDatabase الصحيحة:

```sql
USE CompanyDB;

CREATE TABLE Employees
(
    ID int NOT NULL PRIMARY KEY,
    Name nvarchar(50) NOT NULL,
    Phone nvarchar(10) NULL,
    Salary smallmoney NULL
);
```

الأمر `USE` كيبدل الـCurrent Database Context ديال الـSession.

---

# القواعد المهمة

| القاعدة        | الشرح                        |
| -------------- | ---------------------------- |
| `CREATE TABLE` | إنشاء Table جديدة            |
| Column Name    | اسم الـColumn                |
| Data Type      | نوع البيانات اللي غادي تتخزن |
| `NOT NULL`     | خاص تكون قيمة                |
| `NULL`         | مسموح ما تكونش قيمة          |
| `PRIMARY KEY`  | كيميز كل Row بشكل فريد       |
| `nvarchar(n)`  | نص Unicode                   |
| `int`          | أعداد صحيحة                  |
| `smallmoney`   | قيم مالية                    |

---

# الخلاصة المهمة

الأمر `CREATE TABLE` كيحدد **Structure ديال الـTable**.

والـTable كتكون من:

```text
Table
 ├── Columns
 │    ├── Name
 │    ├── Data Type
 │    └── Constraints
 └── Rows
```

والصيغة الأساسية هي:

```sql
CREATE TABLE TableName
(
    ColumnName DataType Constraint
);
```

---

# الملخص

| المفهوم           | المعنى                           |
| ----------------- | -------------------------------- |
| `CREATE TABLE`    | إنشاء Table جديدة                |
| Column            | Attribute أو Field داخل الـTable |
| Data Type         | كيحدد نوع القيمة                 |
| `NULL`            | مسموح ما تكونش قيمة              |
| `NOT NULL`        | خاص تكون قيمة                    |
| `PRIMARY KEY`     | كيميز كل Row بشكل فريد           |
| `nvarchar`        | نص Unicode                       |
| `int`             | أعداد صحيحة                      |
| `smallmoney`      | قيم مالية                        |
| Relational Schema | وصف Structure ديال الـTable      |

---

# الكاتب

Youness Chergui Amin

---

---
