# Lesson 18 - One-To-Many / Many-To-One Relationship

---

# Introduction

In this lesson, we learned about:

# One-To-Many and Many-To-One Relationships

These relationships are among the most important relationship types used in relational databases.

They help organize data and connect tables together correctly.

---

# What is One-To-Many Relationship?

# One-To-Many (1:M)

A One-To-Many relationship happens when:

> One record in an entity is associated with multiple records in another entity.

---

# Example

## Department & Employees

```text id="m8x2qa"
Department ----< Employees

    1               M
```

* One department can have many employees
* Each employee belongs to only one department

---

# Real Meaning

The relationship starts from:

# One Department → Many Employees

---

# What is Many-To-One Relationship?

# Many-To-One (M:1)

A Many-To-One relationship happens when:

> Multiple records are related to one record in another entity.

---

# Example

## Employees & Department

```text id="v5n7kt"
Employees >---- Department

    M                 1
```

* Many employees belong to one department
* One department can contain many employees

---

# Important Note

# One-To-Many and Many-To-One

are actually the same relationship viewed from different directions.

For example:

```text
Department ----< Employees
     1                M
```

From Department's perspective → **One-To-Many**

From Employee's perspective → **Many-To-One**

---

# Real-World Examples

---

# 1. Author & Books

```text id="z2k9wr"
Author ----< Books

  1             M
```

* One author can write many books
* Each book belongs to one author

---

# 2. Company & Employees

```text id="r4m1xp"
Company ----< Employees

   1                M
```

* One company can have many employees
* Each employee works for one company

---

# 3. Country & Cities

```text id="y8q6na"
Country ----< Cities

   1              M
```

* One country can contain many cities
* Each city belongs to one country

---

# Self Relationship

---

# What is Self Relationship?

A Self Relationship occurs when:

> An entity has a relationship with itself.

---

# Example

## Employee manages Employee

```text id="k3v8mt"
Employee ---- Manages ---- Employee

    1                         M
```

* One manager can manage many employees
* Each employee can have one manager

---

# Database Example

| ID | Name  | Salary | ManagerID |
| -- | ----- | ------ | --------- |
| 1  | Karim | 8000   | NULL      |
| 2  | Sara  | 6000   | 1         |
| 3  | Hamza | 4500   | 1         |
| 4  | Lina  | 4000   | 2         |

`ManagerID` acts as a Foreign Key referencing the same table.

---

# Advantages of One-To-Many Relationships

* Better database organization
* Reduced data redundancy
* Easier data management
* Improved relational design
* More scalable systems

---

# Key Takeaway

One-To-Many relationships are among the most commonly used relationships in relational databases.

They are essential for building professional database systems.

---

# Summary

| Relationship      | Description                        |
| ----------------- | ---------------------------------- |
| One-To-Many (1:M) | One record relates to many records |
| Many-To-One (M:1) | Many records relate to one record  |
| Self Relationship | Entity relates to itself           |

---

# Common Examples

| Example                | Relationship      |
| ---------------------- | ----------------- |
| Department → Employees | 1:M               |
| Company → Employees    | 1:M               |
| Manager → Employees    | Self Relationship |
| Country → Cities       | 1:M               |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 18 - One-To-Many / Many-To-One Relationship

---

# المقدمة

فهاد الدرس تعلمنا على:

# One-To-Many و Many-To-One Relationships

هاد العلاقات من بين أهم أنواع العلاقات اللي كنستعملو فـRelational Databases.

وكتعاوننا ننظمو البيانات ونربطو Tables مع بعضياتهم بطريقة صحيحة.

---

# شنو هي One-To-Many Relationship؟

# One-To-Many (1:M)

One-To-Many Relationship كتكون ملي:

> Record واحد فـEntity كيكون مرتبط مع بزاف ديال Records فـEntity أخرى.

---

# مثال

## Department و Employees

```text
Department ----< Employees

    1               M
```

</div>

<ul>
  <li>• Department واحد يقدر يكون فيه بزاف ديال Employees</li>
  <li>• كل Employee كينتمي غير لـDepartment واحد</li>
</ul>

<div dir="rtl" align="right">

---

# المعنى الحقيقي

العلاقة كنبداو نشوفوها من:

# One Department → Many Employees

---

# شنو هي Many-To-One Relationship؟

# Many-To-One (M:1)

Many-To-One Relationship كتكون ملي:

> بزاف ديال Records كيكونو مرتبطين بـRecord واحد فـEntity أخرى.

---

# مثال

## Employees و Department

```text
Employees >---- Department

    M                 1
```

</div>

<ul>
  <li>• بزاف ديال Employees كينتميو لـDepartment واحد</li>
  <li>• Department واحد يقدر يكون فيه بزاف ديال Employees</li>
</ul>

<div dir="rtl" align="right">

---

# ملاحظة مهمة

# One-To-Many و Many-To-One

فالحقيقة هما نفس العلاقة، غير كنشوفوها من جوج اتجاهات مختلفين.

مثلاً:

```text
Department ----< Employees
     1                M
```

من جهة Department → **One-To-Many**

ومن جهة Employee → **Many-To-One**

---

# أمثلة من الواقع

---

# 1. Author و Books

```text
Author ----< Books

  1             M
```

</div>

<ul>
  <li>• Author واحد يقدر يكتب بزاف ديال Books</li>
  <li>• كل Book تابع لـAuthor واحد</li>
</ul>

<div dir="rtl" align="right">

---

# 2. Company و Employees

```text
Company ----< Employees

   1                M
```

</div>

<ul>
  <li>• Company وحدة تقدر يكون فيها بزاف ديال Employees</li>
  <li>• كل Employee كيخدم مع Company وحدة</li>
</ul>

<div dir="rtl" align="right">

---

# 3. Country و Cities

```text
Country ----< Cities

   1              M
```

</div>

<ul>
  <li>• Country وحدة تقدر يكون فيها بزاف ديال Cities</li>
  <li>• كل City كتنتمي لـCountry وحدة</li>
</ul>

<div dir="rtl" align="right">

---

# Self Relationship

---

# شنو هي Self Relationship؟

Self Relationship كتكون ملي:

> Entity كتكون عندها Relationship مع راسها.

---

# مثال

## Employee كيدير Manage لـEmployee

```text
Employee ---- Manages ---- Employee

    1                         M
```

</div>

<ul>
  <li>• Manager واحد يقدر يسير بزاف ديال Employees</li>
  <li>• كل Employee يقدر يكون عندو Manager واحد</li>
</ul>

<div dir="rtl" align="right">

---

# مثال فـDatabase

| ID | Name  | Salary | ManagerID |
| -- | ----- | ------ | --------- |
| 1  | Karim | 8000   | NULL      |
| 2  | Sara  | 6000   | 1         |
| 3  | Hamza | 4500   | 1         |
| 4  | Lina  | 4000   | 2         |

`ManagerID` كتخدم كـForeign Key وكتشير لنفس الـTable.

---

# المزايا ديال One-To-Many Relationships

</div>

<ul>
  <li>• تنظيم أحسن للبيانات</li>
  <li>• تقليل تكرار البيانات</li>
  <li>• تسهيل إدارة البيانات</li>
  <li>• تحسين تصميم قاعدة البيانات</li>
  <li>• إمكانية بناء Systems قابلة للتوسع</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

One-To-Many Relationships من بين أكثر العلاقات استعمالاً فـRelational Databases.

وهي مهمة بزاف فبناء Database Systems احترافية.

---

# الملخص

</div>

| Relationship      | الوصف                                   |
| ----------------- | --------------------------------------- |
| One-To-Many (1:M) | Record واحد مرتبط مع بزاف ديال Records  |
| Many-To-One (M:1) | بزاف ديال Records مرتبطين بـRecord واحد |
| Self Relationship | Entity مرتبطة براسها                    |

<div dir="rtl" align="right">

---

# أمثلة شائعة

</div>

| المثال                 | Relationship      |
| ---------------------- | ----------------- |
| Department → Employees | 1:M               |
| Company → Employees    | 1:M               |
| Manager → Employees    | Self Relationship |
| Country → Cities       | 1:M               |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
