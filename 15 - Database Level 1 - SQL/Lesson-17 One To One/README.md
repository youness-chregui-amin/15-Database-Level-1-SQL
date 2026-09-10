# Lesson 17 - One-to-One Relationship

---

# Introduction

In this lesson, we learned about:

# One-to-One Relationship

One-to-One is one of the main types of relationships in ER Diagrams and database design.

---

# What is a One-to-One Relationship?

A **One-to-One Relationship** is a relationship where:

* One record in Entity A is related to **only one** record in Entity B
* One record in Entity B is related to **only one** record in Entity A

---

# ERD Representation

```text
+----------+  1       1  +--------------------+
| Entity A |----< Rel >----| Entity B          |
+----------+              +--------------------+
```

The number **1** appears on both sides of the relationship.

---

# Examples of One-to-One Relationships

* Student **has** Identification Card
* Student **is a** Person
* Employee **is a** Person
* Member **borrows** Book (one at a time)
* Traveler **sits on** Seat
* Employee **sits at** Desk
* Employee **has** Phone Extension
* Employee **is assigned** Task
* Citizen **owns** Car

---

# One-to-One Relationship Examples

---

## 1. Student & Identification Card

```text
+----------+  1       1  +--------------------+
| Student  |----< has >----| Identification Card |
+----------+              +--------------------+
```

* A student has **only one** identification card
* An identification card is given to **only one** person

---

## 2. Student & Person

```text
+---------+  1       1  +--------+
| Student |----< is a >----| Person |
+---------+              +--------+
```

* A student **is a** person
* One person record maps to one student record

---

## 3. Employee & Person

```text
+----------+  1       1  +--------+
| Employee |----< is a >----| Person |
+----------+              +--------+
```

* An employee **is a** person
* One person record maps to one employee record

---

## 4. Member & Book

```text
+--------+  1       1  +------+
| Member |----< borrow >----| Book |
+--------+              +------+
```

* A member can borrow **only one** book
* A book can be borrowed by **only one** member

---

## 5. Traveler & Seat

```text
+----------+  1       1  +------+
| Traveler |----< sits >----| Seat |
+----------+              +------+
```

* A traveler can sit on **only one** seat
* A seat can be assigned to **only one** traveler

---

## 6. Employee & Desk

```text
+----------+  1       1  +------+
| Employee |----< sits >----| Desk |
+----------+              +------+
```

* An employee can sit at **only one** desk
* A desk can be assigned to **only one** employee

---

## 7. Employee & Phone Extension

```text
+----------+  1       1  +------------+
| Employee |----< has >----| Phone Ext. |
+----------+              +------------+
```

* Each employee has a **specific** phone extension
* A phone extension can only belong to **one** employee

---

## 8. Employee & Task

```text
+----------+  1       1  +------+
| Employee |----< Assigned >----| Task |
+----------+              +------+
```

* An employee can work on **only one** task
* A task can be assigned to **only one** employee

---

## 9. Citizen & Car

```text
+---------+  1       1  +-----+
| Citizen |----< Own >----| Car |
+---------+              +-----+
```

* A citizen can own **only one** car
* A car can be owned by **only one** citizen

---

# Key Rules of One-to-One Relationship

| Rule            | Description                             |
| --------------- | --------------------------------------- |
| Left side (1)   | One record in Entity A                  |
| Right side (1)  | One record in Entity B                  |
| Both directions | The restriction applies from both sides |
| ERD Notation    | Number **1** written on both sides      |

---

# Why One-to-One Relationships are Important?

One-to-One relationships help us:

* Split large tables into smaller, focused tables
* Store optional data separately
* Represent inheritance (Student is a Person)
* Improve database organization

---

# Key Takeaway

* In One-to-One, one record relates to exactly one record on both sides
* The number **1** appears on both sides of the relationship in an ERD
* It is the most restrictive type of relationship
* Common in cases such as ID cards, seats, extensions, and inheritance

---

# Summary

| Concept                 | Meaning                                         |
| ----------------------- | ----------------------------------------------- |
| One-to-One Relationship | Each record relates to exactly one other record |
| ERD Symbol              | **1** on both sides                             |
| Example 1               | Student has one Identification Card             |
| Example 2               | Traveler sits on one Seat                       |
| Example 3               | Citizen owns one Car                            |
| Common Use              | ID cards, seats, desks, phone extensions        |

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 17 - One-to-One Relationship

---

# المقدمة

فهاد الدرس تعلمنا على:

# One-to-One Relationship

One-to-One هي وحدة من الأنواع الرئيسية ديال العلاقات فـ ER Diagrams وتصميم الـDatabases.

---

# شنو هي One-to-One Relationship؟

**One-to-One Relationship** هي علاقة فين:

</div>

<ul dir="rtl">
  <li>كل Record فـ Entity A كيرتبط مع <strong>Record واحد فقط</strong> فـ Entity B</li>
  <li>وكل Record فـ Entity B كيرتبط مع <strong>Record واحد فقط</strong> فـ Entity A</li>
</ul>

<div dir="rtl" align="right">

---

# تمثيلها فـ ERD

```text
+----------+  1       1  +--------------------+
| Entity A |----< Rel >----| Entity B          |
+----------+              +--------------------+
```

الرقم **1** كيكون فالجوج ديال الجهات ديال العلاقة.

---

# أمثلة على One-to-One Relationships

</div>

<ul dir="rtl">
  <li>Student عندو Identification Card</li>
  <li>Student هو Person</li>
  <li>Employee هو Person</li>
  <li>Member كيكري Book (واحد فكل مرة)</li>
  <li>Traveler كيجلس فـ Seat</li>
  <li>Employee كيجلس فـ Desk</li>
  <li>Employee عندو Phone Extension</li>
  <li>Employee متعيّن ليه Task</li>
  <li>Citizen عندو Car</li>
</ul>

<div dir="rtl" align="right">

---

# أمثلة على One-to-One Relationship

---

## 1. Student و Identification Card

```text
+----------+  1       1  +--------------------+
| Student  |----< has >----| Identification Card |
+----------+              +--------------------+
```

</div>

<ul dir="rtl">
  <li>كل Student عندو <strong>Identification Card وحدة فقط</strong></li>
  <li>كل Identification Card معطاة لـ<strong>شخص واحد فقط</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 2. Student و Person

```text
+---------+  1       1  +--------+
| Student |----< is a >----| Person |
+---------+              +--------+
```

</div>

<ul dir="rtl">
  <li>الـStudent هو Person</li>
  <li>كل Person Record كيرتبط مع Student Record واحد</li>
</ul>

<div dir="rtl" align="right">

---

## 3. Employee و Person

```text
+----------+  1       1  +--------+
| Employee |----< is a >----| Person |
+----------+              +--------+
```

</div>

<ul dir="rtl">
  <li>الـEmployee هو Person</li>
  <li>كل Person Record كيرتبط مع Employee Record واحد</li>
</ul>

<div dir="rtl" align="right">

---

## 4. Member و Book

```text
+--------+  1       1  +------+
| Member |----< borrow >----| Book |
+--------+              +------+
```

</div>

<ul dir="rtl">
  <li>الـMember يقدر يكري <strong>Book واحد فقط</strong></li>
  <li>الـBook يقدر يكون مكري غير من طرف <strong>Member واحد</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 5. Traveler و Seat

```text
+----------+  1       1  +------+
| Traveler |----< sits >----| Seat |
+----------+              +------+
```

</div>

<ul dir="rtl">
  <li>الـTraveler يقدر يجلس فـ <strong>Seat وحدة فقط</strong></li>
  <li>كل Seat يقدر يجلس فيه <strong>Traveler واحد فقط</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 6. Employee و Desk

```text
+----------+  1       1  +------+
| Employee |----< sits >----| Desk |
+----------+              +------+
```

</div>

<ul dir="rtl">
  <li>الـEmployee يقدر يجلس فـ <strong>Desk وحدة فقط</strong></li>
  <li>كل Desk يقدر يتعيّن لـ<strong>Employee واحد فقط</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 7. Employee و Phone Extension

```text
+----------+  1       1  +------------+
| Employee |----< has >----| Phone Ext. |
+----------+              +------------+
```

</div>

<ul dir="rtl">
  <li>كل Employee عندو Phone Extension <strong>خاصة بيه</strong></li>
  <li>كل Phone Extension كتقدر تكون تابعة غير لـ<strong>Employee واحد</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 8. Employee و Task

```text
+----------+  1       1  +------+
| Employee |----< Assigned >----| Task |
+----------+              +------+
```

</div>

<ul dir="rtl">
  <li>الـEmployee يقدر يخدم غير على <strong>Task وحدة</strong></li>
  <li>كل Task تقدر تكون متعيّنة غير لـ<strong>Employee واحد</strong></li>
</ul>

<div dir="rtl" align="right">

---

## 9. Citizen و Car

```text
+---------+  1       1  +-----+
| Citizen |----< Own >----| Car |
+---------+              +-----+
```

</div>

<ul dir="rtl">
  <li>الـCitizen يقدر يملك <strong>Car وحدة فقط</strong></li>
  <li>كل Car يقدر يملكها <strong>Citizen واحد فقط</strong></li>
</ul>

<div dir="rtl" align="right">

---

# القواعد الأساسية ديال One-to-One Relationship

</div>

| القاعدة           | الشرح                                |
| ----------------- | ------------------------------------ |
| الجهة اليسرى (1)  | Record واحد فـ Entity A              |
| الجهة اليمنى (1)  | Record واحد فـ Entity B              |
| الجوج ديال الجهات | نفس القيد كيتطبق من الجهتين          |
| ERD Notation      | الرقم **1** كيكون فالجوج ديال الجهات |

<div dir="rtl" align="right">

---

# علاش One-to-One Relationships مهمة؟

One-to-One Relationships كيساعدونا فـ:

</div>

<ul dir="rtl">
  <li>تقسيم Tables كبار لـTables صغار ومنظمين</li>
  <li>تخزين البيانات الاختيارية بشكل منفصل</li>
  <li>تمثيل Inheritance بحال Student هو Person</li>
  <li>تحسين تنظيم الـDatabase</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>فـ One-to-One، كل Record كيرتبط مع Record واحد فقط من الجهتين</li>
  <li>الرقم <strong>1</strong> كيظهر فالجوج ديال الجهات فـ ERD</li>
  <li>هي أكثر أنواع العلاقات تقييداً</li>
  <li>كتستعمل مثلاً فـ ID Cards و Seats و Extensions و Inheritance</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

| المفهوم                 | المعنى                                   |
| ----------------------- | ---------------------------------------- |
| One-to-One Relationship | كل Record كيرتبط مع Record واحد فقط      |
| ERD Symbol              | **1** فالجوج ديال الجهات                 |
| المثال 1                | Student عندو Identification Card وحدة    |
| المثال 2                | Traveler كيجلس فـ Seat وحدة              |
| المثال 3                | Citizen كيمتلك Car وحدة                  |
| الاستعمالات الشائعة     | ID Cards، Seats، Desks، Phone Extensions |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
