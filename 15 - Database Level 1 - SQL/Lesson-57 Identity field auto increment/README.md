# Lesson 57 - Identity Field Auto Increment

---

# Introduction

In this lesson, we learned about:

# IDENTITY

`IDENTITY` is a property in SQL Server that automatically generates sequential numeric values for a column, typically used for primary keys.

---

# Main Idea

`IDENTITY(seed, increment)` automatically generates a number for a column whenever a new row is inserted.

You do not need to provide a value for the identity column because SQL Server handles it automatically.

---

# Example

Create a `PersonsNew2` table where `Personid` starts at `10` and increments by `10`.

---

# IDENTITY

```sql
CREATE TABLE PersonsNew2 (
    Personid INT IDENTITY(10, 10) PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT
);

INSERT INTO PersonsNew2 VALUES
('Smith', 'John', 30);
```

---

# Result

```text
(1 row affected)

Personid | LastName | FirstName | Age
10       | Smith    | John      | 30
```

---

# Important Rule

```text
Each table can have only ONE identity column.

You cannot insert explicit values into an identity column
unless you use SET IDENTITY_INSERT ON.
```

---

# IDENTITY Parameters

| Parameter   | Meaning                              |
| ----------- | ------------------------------------ |
| `seed`      | Starting value (default 1)           |
| `increment` | Step value added per row (default 1) |

---

# Summary

| Concept           | Meaning                                    |
| ----------------- | ------------------------------------------ |
| `IDENTITY`        | Auto-generates sequential values           |
| `IDENTITY_INSERT` | Allows manual inserts into identity column |
| Scope             | One identity column per table              |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 57 - Identity Field Auto Increment

---

# المقدمة

فهاد الدرس تعلمنا على:

# IDENTITY

`IDENTITY` هي خاصية فـ SQL Server كتخلي قاعدة البيانات تولد أرقام متسلسلة بشكل تلقائي لواحد الـ column، وغالباً كتستعمل مع الـ Primary Key.

---

# الفكرة الرئيسية

`IDENTITY(seed, increment)` كتولد رقم بشكل تلقائي للـ column مع كل `INSERT` جديد.

ما محتاجش تدخل القيمة ديال هاد الـ column، حيث SQL Server كيتكلف بتوليدها بشكل تلقائي.

---

# المثال

غادي ننشئو table سميتها `PersonsNew2`، بحيث `Personid` تبدا من `10` وكتزيد بـ `10`.

---

# IDENTITY

```sql
CREATE TABLE PersonsNew2 (
    Personid INT IDENTITY(10, 10) PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT
);

INSERT INTO PersonsNew2 VALUES
('Smith', 'John', 30);
```

---

# النتيجة

```text
(1 row affected)

Personid | LastName | FirstName | Age
10       | Smith    | John      | 30
```

يعني `Personid` خذات القيمة `10` بشكل تلقائي.

---

# قاعدة مهمة

```text
كل table يمكن يكون فيها غير ONE identity column.

ما تقدرش تدخل قيمة بشكل يدوي فـ identity column
إلا باستعمال SET IDENTITY_INSERT ON.
```

---

# IDENTITY Parameters

| Parameter   | المعنى                                     |
| ----------- | ------------------------------------------ |
| `seed`      | القيمة اللي غادي يبدا منها (الافتراضية 1)  |
| `increment` | القيمة اللي كتزاد مع كل row (الافتراضية 1) |

---

# الخلاصة

| Concept           | المعنى                                     |
| ----------------- | ------------------------------------------ |
| `IDENTITY`        | كتولد القيم المتسلسلة بشكل تلقائي          |
| `IDENTITY_INSERT` | كتسمح بإدخال قيم يدوياً فـ identity column |
| Scope             | غير identity column وحدة فكل table         |

---

# الكاتب

**Youness Chergui Amin**

</div>
