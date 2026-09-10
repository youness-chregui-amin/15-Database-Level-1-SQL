# Lesson 21 - Cardinality Symbols and Practices

---

# Introduction

In this lesson, we learned about:

# Cardinality Symbols and Practices

Cardinality symbols are used in ER Diagrams to represent relationships between entities and show:

* Minimum participation
* Maximum participation
* Relationship rules

These symbols help database designers create accurate and professional database structures.

---

# What is Cardinality?

Cardinality describes:

> The maximum number of relationships between entities.

---

# What is Ordinality?

Ordinality describes:

> The minimum participation in a relationship.

It tells us whether the relationship is:

* Optional
* Mandatory

---

# Relationship Representation

Relationships can be represented using:

# (MIN, MAX)

---

# Example 1

## Library & Books

```text
Library (0,M) ---- Contains ---- (1,1) Book
```

### Meaning

* A library may contain zero or many books
* Each book must belong to one library

---

# Example 2

## Company & Employees

```text
Company (1,1) ---- Employs ---- (1,M) Employee
```

### Meaning

## Company (1,1)

* A company must exist
* The relationship starts from one company

## Employee (1,M)

* A company must have at least one employee
* A company can have many employees

---

# Common Cardinality Symbols

| Symbol | Meaning        |
| ------ | -------------- |
| (0,1)  | Optional One   |
| (1,1)  | Mandatory One  |
| (0,M)  | Optional Many  |
| (1,M)  | Mandatory Many |

---

# Cardinality Notation Types

There are multiple ways to represent relationships in ERD.

---

# 1. Min-Max Notation

Uses:

```text
(MIN, MAX)
```

Example:

```text
(0,M)
```

This means:

* Minimum = 0
* Maximum = Many

---

# 2. Crow's Foot Notation

Crow's Foot is one of the most popular ERD notations.

It uses different symbols to represent:

* One
* Many
* Optional
* Mandatory

---

# Crow's Foot Symbols

```text
| = One

< = Many

O = Optional
```

---

# Crow's Foot Relationship Examples

---

# One-To-One

```text
|----|
```

One record is related to one record.

---

# One-To-Many

```text
|----<
```

One record can be related to many records.

---

# Many-To-Many

```text
>----<
```

Many records can be related to many records.

---

# Optional One

```text
O----|
```

The relationship is optional, but if it exists, there can be only one.

---

# Optional Many

```text
O----<
```

The relationship is optional and can contain many records.

---

# Why Cardinality Symbols are Important?

They help database designers:

* Understand relationships clearly
* Design databases professionally
* Avoid relationship mistakes
* Build scalable systems
* Apply business rules correctly

---

# Key Takeaway

Cardinality and Ordinality define:

* How many relationships are allowed
* Whether participation is optional or mandatory
* The minimum and maximum participation of an entity

They are essential for professional ER Diagram design.

---

# Summary

| Concept     | Meaning              |
| ----------- | -------------------- |
| Cardinality | Maximum relationship |
| Ordinality  | Minimum relationship |
| (0,1)       | Optional One         |
| (1,1)       | Mandatory One        |
| (0,M)       | Optional Many        |
| (1,M)       | Mandatory Many       |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 21 - Cardinality Symbols و Practices

---

# المقدمة

فهاد الدرس تعلمنا على:

# Cardinality Symbols و Practices

Cardinality Symbols هما الرموز اللي كنستعملو فـER Diagrams باش نمثلو العلاقات بين Entities، وكيبينو لينا:

</div>

<ul>
  <li>• أقل عدد ديال المشاركة</li>
  <li>• أكبر عدد ديال المشاركة</li>
  <li>• القواعد ديال العلاقة</li>
</ul>

<div dir="rtl" align="right">

هاد الرموز كيساعدو Database Designers يصممو Database Structure بطريقة صحيحة ومنظمة.

---

# شنو هي Cardinality؟

Cardinality كتعني:

> أكبر عدد ممكن ديال العلاقات بين Entities.

---

# شنو هي Ordinality؟

Ordinality كتعني:

> أقل عدد ممكن ديال المشاركة فـRelationship.

وكتوضح واش العلاقة:

</div>

<ul>
  <li>• Optional — اختيارية</li>
  <li>• Mandatory — إجبارية</li>
</ul>

<div dir="rtl" align="right">

---

# تمثيل Relationship

العلاقات نقدروا نمثلوها باستعمال:

# (MIN, MAX)

---

# مثال 1

## Library و Books

```text
Library (0,M) ---- Contains ---- (1,1) Book
```

### المعنى

</div>

<ul>
  <li>• Library تقدر ما يكون فيها حتى Book</li>
  <li>• أو تقدر يكون فيها بزاف ديال Books</li>
  <li>• كل Book خاصها تكون تابعة لـLibrary وحدة</li>
</ul>

<div dir="rtl" align="right">

---

# مثال 2

## Company و Employees

```text
Company (1,1) ---- Employs ---- (1,M) Employee
```

### المعنى

## Company (1,1)

</div>

<ul>
  <li>• Company خاصها تكون موجودة</li>
  <li>• العلاقة كتكون مع Company وحدة</li>
</ul>

<div dir="rtl" align="right">

## Employee (1,M)

</div>

<ul>
  <li>• Company خاص يكون فيها على الأقل Employee واحد</li>
  <li>• وتقدر يكون فيها بزاف ديال Employees</li>
</ul>

<div dir="rtl" align="right">

---

# الرموز الشائعة ديال Cardinality

</div>

| الرمز | المعنى       |
| ----- | ------------ |
| (0,1) | واحد اختياري |
| (1,1) | واحد إجباري  |
| (0,M) | بزاف اختياري |
| (1,M) | بزاف إجباري  |

<div dir="rtl" align="right">

---

# أنواع Cardinality Notation

كاينين طرق مختلفة باش نمثلو Relationships فـERD.

---

# 1. Min-Max Notation

كتستعمل:

```text
(MIN, MAX)
```

مثال:

```text
(0,M)
```

هادشي كيعني:

</div>

<ul>
  <li>• Minimum = 0</li>
  <li>• Maximum = Many</li>
</ul>

<div dir="rtl" align="right">

---

# 2. Crow's Foot Notation

Crow's Foot هي وحدة من أشهر الطرق المستعملة فتمثيل ERD.

كتستعمل رموز مختلفة باش تبين:

</div>

<ul>
  <li>• One</li>
  <li>• Many</li>
  <li>• Optional</li>
  <li>• Mandatory</li>
</ul>

<div dir="rtl" align="right">

---

# رموز Crow's Foot

```text
| = One

< = Many

O = Optional
```

---

# أمثلة ديال Crow's Foot Relationships

---

# One-To-One

```text
|----|
```

Record واحد مرتبط بـRecord واحد.

---

# One-To-Many

```text
|----<
```

Record واحد يقدر يكون مرتبط مع بزاف ديال Records.

---

# Many-To-Many

```text
>----<
```

بزاف ديال Records يقدرو يكونو مرتبطين مع بزاف ديال Records.

---

# Optional One

```text
O----|
```

العلاقة اختيارية، ولكن إلا كانت موجودة كتكون غير مع Record واحد.

---

# Optional Many

```text
O----<
```

العلاقة اختيارية وتقدر تكون مع بزاف ديال Records.

---

# علاش Cardinality Symbols مهمين؟

كيعاونو Database Designers:

</div>

<ul>
  <li>• يفهمو Relationships بوضوح</li>
  <li>• يصممو Databases بطريقة احترافية</li>
  <li>• يتفاداو أخطاء العلاقات</li>
  <li>• يبنيو Systems قابلة للتوسع</li>
  <li>• يطبقو Business Rules بشكل صحيح</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

Cardinality و Ordinality كيعرفو:

</div>

<ul>
  <li>• شحال من Relationship مسموح بها</li>
  <li>• واش المشاركة Optional ولا Mandatory</li>
  <li>• أقل وأكبر عدد ديال المشاركة ديال Entity</li>
</ul>

<div dir="rtl" align="right">

وهاد المفاهيم مهمين بزاف فتصميم ER Diagrams بطريقة احترافية.

---

# الملخص

</div>

| المفهوم     | المعنى                 |
| ----------- | ---------------------- |
| Cardinality | أكبر عدد ديال العلاقات |
| Ordinality  | أقل عدد ديال المشاركة  |
| (0,1)       | واحد اختياري           |
| (1,1)       | واحد إجباري            |
| (0,M)       | بزاف اختياري           |
| (1,M)       | بزاف إجباري            |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
