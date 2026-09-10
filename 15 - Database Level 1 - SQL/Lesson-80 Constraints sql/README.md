# Lesson 80 - Constraints in SQL

---

# Introduction

In this lesson, we learned about:

# SQL Constraints

**Constraints** are rules applied to table columns or tables to enforce data integrity.

They prevent invalid or unwanted data from being inserted or updated in the database.

---

# Main Idea

Constraints can be defined when creating a table or added later using `ALTER TABLE`.

They help protect data quality and enforce business rules at the database level.

---

# Example

Create tables with multiple constraints to ensure data integrity.

---

# Constraints Syntax

### Table with Multiple Constraints

```sql id="7kq3mp"
CREATE TABLE EmployeesTest (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Status VARCHAR(20) DEFAULT 'Active'
);
```

### Simple Students Table

```sql id="f8x2ra"
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT
);
```

### Employees Table with Strict Constraints

```sql id="6mwp2n"
CREATE TABLE EmployeesTest2 (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    Email VARCHAR(200) UNIQUE NOT NULL,
    Salary INT CHECK (Salary > 0)
);
```

---

# Result

```text id="qmx4ob"
PRIMARY KEY  → unique row identifier, no NULLs

NOT NULL     → column cannot be NULL

UNIQUE       → no duplicate values allowed

CHECK        → value must satisfy the condition

DEFAULT      → fallback value when no value is provided
```

---

# Important Rule

```text id="p9r2vt"
Constraints are enforced automatically — you don't call them manually.

If a constraint is violated, the INSERT or UPDATE is rejected.

Multiple constraints can be applied to the same column.
```

---

# Constraint Types

| Constraint  | Purpose                                       |
| ----------- | --------------------------------------------- |
| PRIMARY KEY | Uniquely identifies each row                  |
| NOT NULL    | Ensures the column always has a value         |
| UNIQUE      | Prevents duplicate values                     |
| CHECK       | Requires a value to satisfy a condition       |
| DEFAULT     | Assigns a default value when none is provided |
| FOREIGN KEY | Links data between two tables                 |

---

# Summary

| Concept    | Meaning                              |
| ---------- | ------------------------------------ |
| Constraint | Rule applied to a column or table    |
| Enforced   | Automatically by the database engine |
| Goal       | Maintain data integrity and quality  |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 80 - Constraints في SQL

---

# المقدمة

فهاد الدرس تعلمنا:

# SQL Constraints

**Constraints** هما قواعد كنطبقوها على الأعمدة أو الجداول باش نحافظو على **data integrity**.

كيمنعو البيانات الغلط أو غير المرغوب فيها من أنها تدخل أو تتبدل فـ database.

---

# الفكرة الرئيسية

نقدرو نحددو الـ Constraints ملي كننشئو الـ table، أو نزيدوهم من بعد باستعمال `ALTER TABLE`.

كيعاونو فالحفاظ على جودة البيانات وفرض business rules على مستوى الـ database.

---

# المثال

غادي ننشئو جداول فيهم عدة Constraints باش نضمنو سلامة البيانات.

---

# Constraints Syntax

### Table فيه عدة Constraints

```sql id="2rg5hk"
CREATE TABLE EmployeesTest (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Status VARCHAR(20) DEFAULT 'Active'
);
```

### Students Table بسيطة

```sql id="c53sqz"
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT
);
```

### Employees Table بقيود صارمة

```sql id="9r7e0s"
CREATE TABLE EmployeesTest2 (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    Email VARCHAR(200) UNIQUE NOT NULL,
    Salary INT CHECK (Salary > 0)
);
```

---

# النتيجة

```text id="das25f"
PRIMARY KEY  → معرف فريد لكل صف، وما كيقبلش NULL

NOT NULL     → العمود ما يقدرش يكون NULL

UNIQUE       → ما كيسمحش بالقيم المكررة

CHECK        → القيمة خاصها تحترم الشرط المحدد

DEFAULT      → قيمة افتراضية إلا ما تعطات حتى قيمة
```

---

# القاعدة المهمة

```text id="b6r2qt"
Constraints كيتطبقو أوتوماتيكياً — ما كنحتاجوش نستدعاوهم يدوياً.

إلا خالفات شي قيمة واحد الـ Constraint، الـ INSERT أو UPDATE كيرفضو.

نقدرو نطبقو أكثر من Constraint على نفس الـ column.
```

---

# أنواع Constraints

| Constraint  | الاستعمال                              |
| ----------- | -------------------------------------- |
| PRIMARY KEY | كيعرف كل صف بشكل فريد                  |
| NOT NULL    | كيضمن أن العمود ديما فيه قيمة          |
| UNIQUE      | كيمنع القيم المكررة                    |
| CHECK       | كيفرض على القيمة تحترم شرط معين        |
| DEFAULT     | كيعطي قيمة افتراضية إلا ما تعطاتش قيمة |
| FOREIGN KEY | كيربط البيانات بين جوج جداول           |

---

# الخلاصة

| المفهوم    | المعنى                                     |
| ---------- | ------------------------------------------ |
| Constraint | قاعدة كتطبق على column أو table            |
| Enforced   | كيتطبق أوتوماتيكياً من طرف database engine |
| Goal       | الحفاظ على data integrity وجودة البيانات   |

---

# المؤلف

**Youness Chergui Amin**

</div>
