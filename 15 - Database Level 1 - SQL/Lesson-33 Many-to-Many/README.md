# Lesson 33 - Convert Multivalued Attributes to Relational Schema

---

# Introduction

In this lesson, we learned how to convert:

# Multivalued Attributes

from ERD into Relational Schema.

---

# What is a Multivalued Attribute?

A **Multivalued Attribute** is an attribute that can have **more than one value** for a single entity.

For example:

A **Customer** can have multiple email addresses.

So, `Email` can be a Multivalued Attribute.

---

# The 1st Normal Form Rule

In a relational database, every cell must contain exactly **one atomic value**.

We should NOT store multiple values inside one cell:

```text
CustomerID | FirstName | Email
1          | Youness   | you@example.com, y@example.com
```

This violates the **1st Normal Form (1NF)** rule because the `Email` column contains multiple values.

---

# Simple Idea

For example:

One **Customer** can have many **Email Addresses**.

```text
Customer  --------<  Email

   1                    M
```

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
           ((Email))
               |
        +--------------+
        |   Customer   |
        +--------------+
        | # CustomerID |
        |   FirstName  |
        |   LastName   |
        +--------------+
```

---

# Relational Schema

```sql
Customer(
    CustomerID PK,
    FirstName,
    LastName
)

Customer_Email(
    EmailID PK,
    CustomerID FK,
    Email
)
```

---

# Conversion Rule

To convert a Multivalued Attribute:

1. Create a separate table for the Multivalued Attribute.

2. Move the attribute into the new table as a normal column.

3. Take the PK from the original table.

4. Put it as an FK in the new table.

5. Use a Composite Key or an independent PK to uniquely identify each row.

---

# Example

## Customer

```text
CustomerID
FirstName
LastName
```

---

## Customer_Email

```text
EmailID
CustomerID
Email
```

---

# Data Example

## Customer Table

| CustomerID (PK) | FirstName | LastName |
| --------------- | --------- | -------- |
| 1               | Youness   | Chergui  |
| 2               | Ahmed     | Amine    |

---

## Customer_Email Table

| EmailID (PK) | CustomerID (FK) | Email                                               |
| ------------ | --------------- | --------------------------------------------------- |
| 101          | 1               | [you@example.com](mailto:you@example.com)           |
| 102          | 1               | [you.work@example.com](mailto:you.work@example.com) |
| 103          | 2               | [ahmed@example.com](mailto:ahmed@example.com)       |

Here, Youness has two email addresses:

```text
CustomerID = 1

    ├── you@example.com
    └── you.work@example.com
```

---

# Why is Multivalued Attribute Conversion Important?

It is important because:

* It keeps the database in **1NF**.

* It prevents storing lists inside database cells.

* It makes searching and indexing easier.

* It allows a customer to have multiple email addresses without changing the structure of the main `Customer` table.

* It maintains proper relationships between tables.

* It improves data integrity.

---

# Important Point

# Multivalued Attributes are converted into Separate Tables

The new table contains:

**Parent PK → Foreign Key**

and the Multivalued Attribute becomes a normal column.

For example:

```text
Customer

CustomerID PK
     |
     |
     ↓
CustomerID FK

Customer_Email

Email
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
| Separate Table        | Table created for the Multivalued Attribute |
| PK                    | Primary Key                                 |
| FK                    | Foreign Key                                 |
| CustomerID FK         | References Customer                         |
| Customer_Email        | Stores multiple email addresses             |
| Relationship          | One Customer ↔ Many Emails                  |

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

واحد **Customer** يقدر يكون عندو بزاف ديال **Email Addresses**.

يعني `Email` تقدر تكون Multivalued Attribute.

---

# قاعدة 1NF

فـ Relational Database، كل Cell خاصها تحتوي على **قيمة Atomic وحدة**.

ما خاصناش نخزنو بزاف ديال Values داخل نفس Cell:

```text
CustomerID | FirstName | Email
1          | Youness   | you@example.com, y@example.com
```

هادشي كيخالف قاعدة **1NF**، حيث `Email` فيها أكثر من Value وحدة.

---

# الفكرة ببساطة

مثلاً:

Customer واحد يقدر يكون عندو بزاف ديال Email Addresses.

```text
Customer  --------<  Email

   1                    M
```

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
           ((Email))
               |
        +--------------+
        |   Customer   |
        +--------------+
        | # CustomerID |
        |   FirstName  |
        |   LastName   |
        +--------------+
```

---

# Relational Schema

```sql
Customer(
    CustomerID PK,
    FirstName,
    LastName
)

Customer_Email(
    EmailID PK,
    CustomerID FK,
    Email
)
```

---

# قاعدة التحويل

باش نحولو Multivalued Attribute:

1. كننشئو Table مستقلة للـ Multivalued Attribute.

2. كننقلو الـ Attribute للـ Table الجديدة كـ Column عادية.

3. كناخدو الـ PK ديال الـ Table الأصلية.

4. كنحطوه كـ FK فالـ Table الجديدة.

5. كنستعملو Composite Key أو PK مستقلة باش نميزو كل Row.

---

# مثال

## Customer

```text
CustomerID
FirstName
LastName
```

---

## Customer_Email

```text
EmailID
CustomerID
Email
```

---

# مثال ديال البيانات

## Customer Table

| CustomerID (PK) | FirstName | LastName |
| --------------- | --------- | -------- |
| 1               | Youness   | Chergui  |
| 2               | Ahmed     | Amine    |

---

## Customer_Email Table

| EmailID (PK) | CustomerID (FK) | Email                                               |
| ------------ | --------------- | --------------------------------------------------- |
| 101          | 1               | [you@example.com](mailto:you@example.com)           |
| 102          | 1               | [you.work@example.com](mailto:you.work@example.com) |
| 103          | 2               | [ahmed@example.com](mailto:ahmed@example.com)       |

هنا Youness عندو جوج ديال Email Addresses:

```text
CustomerID = 1

    ├── you@example.com
    └── you.work@example.com
```

---

# علاش تحويل Multivalued Attribute مهم؟

حيت:

* كيخلينا نحترمو **1NF**.

* كيمنعنا نخزنو Lists داخل Database Cells.

* كيخلي البحث والـ Indexing أسهل.

* كيخلي Customer يقدر يكون عندو بزاف ديال Email Addresses بلا ما نبدلو Structure ديال `Customer` Table.

* كيحافظ على العلاقات الصحيحة بين Tables.

* كيحسن Data Integrity.

---

# نقطة مهمة

# Multivalued Attributes كتتحول إلى Tables مستقلة

الـ Table الجديدة كتحتوي على:

**Parent PK → Foreign Key**

والـ Multivalued Attribute كتولي Column عادية.

مثلاً:

```text
Customer

CustomerID PK
     |
     |
     ↓
CustomerID FK

Customer_Email

Email
```

---

# الخلاصة المهمة

إلى كان عندك Multivalued Attribute:

* ❌ ما تخزنش بزاف ديال Values داخل نفس Cell.

* ✅ دير Table مستقلة.

* ✅ نقل الـ Attribute للـ Table الجديدة.

* ✅ جيب Parent PK وحطها FK.

* ✅ استعمل PK أو Composite Key باش تميز كل Row.

---

# الخلاصة

| المفهوم               | المعنى                                 |
| --------------------- | -------------------------------------- |
| Multivalued Attribute | Attribute عندو بزاف ديال Values        |
| 1NF                   | كل Cell فيها قيمة Atomic وحدة          |
| Separate Table        | Table مستقلة للـ Multivalued Attribute |
| PK                    | Primary Key                            |
| FK                    | Foreign Key                            |
| CustomerID FK         | كيرجع لـ Customer                      |
| Customer_Email        | كخزن بزاف ديال Email Addresses         |
| Relationship          | Customer واحد ↔ بزاف Emails            |

---

# المؤلف

Youness Chergui Amin

---
