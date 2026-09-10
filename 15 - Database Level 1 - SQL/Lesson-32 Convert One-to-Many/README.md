# Lesson 33 - Convert Multivalued Attributes to Relational Schema

---

# Introduction

In this lesson, we learned how to convert:

# Multivalued Attributes

from ERD into Relational Schema.

---

# What is a Multivalued Attribute?

A **Multivalued Attribute** is an attribute that can contain **more than one value** for a single entity.

For example:

A student can have:

* One phone number
* Several phone numbers

So, `Phone` can be a Multivalued Attribute.

---

# Simple Idea

For example:

One **Student** can have many **Phone Numbers**.

```text
Student  --------<  Phone

   1                  M
```

---

# The 1st Normal Form Rule

In a relational database, every cell should contain **one atomic value**.

We should NOT store multiple values inside one cell:

```text
StudentID | Name     | Phone
1         | Mohammed | 07729929, 079882882
```

Instead, we create a separate table for the multivalued attribute.

---

# ERD vs Relational Schema

| ERD                       | Relational Schema        |
| ------------------------- | ------------------------ |
| Multivalued Attribute     | Separate Table           |
| Double Oval               | Table with multiple rows |
| One Entity ↔ Many Values  | One Row ↔ Many Rows      |
| Conceptual Representation | Real Database Structure  |

---

# Example

## ER Diagram

```text
           ((Phone))
               |
        +--------------+
        |   Student    |
        +--------------+
        | # StudentID  |
        |   FirstName  |
        +--------------+
```

---

# Relational Schema

```sql
Student(
    StudentID PK,
    FirstName,
    LastName,
    BirthDate
)

Student_Phone(
    PhoneID PK,
    StudentID FK,
    Phone
)
```

---

# Conversion Rule

To convert a Multivalued Attribute:

1. Create a separate table for the multivalued attribute.

2. Move the multivalued attribute into the new table as a normal column.

3. Take the PK from the original table.

4. Put it as an FK in the new table.

5. Use a Composite Key or an independent PK to uniquely identify each row.

---

# Example

## Student

```text
StudentID
FirstName
LastName
BirthDate
```

---

## Student_Phone

```text
PhoneID
StudentID
Phone
```

---

# Data Example

## Student Table

| StudentID (PK) | FirstName | LastName    | BirthDate  |
| -------------- | --------- | ----------- | ---------- |
| 1              | Mohammed  | Abu-Hadhoud | 1977-11-06 |
| 2              | Ali       | Amjad       | 2000-03-12 |

---

## Student_Phone Table

| PhoneID (PK) | StudentID (FK) | Phone     |
| ------------ | -------------- | --------- |
| 101          | 1              | 07729929  |
| 102          | 1              | 079882882 |
| 103          | 2              | 059939921 |

---

# Why is Multivalued Attribute Conversion Important?

It is important because:

* It keeps the database in **1NF**.
* It prevents storing lists inside database cells.
* It makes searching and indexing easier.
* It allows an entity to have an unlimited number of values.
* It maintains proper relationships between tables.
* It improves data integrity.

---

# Important Point

# Multivalued Attributes are converted into Separate Tables

The new table contains:

**Parent PK → Foreign Key**

and the multivalued attribute becomes a normal column.

For example:

```text
Student

StudentID PK
     |
     |
     ↓
StudentID FK

Student_Phone

Phone
```

---

# Key Takeaway

When you have a Multivalued Attribute:

* Do NOT store multiple values inside one cell.
* Create a separate table.
* Move the attribute into the new table.
* Copy the Parent's PK as an FK.
* Use a PK or Composite Key to identify each row.

---

# Summary

| Concept               | Meaning                                     |
| --------------------- | ------------------------------------------- |
| Multivalued Attribute | Attribute with multiple values              |
| 1NF                   | Every cell contains one atomic value        |
| Separate Table        | Table created for the multivalued attribute |
| PK                    | Primary Key                                 |
| FK                    | Foreign Key                                 |
| StudentID FK          | References Student                          |
| Student_Phone         | Stores multiple phone numbers               |
| Relationship          | One Student ↔ Many Phones                   |

---

# Author

Youness Chergui Amin

---

---

# الدرس 33 — تحويل Multivalued Attributes إلى Relational Schema

---

# المقدمة

فهاد الدرس، غادي نتعلمو كيفاش نحولو:

# Multivalued Attributes

من ERD إلى Relational Schema.

---

# شنو هو Multivalued Attribute؟

**Multivalued Attribute** هو Attribute اللي يقدر يكون عندو **أكثر من Value وحدة** لنفس Entity.

مثلاً:

Student واحد يقدر يكون عندو:

* رقم هاتف واحد
* جوج أرقام
* 3 أرقام
* أو أكثر

يعني `Phone` يقدر يكون Multivalued Attribute.

---

# الفكرة ببساطة

مثلاً:

Student واحد يقدر يكون عندو بزاف ديال Phone Numbers.

```text
Student  --------<  Phone

   1                  M
```

يعني:

**Student واحد → بزاف ديال Phones**

---

# قاعدة 1NF

فـ Relational Database، كل Cell خاصها تحتوي على **قيمة Atomic وحدة**.

ما خاصناش نديرو هكا:

```text
StudentID | Name     | Phone
1         | Mohammed | 07729929, 079882882
```

حيت عندنا جوج ديال أرقام الهاتف داخل نفس Cell.

الحل هو أننا نخرجو `Phone` لــ Table بوحدو.

---

# ERD و Relational Schema

| ERD                       | Relational Schema         |
| ------------------------- | ------------------------- |
| Multivalued Attribute     | Table مستقلة              |
| Double Oval               | Table فيها بزاف ديال Rows |
| Entity وحدة ↔ بزاف Values | Row وحدة ↔ بزاف Rows      |
| Conceptual Representation | Database Structure حقيقية |

---

# مثال

## ER Diagram

```text
           ((Phone))
               |
        +--------------+
        |   Student    |
        +--------------+
        | # StudentID  |
        |   FirstName  |
        +--------------+
```

الـ `Phone` هنا مرسومة بـ **Double Oval**، وهادشي كيعني أنها Multivalued Attribute.

---

# Relational Schema

```sql
Student(
    StudentID PK,
    FirstName,
    LastName,
    BirthDate
)

Student_Phone(
    PhoneID PK,
    StudentID FK,
    Phone
)
```

---

# قاعدة التحويل

باش نحولو Multivalued Attribute:

1. كننشئو Table مستقلة للـ Multivalued Attribute.

2. كننقلو الـ Attribute للـ Table الجديدة.

3. كناخدو الـ PK ديال الـ Parent Table.

4. كنحطوه كـ FK فالـ Table الجديدة.

5. كنستعملو PK مستقلة أو Composite Key باش نميزو كل Row.

---

# مثال

## Student

```text
StudentID
FirstName
LastName
BirthDate
```

---

## Student_Phone

```text
PhoneID
StudentID
Phone
```

---

# مثال ديال البيانات

## Student Table

| StudentID (PK) | FirstName | LastName    | BirthDate  |
| -------------- | --------- | ----------- | ---------- |
| 1              | Mohammed  | Abu-Hadhoud | 1977-11-06 |
| 2              | Ali       | Amjad       | 2000-03-12 |

---

## Student_Phone Table

| PhoneID (PK) | StudentID (FK) | Phone     |
| ------------ | -------------- | --------- |
| 101          | 1              | 07729929  |
| 102          | 1              | 079882882 |
| 103          | 2              | 059939921 |

هنا Mohammed عندو جوج Phones:

```text
StudentID = 1

        ├── 07729929
        └── 079882882
```

---

# علاش تحويل Multivalued Attribute مهم؟

حيت:

* كيخلينا نحترمو **1NF**.
* كيمنعنا نخزنو Lists داخل Cells.
* كيخلي البحث والـ Indexing أسهل.
* كيخلي Student يقدر يكون عندو عدد كبير ديال Phones بلا ما نبدلو Structure ديال Student Table.
* كيحافظ على Data Integrity.
* كيخلق Relationship صحيحة بين Tables.

---

# نقطة مهمة

# Multivalued Attribute كتتحول إلى Table مستقلة

والـ Table الجديدة كتحتوي على:

**Parent PK → Foreign Key**

والـ Multivalued Attribute كتولي Column عادية.

مثلاً:

```text
Student

StudentID PK
     |
     |
     ↓
StudentID FK

Student_Phone

Phone
```

---

# الخلاصة المهمة

إلى كان عندك **Multivalued Attribute**:

* ❌ ما تخزنش بزاف ديال Values فـ Cell وحدة.
* ✅ دير Table جديدة.
* ✅ نقل الـ Attribute للـ Table الجديدة.
* ✅ جيب PK ديال Parent وحطها FK.
* ✅ دير PK أو Composite Key باش تميز كل Row.

---

# الخلاصة

| المفهوم               | المعنى                                 |
| --------------------- | -------------------------------------- |
| Multivalued Attribute | Attribute عندو بزاف ديال Values        |
| 1NF                   | كل Cell فيها قيمة Atomic وحدة          |
| Separate Table        | Table مستقلة للـ Multivalued Attribute |
| PK                    | Primary Key                            |
| FK                    | Foreign Key                            |
| StudentID FK          | كيرجع لـ Student                       |
| Student_Phone         | كخزن بزاف ديال Phone Numbers           |
| Relationship          | Student واحد ↔ بزاف Phones             |

---

# المؤلف

Youness Chergui Amin

---
