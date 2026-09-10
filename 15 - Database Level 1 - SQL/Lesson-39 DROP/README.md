# Lesson 39 - DROP

---

# Introduction

In this lesson, we learned about:

**DROP Statement**

The `DROP` statement is used in SQL Server to permanently remove database objects such as databases and tables.

---

# What is DROP?

`DROP` is a SQL statement used to **permanently delete an object and its structure** from the database system.

For example, you can use `DROP` to:

* Delete an entire database.
* Delete a table and all of its data.
* Delete multiple tables.
* Delete multiple databases.

---

# Main Idea

The important thing to understand is:

> `DROP` removes the object itself, not just its data.

For example:

```sql
DROP TABLE Employees;
```

This removes:

* The `Employees` table.
* All rows stored inside it.
* The table structure itself.

Similarly:

```sql
DROP DATABASE CompanyDB;
```

removes:

* The `CompanyDB` database.
* All tables inside it.
* All data and other objects inside the database.

---

# DROP DATABASE

To permanently delete a database:

```sql
DROP DATABASE DatabaseName;
```

### Example

```sql
DROP DATABASE CompanyDB;
```

This completely removes `CompanyDB` from SQL Server.

---

# DROP TABLE

To permanently delete a table:

```sql
DROP TABLE TableName;
```

### Example

```sql
DROP TABLE Employees;
```

The `Employees` table and all its data will be removed.

---

# DROP Multiple Databases

In SQL Server, you can drop multiple databases in one statement:

```sql
DROP DATABASE Database1, Database2, Database3;
```

For example:

```sql
DROP DATABASE CompanyDB, StudentDB;
```

Both databases will be removed.

---

# DROP Multiple Tables

You can also drop multiple tables in one statement:

```sql
DROP TABLE Table1, Table2, Table3;
```

Example:

```sql
DROP TABLE Employees, Departments, Projects;
```

All three tables will be removed.

---

# Before and After

| Step | Object              | Status  |
| ---- | ------------------- | ------- |
| 1    | DB1                 | Exists  |
| 2    | `DROP DATABASE DB1` | Dropped |
| 3    | DB1                 | Deleted |

For a table:

| Step | Object                 | Status  |
| ---- | ---------------------- | ------- |
| 1    | Employees              | Exists  |
| 2    | `DROP TABLE Employees` | Dropped |
| 3    | Employees              | Deleted |

---

# DROP vs DELETE vs TRUNCATE

These statements are different:

| Statement  | What it removes   | Structure remains? |
| ---------- | ----------------- | ------------------ |
| `DELETE`   | Rows              | Yes                |
| `TRUNCATE` | All rows          | Yes                |
| `DROP`     | The entire object | No                 |

### Example

Using `DELETE`:

```sql
DELETE FROM Employees;
```

The table still exists, but its rows are removed.

Using `TRUNCATE`:

```sql
TRUNCATE TABLE Employees;
```

All rows are removed, but the table structure remains.

Using `DROP`:

```sql
DROP TABLE Employees;
```

The table itself is removed.

---

# DROP with IF EXISTS

In SQL Server, you can safely check whether an object exists before dropping it.

### Drop a database if it exists

```sql
DROP DATABASE IF EXISTS CompanyDB;
```

### Drop a table if it exists

```sql
DROP TABLE IF EXISTS Employees;
```

This prevents an error when the object does not exist.

---

# Important Warning

`DROP` is a destructive operation.

For example:

```sql
DROP DATABASE CompanyDB;
```

This can permanently remove the database and everything inside it.

Therefore, you should always make sure that you are dropping the correct object.

Before using `DROP DATABASE`, make sure:

* You have the correct database name.
* You do not need the data anymore.
* You have a backup if the data is important.
* You are connected to the correct SQL Server instance.

---

# Important Rules

| Rule                  | Explanation                                    |
| --------------------- | ---------------------------------------------- |
| `DROP DATABASE`       | Removes an entire database                     |
| `DROP TABLE`          | Removes an entire table                        |
| Data is removed       | The object's data is deleted                   |
| Structure is removed  | The object itself no longer exists             |
| `IF EXISTS`           | Prevents an error if the object does not exist |
| Destructive operation | Use `DROP` carefully                           |

---

# Key Takeaway

The `DROP` statement is used to **permanently remove database objects**.

The most important commands are:

```sql
DROP DATABASE DatabaseName;
```

and:

```sql
DROP TABLE TableName;
```

Unlike `DELETE` and `TRUNCATE`, `DROP` removes the **object itself**, including its structure.

---

# Summary

| Concept                   | Meaning                                  |
| ------------------------- | ---------------------------------------- |
| `DROP`                    | Permanently removes a database object    |
| `DROP DATABASE`           | Deletes an entire database               |
| `DROP TABLE`              | Deletes an entire table                  |
| `DROP DATABASE IF EXISTS` | Drops a database only if it exists       |
| `DROP TABLE IF EXISTS`    | Drops a table only if it exists          |
| `DELETE`                  | Removes rows while keeping the table     |
| `TRUNCATE`                | Removes all rows while keeping the table |
| Structure                 | Removed when using `DROP`                |

---

# Author

Youness Chergui Amin

---

---

# الدرس 39 — DROP

---

# المقدمة

في هذا الدرس تعلمنا:

**DROP Statement**

الـ `DROP` هو أمر في SQL Server كيتستعمل باش نحيدو بشكل نهائي بعض العناصر من قاعدة البيانات، بحال:

* Database
* Table

---

# شنو هو DROP؟

`DROP` هو أمر SQL كيتستعمل باش **نحيدو Object بشكل نهائي مع الـStructure ديالو**.

مثلاً نقدر نستعملو باش:

* نحيدو Database كاملة.
* نحيدو Table كاملة.
* نحيدو أكثر من Table.
* نحيدو أكثر من Database.

---

# الفكرة الرئيسية

المهم تفهم أن:

> `DROP` ما كيحيدش غير البيانات، وإنما كيحيد الـObject كامل.

مثلاً:

```sql
DROP TABLE Employees;
```

هاد الأمر كيحيد:

* Table ديال `Employees`.
* جميع البيانات الموجودة فيها.
* Structure ديال الـTable.

وبالمثل:

```sql
DROP DATABASE CompanyDB;
```

كيحيد:

* Database ديال `CompanyDB`.
* جميع الـTables اللي فيها.
* جميع البيانات والـObjects الموجودة فيها.

---

# DROP DATABASE

إلى بغيتي تحيد Database كاملة:

```sql
DROP DATABASE DatabaseName;
```

### مثال

```sql
DROP DATABASE CompanyDB;
```

هاد الأمر كيحيد `CompanyDB` كاملة من SQL Server.

---

# DROP TABLE

إلى بغيتي تحيد Table كاملة:

```sql
DROP TABLE TableName;
```

### مثال

```sql
DROP TABLE Employees;
```

هاد الأمر كيحيد Table ديال `Employees` وجميع البيانات اللي فيها.

---

# حذف أكثر من Database

فـ SQL Server تقدر تحيد أكثر من Database فـ نفس الأمر:

```sql
DROP DATABASE Database1, Database2, Database3;
```

مثال:

```sql
DROP DATABASE CompanyDB, StudentDB;
```

غادي يتحيدو بجوج.

---

# حذف أكثر من Table

نفس الفكرة كتقدر تطبقها على Tables:

```sql
DROP TABLE Table1, Table2, Table3;
```

مثال:

```sql
DROP TABLE Employees, Departments, Projects;
```

غادي يتحيدو الـ3 Tables كاملين.

---

# قبل وبعد DROP

| المرحلة | Object              | الحالة        |
| ------- | ------------------- | ------------- |
| 1       | DB1                 | موجودة        |
| 2       | `DROP DATABASE DB1` | تم حذفها      |
| 3       | DB1                 | لم تعد موجودة |

بالنسبة لـTable:

| المرحلة | Object                 | الحالة        |
| ------- | ---------------------- | ------------- |
| 1       | Employees              | موجودة        |
| 2       | `DROP TABLE Employees` | تم حذفها      |
| 3       | Employees              | لم تعد موجودة |

---

# الفرق بين DROP و DELETE و TRUNCATE

هاد الثلاثة مختلفين:

| الأمر      | شنو كيحيد؟     | واش الـStructure كيبقى؟ |
| ---------- | -------------- | ----------------------- |
| `DELETE`   | Rows           | نعم                     |
| `TRUNCATE` | جميع Rows      | نعم                     |
| `DROP`     | الـObject كامل | لا                      |

### DELETE

```sql
DELETE FROM Employees;
```

كيحيد الـRows، ولكن الـTable كتبقى موجودة.

### TRUNCATE

```sql
TRUNCATE TABLE Employees;
```

كيحيد جميع الـRows، ولكن الـTable والـStructure ديالها كيبقاو.

### DROP

```sql
DROP TABLE Employees;
```

كيحيد الـTable نفسها.

---

# DROP مع IF EXISTS

فـ SQL Server نقدروا نستعملو `IF EXISTS` باش نتأكدو واش الـObject موجود قبل ما نحيدوه.

### Database

```sql
DROP DATABASE IF EXISTS CompanyDB;
```

### Table

```sql
DROP TABLE IF EXISTS Employees;
```

هاد الطريقة كتجنبنا Error إلا كان الـObject أصلاً ما موجودش.

---

# تحذير مهم

`DROP` أمر **مدمر Destructive Operation**.

مثلاً:

```sql
DROP DATABASE CompanyDB;
```

يقدر يحيد Database كاملة وجميع المحتويات ديالها.

لهذا خاصك دائماً تتأكد:

* واش سميّة الـDatabase صحيحة.
* واش فعلاً ما محتاجش البيانات.
* واش عندك Backup إلا كانت البيانات مهمة.
* واش خدام على SQL Server والـDatabase الصحيحة.

---

# القواعد المهمة

| القاعدة         | الشرح                               |
| --------------- | ----------------------------------- |
| `DROP DATABASE` | كيحيد Database كاملة                |
| `DROP TABLE`    | كيحيد Table كاملة                   |
| Data            | كتتحيد مع الـObject                 |
| Structure       | كيتحيد مع الـObject                 |
| `IF EXISTS`     | كيتأكد أن الـObject موجود قبل الحذف |
| Destructive     | خاص تستعمل `DROP` بحذر              |

---

# الخلاصة المهمة

الـ `DROP` كنستعملوه باش **نحيدو Database Objects بشكل نهائي**.

أهم الأوامر:

```sql
DROP DATABASE DatabaseName;
```

و:

```sql
DROP TABLE TableName;
```

والفرق الأساسي هو أن `DELETE` و `TRUNCATE` كيخليو الـTable موجودة، بينما `DROP` كيحيد **الـObject كامل بالـStructure ديالو**.

---

# الملخص

| المفهوم                   | المعنى                         |
| ------------------------- | ------------------------------ |
| `DROP`                    | حذف Database Object بشكل نهائي |
| `DROP DATABASE`           | حذف Database كاملة             |
| `DROP TABLE`              | حذف Table كاملة                |
| `DROP DATABASE IF EXISTS` | حذف Database إلا كانت موجودة   |
| `DROP TABLE IF EXISTS`    | حذف Table إلا كانت موجودة      |
| `DELETE`                  | حذف Rows مع بقاء الـTable      |
| `TRUNCATE`                | حذف جميع Rows مع بقاء الـTable |
| Structure                 | كيتحيد عند استعمال `DROP`      |

---

# الكاتب

Youness Chergui Amin

---

---
