# Lesson 37 - SQL CREATE DATABASE IF NOT EXISTS Statement

---

# Introduction

In this lesson, we learned about:

# Creating Databases Safely with Conditional Logic

The `CREATE DATABASE IF NOT EXISTS` pattern allows us to create a database only when it does not already exist.

This is useful for writing safer and reusable SQL scripts.

It helps database administrators and developers to:

* Avoid errors when a database already exists.

* Write scripts that can be executed multiple times.

* Prevent unnecessary database creation attempts.

* Build more reliable automation and deployment scripts.

---

# What is CREATE DATABASE IF NOT EXISTS?

# CREATE DATABASE IF NOT EXISTS = Conditional Database Creation

In SQL Server, there is no direct syntax such as:

```sql
CREATE DATABASE IF NOT EXISTS database_name;
```

Instead, we can check whether the database exists using `sys.databases` and then execute `CREATE DATABASE`.

The general pattern is:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'database_name'
)
BEGIN
    CREATE DATABASE database_name;
END
```

This means:

> Create the database only if a database with the same name does not already exist.

---

# Why Do We Need This?

If we execute a normal `CREATE DATABASE` statement and the database already exists:

```sql
CREATE DATABASE Koko;
```

SQL Server returns an error because a database named `Koko` already exists.

This can cause problems when:

* Running the same script more than once.

* Preparing development environments.

* Using deployment scripts.

* Working with automated processes.

* Sharing SQL scripts with other developers.

---

# The Solution: Conditional Checking

We can check whether the database exists before creating it.

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

Now:

* If `Koko` does not exist → SQL Server creates it.

* If `Koko` already exists → SQL Server does not execute `CREATE DATABASE`.

---

# Basic Syntax

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'database_name'
)
BEGIN
    CREATE DATABASE database_name;
END
```

---

# Example

## Creating a Database Conditionally

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

### Meaning

* `sys.databases` contains information about databases on the SQL Server instance.

* `WHERE name = 'Koko'` searches for a database named `Koko`.

* `IF NOT EXISTS` checks whether the query returns no matching database.

* If no database is found, `CREATE DATABASE Koko` is executed.

* If the database already exists, the `BEGIN...END` block is skipped.

---

# How It Works

| Step | Action                                      |
| ---- | ------------------------------------------- |
| 1    | Check `sys.databases`                       |
| 2    | Search for the database name                |
| 3    | Check whether a matching row exists         |
| 4    | If no row exists, execute `CREATE DATABASE` |
| 5    | If the database exists, skip the block      |

---

# More Examples

## Example 1: Company Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'CompanyDB'
)
BEGIN
    CREATE DATABASE CompanyDB;
END
```

Creates `CompanyDB` only if it does not already exist.

---

## Example 2: School Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'SchoolDB'
)
BEGIN
    CREATE DATABASE SchoolDB;
END
```

This script can be executed again without attempting to recreate the existing database.

---

## Example 3: Library Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'LibraryDB'
)
BEGIN
    CREATE DATABASE LibraryDB;
END
```

Creates `LibraryDB` only when it does not already exist.

---

# Key Components

| Component                      | Meaning                                                    |
| ------------------------------ | ---------------------------------------------------------- |
| `IF NOT EXISTS`                | Executes the block only when no matching row exists        |
| `sys.databases`                | System catalog view containing information about databases |
| `SELECT 1`                     | Checks for the existence of a matching row                 |
| `WHERE name = 'database_name'` | Searches for a specific database                           |
| `BEGIN...END`                  | Groups multiple SQL statements into one block              |
| `CREATE DATABASE`              | Creates the database                                       |

---

# Safe Repetition

One of the main advantages of this pattern is that the script can be executed multiple times.

For example:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

### First Execution

If `Koko` does not exist:

```text
Database does not exist
        ↓
Condition = TRUE
        ↓
CREATE DATABASE Koko
        ↓
Database created
```

### Second Execution

If `Koko` already exists:

```text
Database exists
        ↓
Condition = FALSE
        ↓
BEGIN...END is skipped
        ↓
No CREATE DATABASE operation
```

---

# Benefits of Using Conditional Creation

| Benefit             | Description                                                   |
| ------------------- | ------------------------------------------------------------- |
| Error Prevention    | Avoids errors caused by trying to create an existing database |
| Safe Repetition     | The script can be executed multiple times                     |
| Automation Friendly | Useful in automated setup and deployment scripts              |
| Reusability         | The same script can be used in different environments         |
| Easier Setup        | Simplifies database initialization                            |
| Better Reliability  | Reduces unnecessary failures during setup                     |

---

# Best Practices

## DO

* Check whether the database exists before creating it.

* Use `sys.databases` when working with SQL Server.

* Use clear and meaningful database names.

* Use conditional logic in reusable setup scripts.

* Test database creation scripts before using them in production.

## DON'T

* Assume that a database does not already exist.

* Run `CREATE DATABASE` blindly in a reusable script.

* Forget the `WHERE name = 'database_name'` condition.

* Ignore permission requirements.

---

# Important Point

The following syntax:

```sql
CREATE DATABASE IF NOT EXISTS Koko;
```

is **not valid SQL Server syntax**.

For SQL Server, use:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

The exact `CREATE DATABASE IF NOT EXISTS` syntax is supported by some other database systems, but SQL Server uses conditional logic instead.

---

# Complete Example

```sql
-- Step 1: Check whether the database exists
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'StudentRecordsDB'
)
BEGIN

    -- Step 2: Create the database if it does not exist
    CREATE DATABASE StudentRecordsDB;

END
```

After the database is created, we can select it:

```sql
USE StudentRecordsDB;
```

Then we can create tables:

```sql
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

---

# Why is Conditional Database Creation Important?

Conditional database creation is useful because it allows us to write scripts that are:

* Safer.

* Reusable.

* Easier to automate.

* Less likely to fail because of an existing database.

* Suitable for development and deployment environments.

---

# Key Takeaway

* SQL Server does not support `CREATE DATABASE IF NOT EXISTS` directly.

* We can use `IF NOT EXISTS` with `sys.databases`.

* If the database does not exist, `CREATE DATABASE` is executed.

* If the database already exists, the creation block is skipped.

* This makes database creation scripts safer and reusable.

---

# Summary

| Concept              | Meaning                                                                  |
| -------------------- | ------------------------------------------------------------------------ |
| `IF NOT EXISTS`      | Checks whether a database does not exist                                 |
| `sys.databases`      | Contains information about SQL Server databases                          |
| `CREATE DATABASE`    | Creates a new database                                                   |
| `BEGIN...END`        | Groups SQL statements                                                    |
| Conditional Creation | Creates a database only when it does not exist                           |
| Safe Repetition      | Allows the script to run multiple times                                  |
| SQL Server           | Uses conditional logic instead of direct `CREATE DATABASE IF NOT EXISTS` |

---

# Author

Youness Chergui Amin

---

---

# الدرس 37 — SQL CREATE DATABASE IF NOT EXISTS Statement

---

# المقدمة

فهاد الدرس، تعلمنا كيفاش:

# ننشئو Database بطريقة آمنة باستعمال Conditional Logic

الـ `CREATE DATABASE IF NOT EXISTS` Pattern كتخلينا ننشئو Database غير إلا ما كانتش موجودة من قبل.

هاد الطريقة مفيدة باش نكتبو SQL Scripts أكثر أماناً وقابلة لإعادة الاستعمال.

كتساعدنا باش:

* نتفاداو Errors إلا كانت Database موجودة.

* نشغلو نفس Script أكثر من مرة.

* منعاودوش نحاولو ننشئو Database موجودة.

* نبنيو Scripts أكثر موثوقية للـ Automation و Deployment.

---

# شنو هو CREATE DATABASE IF NOT EXISTS؟

# CREATE DATABASE IF NOT EXISTS = إنشاء Database بشرط

فـ SQL Server، ما كايناش Syntax مباشرة بحال:

```sql
CREATE DATABASE IF NOT EXISTS database_name;
```

بلاصة منها، كنستعملو `sys.databases` باش نشوفو واش Database موجودة، ومن بعد إلا ما كانتش موجودة كننفذو `CREATE DATABASE`.

الطريقة العامة هي:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'database_name'
)
BEGIN
    CREATE DATABASE database_name;
END
```

المعنى ديالها:

> أنشئ Database غير إلا ما كانتش Database بنفس الاسم موجودة.

---

# علاش محتاجين هاد الطريقة؟

إلى استعملنا `CREATE DATABASE` عادية وDatabase كانت موجودة من قبل:

```sql
CREATE DATABASE Koko;
```

SQL Server غادي يعطينا Error حيت Database سميتها `Koko` موجودة أصلاً.

هادشي يقدر يسبب مشاكل ملي:

* كنشغلو نفس Script أكثر من مرة.

* كنوجدو Development Environment.

* كنستعملو Deployment Scripts.

* كنخدمو مع Automation.

* كنشاركو SQL Scripts مع Developers آخرين.

---

# الحل: Conditional Checking

نقدرو أولاً نشوفو واش Database موجودة قبل ما ننشئوها.

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

دابا:

* إلا `Koko` ما كانتش موجودة → SQL Server غادي ينشئها.

* إلا `Koko` كانت موجودة → SQL Server ما غاديش ينفذ `CREATE DATABASE`.

---

# Basic Syntax

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'database_name'
)
BEGIN
    CREATE DATABASE database_name;
END
```

---

# مثال

## إنشاء Database بشرط

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

### المعنى

* `sys.databases` فيها معلومات على Databases الموجودة فـ SQL Server Instance.

* `WHERE name = 'Koko'` كتقلب على Database سميتها `Koko`.

* `IF NOT EXISTS` كتشوف واش ما كايناش Database مطابقة.

* إلا ما لقات حتى Database، كيتنفذ `CREATE DATABASE Koko`.

* إلا كانت Database موجودة، الـ `BEGIN...END` Block كامل كيتخطى.

---

# كيفاش كتخدم؟

| Step | العملية                                                |
| ---- | ------------------------------------------------------ |
| 1    | كنشوفو `sys.databases`                                 |
| 2    | كنقلبو على Database Name                               |
| 3    | كنشوفو واش كاينة Row مطابقة                            |
| 4    | إلا ما كانتش Row، كننفذو `CREATE DATABASE`             |
| 5    | إلا كانت Database موجودة، كنخليو الـ Block وما كيتنفذش |

---

# أمثلة أخرى

## المثال 1: Company Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'CompanyDB'
)
BEGIN
    CREATE DATABASE CompanyDB;
END
```

كتنشئ `CompanyDB` غير إلا ما كانتش موجودة.

---

## المثال 2: School Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'SchoolDB'
)
BEGIN
    CREATE DATABASE SchoolDB;
END
```

نقدرو نشغلو هاد Script مرة أخرى بلا ما يحاول يعاود ينشئ Database الموجودة.

---

## المثال 3: Library Database

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'LibraryDB'
)
BEGIN
    CREATE DATABASE LibraryDB;
END
```

كتنشئ `LibraryDB` غير إلا ما كانتش موجودة.

---

# المكونات الأساسية

| Component                      | المعنى                                         |
| ------------------------------ | ---------------------------------------------- |
| `IF NOT EXISTS`                | كينفذ الـ Block غير إلا ما كانتش Row مطابقة    |
| `sys.databases`                | System Catalog View فيها معلومات على Databases |
| `SELECT 1`                     | كيتستعمل باش نتحققو من وجود Row مطابقة         |
| `WHERE name = 'database_name'` | كتقلب على Database معينة                       |
| `BEGIN...END`                  | كتجمع مجموعة ديال SQL Statements               |
| `CREATE DATABASE`              | كتنشئ Database جديدة                           |

---

# Safe Repetition

واحد من أهم المميزات ديال هاد الطريقة هو أننا نقدرو نشغلو نفس Script أكثر من مرة.

مثلاً:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

### أول مرة

إلا `Koko` ما كانتش موجودة:

```text
Database ما كايناش
        ↓
Condition = TRUE
        ↓
CREATE DATABASE Koko
        ↓
Database تخلقات
```

### المرة الثانية

إلا `Koko` ولات موجودة:

```text
Database كاينة
        ↓
Condition = FALSE
        ↓
BEGIN...END كيتخطى
        ↓
CREATE DATABASE ما كيتنفذش
```

---

# فوائد Conditional Creation

| الفائدة             | الشرح                                          |
| ------------------- | ---------------------------------------------- |
| Error Prevention    | كتجنب Errors ديال Database الموجودة            |
| Safe Repetition     | نقدروا نشغلو Script أكثر من مرة                |
| Automation Friendly | مفيدة فـ Automation و Deployment               |
| Reusability         | نفس Script تقدر تستعملو فـ Environments مختلفة |
| Easier Setup        | كتسهل إعداد Database                           |
| Better Reliability  | كتقلل من المشاكل أثناء Setup                   |

---

# Best Practices

## DO

* تأكد واش Database موجودة قبل ما تنشئها.

* استعمل `sys.databases` مع SQL Server.

* استعمل أسماء واضحة ومعبرة.

* استعمل Conditional Logic فـ Scripts اللي قابلة لإعادة الاستعمال.

* جرب Scripts قبل ما تستعملها فـ Production.

## DON'T

* ما تفترضش أن Database ما كايناش.

* ما تشغلش `CREATE DATABASE` مباشرة فـ Script قابلة لإعادة الاستعمال بلا Check.

* ما تنساش `WHERE name = 'database_name'`.

* ما تتجاهلش Permissions المطلوبة.

---

# نقطة مهمة

هاد Syntax:

```sql
CREATE DATABASE IF NOT EXISTS Koko;
```

**ماشي Valid Syntax فـ SQL Server.**

فـ SQL Server خاصنا نستعملو:

```sql
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'Koko'
)
BEGIN
    CREATE DATABASE Koko;
END
```

كاينين Database Systems آخرين اللي كيدعمو Syntax ديال `CREATE DATABASE IF NOT EXISTS` مباشرة، ولكن SQL Server كنعتمدو فيه على Conditional Logic.

---

# مثال كامل

```sql
-- Step 1: نشوفو واش Database موجودة
IF NOT EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'StudentRecordsDB'
)
BEGIN

    -- Step 2: ننشئو Database إلا ما كانتش موجودة
    CREATE DATABASE StudentRecordsDB;

END
```

من بعد ما تخلق Database، نقدروا نختاروها:

```sql
USE StudentRecordsDB;
```

ومن بعد نقدروا ننشئو Tables:

```sql
CREATE TABLE Students (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

---

# علاش Conditional Database Creation مهمة؟

حيت كتخلينا نكتبو Scripts اللي كيكونو:

* أكثر أماناً.

* قابلين لإعادة الاستعمال.

* ساهلين فـ Automation.

* أقل عرضة للفشل بسبب Database موجودة.

* مناسبين للـ Development و Deployment Environments.

---

# الخلاصة المهمة

* SQL Server ما كيدعمش `CREATE DATABASE IF NOT EXISTS` مباشرة.

* نقدروا نستعملو `IF NOT EXISTS` مع `sys.databases`.

* إلا Database ما كانتش موجودة، كيتنفذ `CREATE DATABASE`.

* إلا Database كانت موجودة، الـ Creation Block كيتخطى.

* هاد الطريقة كتخلي Database Creation Scripts أكثر أماناً وقابلية لإعادة الاستعمال.

---

# الخلاصة

| Concept              | المعنى                                                               |
| -------------------- | -------------------------------------------------------------------- |
| `IF NOT EXISTS`      | كيتأكد أن Database ما كايناش                                         |
| `sys.databases`      | فيها معلومات على Databases ديال SQL Server                           |
| `CREATE DATABASE`    | كتنشئ Database جديدة                                                 |
| `BEGIN...END`        | كتجمع SQL Statements                                                 |
| Conditional Creation | إنشاء Database غير إلا ما كانتش موجودة                               |
| Safe Repetition      | إمكانية تشغيل Script أكثر من مرة                                     |
| SQL Server           | كيستعمل Conditional Logic بدل `CREATE DATABASE IF NOT EXISTS` مباشرة |

---

# المؤلف

Youness Chergui Amin

---

---
