# Lesson 20 - Cardinality and Ordinality

---

# Introduction

In this lesson, we learned about:

# Cardinality and Ordinality

These concepts are very important in ER Diagrams because they describe how entities relate to each other inside a database.

They help database designers understand:

* How many relationships can exist
* Whether relationships are optional or mandatory

---

# What is Cardinality?

# Cardinality = Maximum Relationship

Cardinality refers to:

> The maximum number of times an entity instance can be associated with another entity instance.

---

# Example

## Author & Books

```text id="m7x2qa"
Author ---- Writes ---- Book

  1                       M
```

* One author can write many books
* Each book belongs to one author

This relationship is:

# One-To-Many (1:M)

---

# Another Example

## Customers & Orders

```text id="v4n8kp"
Customer ---- Places ---- Order

   1                         M
```

* One customer can place many orders
* Each order belongs to one customer

This relationship is:

# One-To-Many (1:M)

---

# What is Ordinality?

# Ordinality = Minimum Relationship

Ordinality refers to:

> The minimum number of times an entity instance must participate in a relationship.

It tells us whether the relationship is:

* Optional
* Mandatory

---

# Important Values

| Value | Meaning   |
| ----- | --------- |
| 0     | Optional  |
| 1     | Mandatory |
| M     | Many      |

---

# Example

## Author & Books

```text id="r8m1tw"
Author (0,M) ---- Writes ---- (1,1) Book
```

### Meaning

## Author (0,M)

* An author may write zero books
* Or many books

## Book (1,1)

* Each book must have one author
* A book cannot exist without an author

---

# Another Example

## Customer & Orders

```text id="k5x7qa"
Customer (1,1) ---- Places ---- (0,M) Order
```

### Meaning

## Customer (1,1)

* Each order must belong to one customer

## Order (0,M)

* A customer may place zero orders
* Or many orders

---

# Understanding (MIN, MAX)

Relationships are represented using:

# (MIN, MAX)

MIN represents the minimum participation.

MAX represents the maximum participation.

---

# Common Relationship Forms

| Format | Meaning        |
| ------ | -------------- |
| (0,1)  | Optional One   |
| (1,1)  | Mandatory One  |
| (0,M)  | Optional Many  |
| (1,M)  | Mandatory Many |

---

# Simple Explanation

| Concept | Meaning               |
| ------- | --------------------- |
| MIN     | Minimum participation |
| MAX     | Maximum participation |

---

# Real-World Example

## Company & Employees

```text id="x3m7ka"
Company (1,1) ---- Employs ---- (1,M) Employee
```

### Meaning

## Company (1,1)

* A company must exist for the relationship

## Employee (1,M)

* A company must have at least one employee
* A company can have many employees

---

# Another Real-World Example

## Department & Employees

```text
Department (0,M) ---- Contains ---- (1,1) Employee
```

### Meaning

* A department may contain zero or many employees
* Each employee must belong to one department

---

# Why Cardinality and Ordinality are Important?

They help database designers:

* Build correct relationships
* Understand business rules
* Prevent design mistakes
* Create accurate database models
* Define optional and mandatory participation

---

# Key Takeaway

* Cardinality defines the **maximum** relationship
* Ordinality defines the **minimum** participation
* `(MIN, MAX)` combines both concepts
* Together they describe database relationships more precisely

---

# Summary

| Concept     | Meaning                              |
| ----------- | ------------------------------------ |
| Cardinality | Maximum relationship count           |
| Ordinality  | Minimum relationship participation   |
| MIN         | Minimum participation                |
| MAX         | Maximum participation                |
| 0           | Optional                             |
| 1           | One / Mandatory depending on context |
| M           | Many                                 |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 20 - Cardinality و Ordinality

---

# المقدمة

فهاد الدرس تعلمنا على:

# Cardinality و Ordinality

هاد المفاهيم مهمين بزاف فـER Diagrams حيث كيساعدونا نفهمو كيفاش Entities مرتبطين ببعضياتهم داخل Database.

وكيعاونو Database Designers يعرفو:

</div>

<ul>
  <li>• شحال من Relationship يقدر يكون</li>
  <li>• واش Relationship اختيارية ولا إجبارية</li>
</ul>

<div dir="rtl" align="right">

---

# شنو هي Cardinality؟

# Cardinality = Maximum Relationship

Cardinality كتعني:

> أكبر عدد ممكن ديال المرات اللي Entity Instance يقدر تكون مرتبطة بـEntity Instance أخرى.

---

# مثال

## Author و Books

```text id="9c3zvn"
Author ---- Writes ---- Book

  1                       M
```

</div>

<ul>
  <li>• Author واحد يقدر يكتب بزاف ديال Books</li>
  <li>• كل Book تابع لـAuthor واحد</li>
</ul>

<div dir="rtl" align="right">

هاد العلاقة هي:

# One-To-Many (1:M)

---

# مثال آخر

## Customers و Orders

```text id="v4n8kp"
Customer ---- Places ---- Order

   1                         M
```

</div>

<ul>
  <li>• Customer واحد يقدر يدير بزاف ديال Orders</li>
  <li>• كل Order تابع لـCustomer واحد</li>
</ul>

<div dir="rtl" align="right">

هاد العلاقة هي:

# One-To-Many (1:M)

---

# شنو هي Ordinality؟

# Ordinality = Minimum Relationship

Ordinality كتعني:

> أقل عدد ديال المرات اللي Entity Instance خاصها تشارك فـRelationship.

وكتوضح لينا واش العلاقة:

</div>

<ul>
  <li>• Optional — اختيارية</li>
  <li>• Mandatory — إجبارية</li>
</ul>

<div dir="rtl" align="right">

---

# القيم المهمة

</div>

| القيمة | المعنى              |
| ------ | ------------------- |
| 0      | Optional — اختيارية |
| 1      | Mandatory — إجبارية |
| M      | Many — بزاف         |

<div dir="rtl" align="right">

---

# مثال

## Author و Books

```text id="r8m1tw"
Author (0,M) ---- Writes ---- (1,1) Book
```

### المعنى

## Author (0,M)

</div>

<ul>
  <li>• Author يقدر ما يكتب حتى Book</li>
  <li>• أو يقدر يكتب بزاف ديال Books</li>
</ul>

<div dir="rtl" align="right">

## Book (1,1)

</div>

<ul>
  <li>• كل Book خاصها تكون مرتبطة بـAuthor واحد</li>
  <li>• Book ما تقدرش تكون بلا Author</li>
</ul>

<div dir="rtl" align="right">

---

# مثال آخر

## Customer و Orders

```text id="k5x7qa"
Customer (1,1) ---- Places ---- (0,M) Order
```

### المعنى

## Customer (1,1)

</div>

<ul>
  <li>• كل Order خاصها تكون تابعة لـCustomer واحد</li>
</ul>

<div dir="rtl" align="right">

## Order (0,M)

</div>

<ul>
  <li>• Customer يقدر ما يدير حتى Order</li>
  <li>• أو يقدر يدير بزاف ديال Orders</li>
</ul>

<div dir="rtl" align="right">

---

# فهم (MIN, MAX)

العلاقات كنمثلوها بـ:

# (MIN, MAX)

MIN كتمثل أقل مشاركة ممكنة.

MAX كتمثل أكبر مشاركة ممكنة.

---

# الأشكال الشائعة ديال Relationship

</div>

| Format | المعنى       |
| ------ | ------------ |
| (0,1)  | واحد اختياري |
| (1,1)  | واحد إجباري  |
| (0,M)  | بزاف اختياري |
| (1,M)  | بزاف إجباري  |

<div dir="rtl" align="right">

---

# شرح بسيط

</div>

| المفهوم | المعنى                 |
| ------- | ---------------------- |
| MIN     | أقل عدد ديال المشاركة  |
| MAX     | أكبر عدد ديال المشاركة |

<div dir="rtl" align="right">

---

# مثال من الواقع

## Company و Employees

```text id="x3m7ka"
Company (1,1) ---- Employs ---- (1,M) Employee
```

### المعنى

## Company (1,1)

</div>

<ul>
  <li>• Company خاصها تكون موجودة باش تكون هاد العلاقة</li>
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

# مثال آخر من الواقع

## Department و Employees

```text
Department (0,M) ---- Contains ---- (1,1) Employee
```

</div>

<ul>
  <li>• Department تقدر ما يكون فيها حتى Employee</li>
  <li>• أو تقدر يكون فيها بزاف ديال Employees</li>
  <li>• كل Employee خاصو ينتمي لـDepartment واحد</li>
</ul>

<div dir="rtl" align="right">

---

# علاش Cardinality و Ordinality مهمين؟

كيعاونو Database Designers:

</div>

<ul>
  <li>• يبنيو Relationships صحيحة</li>
  <li>• يفهمو Business Rules</li>
  <li>• يتفاداو أخطاء التصميم</li>
  <li>• ينشئو Database Models دقيقة</li>
  <li>• يحددو واش المشاركة Optional ولا Mandatory</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

</div>

<ul>
  <li>• Cardinality كتحدد <strong>أكبر عدد</strong> ديال العلاقات</li>
  <li>• Ordinality كتحدد <strong>أقل عدد</strong> ديال المشاركة</li>
  <li>• (MIN, MAX) كيجمعو بيناتهم بجوج</li>
  <li>• بجوج كيعطيونا وصف أدق للعلاقات داخل Database</li>
</ul>

<div dir="rtl" align="right">

---

# الملخص

</div>

| المفهوم     | المعنى                    |
| ----------- | ------------------------- |
| Cardinality | أكبر عدد ديال العلاقات    |
| Ordinality  | أقل مشاركة فـRelationship |
| MIN         | أقل عدد ديال المشاركة     |
| MAX         | أكبر عدد ديال المشاركة    |
| 0           | Optional — اختيارية       |
| 1           | واحد / إجبارية حسب السياق |
| M           | Many — بزاف               |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
