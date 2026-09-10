# Lesson 29 - Self Referential to Relational Schema

---

# Introduction

In this lesson, we learned about:

# Self Referential Relationship

A Self Referential Relationship happens when an entity has a relationship with another instance of the **same entity**.

When we convert this relationship into a relational schema, the table contains a **Foreign Key that references its own Primary Key**.

---

# What is a Self Referential Relationship?

# Self Referential Relationship

is a relationship where:

> A record in a table is related to another record in the same table.

This means that the same table plays **both sides of the relationship**.

---

# Simple Idea

Instead of having two different tables:

```text
Manager

Employee
```

we can have only one table:

```text
Employee
```

and use a Foreign Key to indicate which employee is the manager of another employee.

---

# Example

Suppose we have an organization with employees.

An employee can manage other employees.

```text
Employee

├── EmployeeID
├── Name
├── Salary
└── ManagerID
```

Here:

```text
ManagerID → EmployeeID
```

The `ManagerID` references the `EmployeeID` in the **same table**.

---

# Example Data

## Employees

| EmployeeID | Name    | Salary | ManagerID |
| ---------- | ------- | ------ | --------- |
| 101        | Yassine | 12000  | NULL      |
| 102        | Salma   | 8500   | 101       |
| 103        | Hamza   | 7800   | 101       |
| 104        | Lina    | 6500   | 102       |

---

# Understanding the Data

### Yassine

```text
EmployeeID = 101
ManagerID = NULL
```

Yassine doesn't have a manager above him.

---

### Salma

```text
EmployeeID = 102
ManagerID = 101
```

`101` is Yassine's `EmployeeID`.

Therefore:

```text
Salma → Yassine
```

---

### Hamza

```text
EmployeeID = 103
ManagerID = 101
```

Therefore:

```text
Hamza → Yassine
```

---

### Lina

```text
EmployeeID = 104
ManagerID = 102
```

Therefore:

```text
Lina → Salma
```

---

# Relationship Structure

```text
              Employee
             /        \
        Manager      Employee
             \        /
              Self Relationship
```

The important point is that both sides are the **same entity**.

---

# Relational Schema

The relational schema becomes:

```text
Employees(
    EmployeeID PK,
    Name,
    Salary,
    ManagerID FK
)
```

The important part is:

```text
ManagerID FK → EmployeeID PK
```

Both columns belong to the **same table**.

---

# SQL Example

```sql
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10,2),
    ManagerID INT NULL,

    FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);
```

---

# Another Example — Categories

Self Referential relationships are not only used for employees.

They can also be used for categories and subcategories.

For example:

```text
Electronics
   │
   ├── Computers
   │      └── Laptops
   │
   └── Phones
```

All of them can be stored in the same table.

## Categories

| CategoryID | Name        | ParentCategoryID |
| ---------- | ----------- | ---------------- |
| 1          | Electronics | NULL             |
| 2          | Computers   | 1                |
| 3          | Laptops     | 2                |
| 4          | Phones      | 1                |

Here:

```text
ParentCategoryID → CategoryID
```

The Foreign Key references the same table.

---

# Relational Schema

```text
Categories(
    CategoryID PK,
    Name,
    ParentCategoryID FK
)
```

Relationship:

```text
ParentCategoryID FK
        ↓
CategoryID PK
```

---

# Important Point

In a Self Referential Relationship:

# The Foreign Key references the Primary Key of the same table.

For example:

```text
Employees

EmployeeID   ← Primary Key
ManagerID    ← Foreign Key
     │
     └──────── references EmployeeID
```

---

# Why Use Self Referential Relationships?

They are useful when data has a **hierarchical structure**.

Examples:

* Employee → Manager
* Category → Subcategory
* Folder → Subfolder
* Comment → Parent Comment
* Location → Parent Location

---

# Key Takeaway

A Self Referential Relationship occurs when:

> A table contains a Foreign Key that references its own Primary Key.

The most important pattern to remember is:

```text
Same Table
    │
    ├── Primary Key
    │
    └── Foreign Key → Primary Key
```

---

# Summary

| Concept          | Meaning                                  |
| ---------------- | ---------------------------------------- |
| Self Referential | Table relates to itself                  |
| Primary Key      | Uniquely identifies each record          |
| Foreign Key      | References another record                |
| Self Foreign Key | FK references PK in the same table       |
| ManagerID        | Example of a Self Referential FK         |
| ParentCategoryID | Another example of a Self Referential FK |

---

# Author

Youness Chergui Amin

---

---

# الدرس 29 — تحويل Self Referential إلى Relational Schema

---

# المقدمة

فهاد الدرس، غادي نتعلمو على:

# Self Referential Relationship

الـ Self Referential Relationship كتكون ملي واحد الـ Entity كتكون عندها علاقة مع Instance أخرى من **نفس الـ Entity**.

وملي كنحوّلو هاد العلاقة لـ Relational Schema، كنحتاجو Foreign Key داخل نفس الجدول، وهاد الـ Foreign Key كيشير للـ Primary Key ديال نفس الجدول.

---

# شنو هي Self Referential Relationship؟

# Self Referential Relationship

هي علاقة فين:

> واحد الـ Record فـ Table كيكون مرتبط بـ Record آخر فـ نفس الـ Table.

يعني نفس الـ Table كتكون فيها الجهتين ديال العلاقة.

---

# الفكرة ببساطة

بلا ما نديرو جوج Tables:

```text
Manager

Employee
```

نقدرو نديرو غير Table وحدة:

```text
Employee
```

ونستعملو Foreign Key باش نعرفو شكون هو الـ Manager ديال كل Employee.

---

# مثال

نفترضو عندنا شركة فيها Employees.

واحد الـ Employee يقدر يكون Manager ديال Employees آخرين.

```text
Employee

├── EmployeeID
├── Name
├── Salary
└── ManagerID
```

هنا:

```text
ManagerID → EmployeeID
```

الـ `ManagerID` كيشير للـ `EmployeeID` اللي موجود فـ **نفس الجدول**.

---

# مثال على البيانات

## Employees

| EmployeeID | Name    | Salary | ManagerID |
| ---------- | ------- | ------ | --------- |
| 101        | Yassine | 12000  | NULL      |
| 102        | Salma   | 8500   | 101       |
| 103        | Hamza   | 7800   | 101       |
| 104        | Lina    | 6500   | 102       |

---

# فهم البيانات

### Yassine

```text
EmployeeID = 101
ManagerID = NULL
```

Yassine ما عندوش Manager فوق منو.

---

### Salma

```text
EmployeeID = 102
ManagerID = 101
```

الرقم `101` هو `EmployeeID` ديال Yassine.

إذن:

```text
Salma → Yassine
```

يعني Yassine هو Manager ديال Salma.

---

### Hamza

```text
EmployeeID = 103
ManagerID = 101
```

إذن:

```text
Hamza → Yassine
```

---

### Lina

```text
EmployeeID = 104
ManagerID = 102
```

والـ `102` هو `EmployeeID` ديال Salma.

إذن:

```text
Lina → Salma
```

---

# شكل العلاقة

```text
              Employee
             /        \
        Manager      Employee
             \        /
              Self Relationship
```

النقطة المهمة هي أن الجهتين ديال العلاقة هما **نفس الـ Entity**.

---

# Relational Schema

الـ Relational Schema غادي تكون:

```text
Employees(
    EmployeeID PK,
    Name,
    Salary,
    ManagerID FK
)
```

والجزء المهم هو:

```text
ManagerID FK → EmployeeID PK
```

الجوج ديالهم موجودين فـ **نفس الـ Table**.

---

# مثال بـ SQL

```sql
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10,2),
    ManagerID INT NULL,

    FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);
```

---

# مثال آخر — Categories

الـ Self Referential Relationship ماشي غير للـ Employees.

نقدرو نستعملوها حتى مع Categories و Subcategories.

مثلاً:

```text
Electronics
   │
   ├── Computers
   │      └── Laptops
   │
   └── Phones
```

كلشي يقدر يتخزن فـ نفس الـ Table.

## Categories

| CategoryID | Name        | ParentCategoryID |
| ---------- | ----------- | ---------------- |
| 1          | Electronics | NULL             |
| 2          | Computers   | 1                |
| 3          | Laptops     | 2                |
| 4          | Phones      | 1                |

هنا:

```text
ParentCategoryID → CategoryID
```

والـ Foreign Key كيشير لنفس الـ Table.

---

# Relational Schema

```text
Categories(
    CategoryID PK,
    Name,
    ParentCategoryID FK
)
```

العلاقة:

```text
ParentCategoryID FK
        ↓
CategoryID PK
```

---

# نقطة مهمة

فـ Self Referential Relationship:

# الـ Foreign Key كيشير للـ Primary Key ديال نفس الـ Table.

مثلاً:

```text
Employees

EmployeeID   ← Primary Key
ManagerID    ← Foreign Key
     │
     └──────── references EmployeeID
```

---

# علاش كنستعملو Self Referential Relationships؟

كتكون مفيدة ملي البيانات عندها **Hierarchical Structure**، يعني بيانات منظمة على شكل مستويات.

أمثلة:

* Employee → Manager
* Category → Subcategory
* Folder → Subfolder
* Comment → Parent Comment
* Location → Parent Location

---

# الخلاصة المهمة

الـ Self Referential Relationship كتكون ملي:

> Table فيها Foreign Key كيشير للـ Primary Key ديال نفس الـ Table.

أهم Pattern خاصك تحفظ هو:

```text
Same Table
    │
    ├── Primary Key
    │
    └── Foreign Key → Primary Key
```

---

# الخلاصة

| المفهوم          | المعنى                           |
| ---------------- | -------------------------------- |
| Self Referential | Table كتكون عندها علاقة مع راسها |
| Primary Key      | كيميز كل Record بشكل Unique      |
| Foreign Key      | كيشير لـ Record آخر              |
| Self Foreign Key | FK كيشير لـ PK فـ نفس Table      |
| ManagerID        | مثال على Self Referential FK     |
| ParentCategoryID | مثال آخر على Self Referential FK |

---

# المؤلف

Youness Chergui Amin

---
