# Lesson 08 - Constraints in Databases

---

# Introduction

In this lesson, we learned about:

# Constraints

Constraints are rules applied to database tables and columns to protect data integrity and ensure that the stored data is valid and consistent.

---

# What are Constraints?

Constraints are conditions or rules enforced on data inside the database.

They help databases:

* Prevent invalid data
* Maintain consistency
* Protect data integrity
* Reduce errors
* Organize data correctly

Constraints can be applied to:

* Individual columns
* Entire tables

---

# Why Constraints are Important?

Without constraints:

* Duplicate data may appear
* Invalid data may be inserted
* Relationships between tables may break
* Data becomes unreliable

Constraints make the database:

* More secure
* More accurate
* Easier to manage

---

# Types of Constraints

---

# 1. Primary Key Constraint

The **Primary Key Constraint** ensures that each row in a table is uniquely identified.

### Rules

* Must be unique
* Cannot contain NULL
* No duplicate values allowed

---

## Example

| EmployeeID | Name    |
| ---------- | ------- |
| 101        | Yassine |
| 102        | Salma   |

`EmployeeID` is the Primary Key.

---

# 2. Foreign Key Constraint

The **Foreign Key Constraint** creates a relationship between two tables.

It ensures that values in one table exist in another table.

---

## Example

### Departments Table

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 1            | IT             |
| 2            | HR             |

### Employees Table

| Employee | DepartmentID |
| -------- | ------------ |
| Salma    | 1            |
| Omar     | 2            |

An employee cannot have a department that does not exist.

---

# 3. Unique Constraint

The **Unique Constraint** ensures that values in a column are unique across all rows.

### Difference from Primary Key

* Unique allows NULL
* Primary Key does NOT allow NULL

---

## Example

| Email                                             |
| ------------------------------------------------- |
| [yassine@example.com](mailto:yassine@example.com) |
| [salma@example.com](mailto:salma@example.com)     |

Duplicate emails are not allowed.

---

# 4. Not Null Constraint

The **Not Null Constraint** prevents NULL values.

A column with this constraint must always contain data.

---

## Example

| Name   |
| ------ |
| Omar   |
| NULL ❌ |

NULL values are not allowed.

---

# 5. Check Constraint

The **Check Constraint** ensures that data satisfies a specific condition.

---

## Example

```sql
Salary > 0
```

Negative salaries are rejected.

---

# Primary Key vs Unique Constraint

| Primary Key                 | Unique Constraint                   |
| --------------------------- | ----------------------------------- |
| Must be unique              | Must be unique                      |
| Does NOT allow NULL         | Allows NULL                         |
| One primary key per table   | Multiple unique constraints allowed |
| Used for row identification | Used to prevent duplicates          |

---

# Interview Question

# What is the difference between Primary Key and Unique Constraint?

### Answer

* Both enforce uniqueness
* Primary Key does not allow NULL values
* Unique Constraint allows NULL values

---

# Real-World Example

## User Registration System

| Column   | Constraint        |
| -------- | ----------------- |
| UserID   | Primary Key       |
| Email    | Unique            |
| Password | Not Null          |
| Age      | Check (Age >= 18) |

Constraints help keep the system safe and accurate.

---

# Key Takeaway

* Constraints protect database integrity
* They prevent invalid and duplicate data
* Primary Key and Foreign Key are essential for relationships
* Constraints make databases more reliable

---

# Summary

* Constraints are rules applied to database data
* They help maintain accuracy and consistency
* Main constraints:

  * Primary Key
  * Foreign Key
  * Unique
  * Not Null
  * Check
* Constraints are critical in professional database design

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 08 - Constraints فـ Databases

---

# المقدمة

فهاد الدرس تعلمنا على:

# Constraints

Constraints هما مجموعة ديال القواعد اللي كنطبقوها على الـTables والـColumns ديال الـDatabase، باش نحافظو على Data Integrity ونضمنو بلي البيانات اللي كتخزن صحيحة ومتناسقة.

---

# شنو هما Constraints؟

Constraints هما شروط وقواعد كيتفرضو على البيانات داخل الـDatabase.

كيعاونو الـDatabase باش:

</div>

<ul dir="rtl">
  <li>يمنعو البيانات الغير صحيحة</li>
  <li>يحافظو على التناسق ديال البيانات</li>
  <li>يحميو Data Integrity</li>
  <li>ينقصو من الأخطاء</li>
  <li>ينظمو البيانات بشكل صحيح</li>
</ul>

<div dir="rtl" align="right">

Constraints يقدرو يتطبقو على:

</div>

<ul dir="rtl">
  <li>Column واحد</li>
  <li>Table كاملة</li>
</ul>

<div dir="rtl" align="right">

---

# علاش Constraints مهمين؟

إلى ما كانوش Constraints:

</div>

<ul dir="rtl">
  <li>يقدرو يظهرو بيانات مكررة</li>
  <li>يقدرو يدخلو بيانات غير صحيحة</li>
  <li>العلاقات بين الـTables تقدر تخسر</li>
  <li>البيانات تقدر تولي غير موثوقة</li>
</ul>

<div dir="rtl" align="right">

Constraints كيخليو الـDatabase:

</div>

<ul dir="rtl">
  <li>أكثر أماناً</li>
  <li>أكثر دقة</li>
  <li>أسهل فالتسيير</li>
</ul>

<div dir="rtl" align="right">

---

# أنواع Constraints

---

# 1. Primary Key Constraint

**Primary Key Constraint** كتضمن بلي كل Row فـTable عندو تعريف Unique ومختلف على باقي الـRows.

### القواعد

</div>

<ul dir="rtl">
  <li>خاصو يكون Unique</li>
  <li>ما يقدرش يحتوي على NULL</li>
  <li>ممنوع تكون فيه قيم مكررة</li>
</ul>

<div dir="rtl" align="right">

---

## مثال

</div>

| EmployeeID | Name    |
| ---------- | ------- |
| 101        | Yassine |
| 102        | Salma   |

<div dir="rtl" align="right">

`EmployeeID` هو الـPrimary Key.

---

# 2. Foreign Key Constraint

**Foreign Key Constraint** كتخلق علاقة بين جوج Tables.

وكتضمن بلي القيمة اللي كاينة فـTable وحدة خاصها تكون موجودة فالـTable الأخرى.

---

## مثال

### Departments Table

</div>

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 1            | IT             |
| 2            | HR             |

<div dir="rtl" align="right">

### Employees Table

</div>

| Employee | DepartmentID |
| -------- | ------------ |
| Salma    | 1            |
| Omar     | 2            |

<div dir="rtl" align="right">

الـEmployee ما يقدرش يكون تابع لـDepartment ما كايناش.

---

# 3. Unique Constraint

**Unique Constraint** كتضمن بلي القيم الموجودة فـColumn معينة ما تكونش مكررة بين الـRows.

### الفرق بينها وبين Primary Key

</div>

<ul dir="rtl">
  <li>Unique كتسمح بـ NULL</li>
  <li>Primary Key ما كتسمحش بـ NULL</li>
</ul>

<div dir="rtl" align="right">

---

## مثال

</div>

| Email                                             |
| ------------------------------------------------- |
| [yassine@example.com](mailto:yassine@example.com) |
| [salma@example.com](mailto:salma@example.com)     |

<div dir="rtl" align="right">

ما يمكنش يكونو جوج Users عندهم نفس الـEmail.

---

# 4. Not Null Constraint

**Not Null Constraint** كتمنع القيمة تكون NULL.

يعني الـColumn اللي فيها هاد Constraint خاصها ديماً تكون فيها قيمة.

---

## مثال

</div>

| Name   |
| ------ |
| Omar   |
| NULL ❌ |

<div dir="rtl" align="right">

القيم ديال NULL ما مسموحش بها.

---

# 5. Check Constraint

**Check Constraint** كتضمن بلي البيانات كتوافق شرط معين.

---

## مثال

```sql
Salary > 0
```

<div dir="rtl" align="right">

إلى دخلنا Salary سالبة، الـDatabase غادي ترفضها.

---

# Primary Key vs Unique Constraint

</div>

| Primary Key                     | Unique Constraint                 |
| ------------------------------- | --------------------------------- |
| خاصها تكون Unique               | خاصها تكون Unique                 |
| ما كتسمحش بـ NULL               | كتسمح بـ NULL                     |
| كاين Primary Key واحد لكل Table | نقدر يكونو عدة Unique Constraints |
| كتستعمل لتعريف الـRow           | كتستعمل لمنع البيانات المكررة     |

<div dir="rtl" align="right">

---

# سؤال فـ Interview

# شنو الفرق بين Primary Key و Unique Constraint؟

### الجواب

</div>

<ul dir="rtl">
  <li>بجوجهم كيضمنو Uniqueness</li>
  <li>Primary Key ما كتسمحش بـ NULL</li>
  <li>Unique Constraint كتسمح بـ NULL</li>
</ul>

<div dir="rtl" align="right">

---

# مثال من Real World

## User Registration System

</div>

| Column   | Constraint        |
| -------- | ----------------- |
| UserID   | Primary Key       |
| Email    | Unique            |
| Password | Not Null          |
| Age      | Check (Age >= 18) |

<div dir="rtl" align="right">

Constraints كيساعدو باش يبقى الـSystem آمن والبيانات ديالو صحيحة.

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>Constraints كيحميو Data Integrity</li>
  <li>كيمنعو البيانات الغير صحيحة والمكررة</li>
  <li>Primary Key و Foreign Key مهمين بزاف فالعلاقات بين الـTables</li>
  <li>Constraints كيخليو الـDatabase أكثر موثوقية</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>Constraints هما قواعد كتطبق على بيانات الـDatabase</li>
  <li>كيساعدو نحافظو على الدقة والتناسق</li>
  <li>أهم Constraints هما:</li>
</ul>

<div dir="rtl" align="right">

* Primary Key
* Foreign Key
* Unique
* Not Null
* Check

Constraints مهمين بزاف فتصميم الـDatabases بطريقة احترافية.

---

# المؤلف

Youness Chergui Amin

</div>
