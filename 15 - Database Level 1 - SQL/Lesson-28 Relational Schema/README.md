# Lesson 28 - Relational Schema

---

# Introduction

In this lesson, we learned about:

# Relational Schema

Relational Schema represents the structure and design of database tables in relational databases.

It defines:

* Table names
* Columns
* Data types
* Relationships
* Keys

---

# What is Relational Schema?

# Relational Schema

is:

> A collection of relational tables and their associated attributes and relationships.

It describes how the database is organized.

---

# Simple Idea

Relational Schema converts:

# ER Diagram

into:

# Real Database Tables

---

# ERD vs Relational Schema

| ERD               | Relational Schema         |
| ----------------- | ------------------------- |
| Conceptual Design | Logical/Structural Design |
| Visual Diagram    | Database Tables           |
| Relationships     | Keys & Columns            |

---

# Example

## ER Diagram

```text
Customer ---- Places ---- Order
```

---

# Relational Schema

```sql
Customer(CustomerID, Name, Email)

Order(OrderID, OrderDate, CustomerID)
```

Here:

* `CustomerID` is the Primary Key in `Customer`
* `OrderID` is the Primary Key in `Order`
* `CustomerID` in `Order` is a Foreign Key

---

# Relation Schema Components

A Relational Schema contains:

* Relation/Table Name
* Attributes (Columns)
* Domains (Data Types)
* Keys

---

# Example

```sql
Product(
    ProductID PK,
    ProductName,
    Price,
    StockQuantity
)
```

---

# Primary Key and Foreign Key

## Primary Key (PK)

A Primary Key uniquely identifies each record in a table.

Example:

```text
ProductID
```

---

## Foreign Key (FK)

A Foreign Key connects one table to another table.

Example:

```text
CustomerID
```

inside the `Order` table can reference:

```text
Customer(CustomerID)
```

---

# 🎯 Why Relational Schema is Important?

Relational Schema helps developers:

* Design database tables
* Implement databases
* Organize data professionally
* Define relationships clearly
* Identify Primary Keys and Foreign Keys

---

# Important Point

# ER Diagram

is mainly used to describe the database conceptually.

While:

# Relational Schema

describes the structure of the database using tables, columns, and keys.

---

# ERD to Relational Schema

Database designers usually start with:

# ER Diagram

then convert it into:

# Relational Schema

before implementing the database.

---

# Example of Conversion

## ER Diagram

```text
Customer ---- Places ---- Order
```

The relationship is:

```text
One Customer → Many Orders
```

The Relational Schema becomes:

```sql
Customer(CustomerID, Name)

Order(OrderID, OrderDate, CustomerID)
```

The `CustomerID` in `Order` connects each order to its customer.

---

# Summary

| Concept           | Meaning                  |
| ----------------- | ------------------------ |
| ERD               | Visual conceptual model  |
| Relational Schema | Database table structure |
| Attribute         | Column                   |
| Relation          | Table                    |
| PK                | Primary Key              |
| FK                | Foreign Key              |

---

# Key Takeaway

Relational Schema describes how an ER Diagram is transformed into a structured set of database tables.

It defines the tables, columns, keys, and relationships needed to implement the database.

---

# Author

Youness Chergui Amin

---

---

# الدرس 28 — Relational Schema

---

# المقدمة

فهاد الدرس، غادي نتعلمو على:

# Relational Schema

الـ Relational Schema كيمثل البنية والتصميم ديال جداول قاعدة البيانات فـ Relational Databases.

وكيحدد:

* أسماء الجداول
* الأعمدة
* أنواع البيانات
* العلاقات
* المفاتيح

---

# شنو هو Relational Schema؟

# Relational Schema

هو:

> مجموعة ديال الجداول العلاقية والـ Attributes والعلاقات المرتبطة بها.

كيشرح لينا كيفاش قاعدة البيانات منظمة.

---

# الفكرة ببساطة

الـ Relational Schema كيحوّل:

# ER Diagram

إلى:

# جداول حقيقية فـ Database

---

# ERD vs Relational Schema

| ERD           | Relational Schema    |
| ------------- | -------------------- |
| تصميم مفاهيمي | تصميم منطقي وهيكلي   |
| Diagram مرئي  | جداول قاعدة البيانات |
| العلاقات      | المفاتيح والأعمدة    |

---

# مثال

## ER Diagram

```text
Customer ---- Places ---- Order
```

---

# Relational Schema

```sql
Customer(CustomerID, Name, Email)

Order(OrderID, OrderDate, CustomerID)
```

هنا:

* `CustomerID` هو الـ Primary Key فـ `Customer`
* `OrderID` هو الـ Primary Key فـ `Order`
* `CustomerID` اللي كاين فـ `Order` هو Foreign Key

---

# مكونات Relational Schema

الـ Relational Schema كتحتوي على:

* اسم الـ Relation/Table
* Attributes (Columns)
* Domains (Data Types)
* Keys

---

# مثال

```sql
Product(
    ProductID PK,
    ProductName,
    Price,
    StockQuantity
)
```

---

# Primary Key و Foreign Key

## Primary Key (PK)

الـ Primary Key هو Attribute كيستعمل باش نميزو كل Record بشكل فريد داخل الجدول.

مثال:

```text
ProductID
```

---

## Foreign Key (FK)

الـ Foreign Key هو Attribute كيستعمل باش يربط جدول بجدول آخر.

مثال:

```text
CustomerID
```

داخل جدول `Order` يقدر يشير إلى:

```text
Customer(CustomerID)
```

---

# علاش Relational Schema مهم؟

الـ Relational Schema كيساعد Developers على:

* تصميم جداول قاعدة البيانات
* تطبيق قاعدة البيانات
* تنظيم البيانات بطريقة احترافية
* تحديد العلاقات بشكل واضح
* معرفة الـ Primary Keys والـ Foreign Keys

---

# نقطة مهمة

# ER Diagram

كيستعمل بالأساس باش نوصفو قاعدة البيانات من الناحية المفاهيمية.

بينما:

# Relational Schema

كيصف البنية ديال قاعدة البيانات باستعمال الجداول والأعمدة والمفاتيح.

---

# من ERD إلى Relational Schema

عادةً Database Designers كيبداو بـ:

# ER Diagram

ومن بعد كيحوّلوه إلى:

# Relational Schema

قبل ما يتم تنفيذ قاعدة البيانات.

---

# مثال على التحويل

## ER Diagram

```text
Customer ---- Places ---- Order
```

العلاقة هي:

```text
One Customer → Many Orders
```

والـ Relational Schema كيولي:

```sql
Customer(CustomerID, Name)

Order(OrderID, OrderDate, CustomerID)
```

الـ `CustomerID` اللي فـ `Order` كيربط كل Order بالـ Customer ديالو.

---

# الخلاصة

| المفهوم           | المعنى                    |
| ----------------- | ------------------------- |
| ERD               | نموذج مفاهيمي مرئي        |
| Relational Schema | بنية جداول قاعدة البيانات |
| Attribute         | Column                    |
| Relation          | Table                     |
| PK                | Primary Key               |
| FK                | Foreign Key               |

---

# الخلاصة المهمة

الـ Relational Schema كيوضح لينا كيفاش كنحوّلو ER Diagram إلى مجموعة منظمة ديال جداول قاعدة البيانات.

وكيحدد الجداول، الأعمدة، المفاتيح، والعلاقات اللي خاصنا باش ننفذو قاعدة البيانات.

---

# المؤلف

Youness Chergui Amin

---
