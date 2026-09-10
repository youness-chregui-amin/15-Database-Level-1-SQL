# Lesson 16 - Relationships in ER Diagram

---

# Introduction

In this lesson, we learned about:

# Relationships in ER Diagram

Relationships are one of the main building blocks of ER Diagrams and database design.

We also learned the different types of relationships:

* One-to-One Relationship
* One-to-Many Relationship
* Many-to-One Relationship
* Many-to-Many Relationship

---

# What is a Relationship?

A **Relationship** represents how two entities are connected to each other in the database.

A relationship:

* Connects two or more entities
* Is represented using a **Diamond Shape** in ERD
* Describes an action or association between entities

---

# Relationship in ER Diagram

In ERD, a Relationship is represented using:

# Diamond Shape

---

## Example

```text
+----------+       +-----------+       +--------+
| Student  |-----< Enrolled >-----| Course |
+----------+       +-----------+       +--------+
```

---

# Examples of Relationships

* Student **Enrolled** in Course
* Patient **Has** Medical Record
* Customer **Places** Order
* Member **Borrows** Book
* Driver **Rents** Vehicle
* Developer **Works on** Project

---

# Relationship Examples

---

## 1. Student & Course

```text
+----------+       +----------+       +--------+
| Student  |-----< Enrolled >-----| Course |
+----------+       +----------+       +--------+
```

* Student and Course are entities
* **Enrolled** is the relationship between them

---

## 2. Patient & Medical Record

```text
+---------+       +------------+       +----------------+
| Patient |-----< Has >-----| Medical Record |
+---------+       +------------+       +----------------+
```

* Patient and Medical Record are entities
* **Has** is the relationship between them

---

## 3. Customer & Order

```text
+----------+       +--------+       +-------+
| Customer |-----< Places >-----| Order |
+----------+       +--------+       +-------+
```

* Customer and Order are entities
* **Places** is the relationship between them

---

## 4. Order & Product

```text
+-------+       +----------+       +---------+
| Order |-----< Contains >-----| Product |
+-------+       +----------+       +---------+
```

* Order can contain more than one product
* **Contains** is the relationship between them

---

## 5. Member & Book

```text
+--------+       +--------+       +------+
| Member |-----< Borrows >-----| Book |
+--------+       +--------+       +------+
```

* Member and Book are entities
* **Borrows** is the relationship between them

---

## 6. Driver & Vehicle

```text
+--------+       +-------+       +---------+
| Driver |-----< Rents >-----| Vehicle |
+--------+       +-------+       +---------+
```

* Driver and Vehicle are entities
* **Rents** is the relationship between them

---

## 7. Developer & Project

```text
+-----------+       +------------+       +---------+
| Developer |-----< Works on >-----| Project |
+-----------+       +------------+       +---------+
      |                                      |
      +-------------< Manages >--------------+
```

* Developer and Project are entities
* **Works on** is one relationship between them
* **Manages** is another relationship between them

---

# Self Referencing Relationship

A **Self Referencing Relationship** is when an entity is related to itself.

* An element of an entity is associated with another element of the **same entity**
* Example: An Employee has a Manager, and the Manager is also an Employee

```text
+----------+       +---------+
| Employee |-----< Manages >----+
+----------+       +---------+  |
      ^                         |
      +-------------------------+
```

---

# Self Referencing Example

## Employees Table

| ID (PK) | Name    | Salary | ManagerID (FK) |
| ------- | ------- | ------ | -------------- |
| 1       | Yassine | 7000   | Null           |
| 2       | Salma   | 5200   | 1              |
| 3       | Nabil   | 3800   | 2              |
| 4       | Hiba    | 3600   | 2              |

* Yassine is the top manager because he has no manager above him
* Salma reports to Yassine
* Nabil and Hiba report to Salma
* All employees are stored in the same table

---

# Relationship Types

| Relationship Type | Description                         | Example                            |
| ----------------- | ----------------------------------- | ---------------------------------- |
| One-to-One        | One record relates to one record    | Patient has one Medical Record     |
| One-to-Many       | One record relates to many records  | Customer places many Orders        |
| Many-to-One       | Many records relate to one record   | Many Orders belong to one Customer |
| Many-to-Many      | Many records relate to many records | Students enroll in many Courses    |

---

# Why Relationships are Important?

Relationships help us:

* Connect data between different tables
* Represent real-world associations
* Build a complete and accurate database design
* Avoid data duplication

They are the backbone of relational database systems.

---

# Key Takeaway

* Relationships connect entities in ERD
* Diamond shape is used to represent relationships
* A relationship usually describes an action or association
* Self Referencing Relationship connects an entity to itself
* There are 4 main types of relationships: 1:1, 1:M, M:1, M:M

---

# Summary

| Concept                       | Meaning                                 |
| ----------------------------- | --------------------------------------- |
| Relationship                  | Connection between two entities         |
| Diamond Shape                 | Symbol used to represent a relationship |
| Self Referencing Relationship | Entity related to itself                |
| One-to-One                    | One record maps to exactly one record   |
| One-to-Many                   | One record maps to many records         |
| Many-to-Many                  | Many records map to many records        |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 16 - Relationships فـ ER Diagram

---

# المقدمة

فهاد الدرس تعلمنا على:

# Relationships فـ ER Diagram

Relationships هما واحد من المكونات الأساسية ديال ER Diagrams وتصميم قواعد البيانات.

وتعلمنا الأنواع المختلفة ديال Relationships:

</div>

<ul>
  <li>• One-to-One Relationship</li>
  <li>• One-to-Many Relationship</li>
  <li>• Many-to-One Relationship</li>
  <li>• Many-to-Many Relationship</li>
</ul>

<div dir="rtl" align="right">

---

# شنو هي Relationship؟

**Relationship** كتمثل كيفاش جوج ولا أكثر ديال Entities مرتبطين ببعضياتهم داخل قاعدة البيانات.

Relationship:

</div>

<ul>
  <li>• كتربط بين جوج ولا أكثر ديال Entities</li>
  <li>• كتتمثل بـ <strong>Diamond Shape</strong> فـERD</li>
  <li>• كتوصف Action ولا Association بين Entities</li>
</ul>

<div dir="rtl" align="right">

---

# Relationship فـ ER Diagram

فـERD، الـRelationship كتمثل بـ:

# Diamond Shape

---

## مثال

```text
+----------+       +-----------+       +--------+
| Student  |-----< Enrolled >-----| Course |
+----------+       +-----------+       +--------+
```

---

# أمثلة ديال Relationships

</div>

<ul>
  <li>• Student <strong>Enrolled</strong> in Course</li>
  <li>• Patient <strong>Has</strong> Medical Record</li>
  <li>• Customer <strong>Places</strong> Order</li>
  <li>• Member <strong>Borrows</strong> Book</li>
  <li>• Driver <strong>Rents</strong> Vehicle</li>
  <li>• Developer <strong>Works on</strong> Project</li>
</ul>

<div dir="rtl" align="right">

---

# أمثلة على Relationships

---

## 1. Student & Course

```text
+----------+       +----------+       +--------+
| Student  |-----< Enrolled >-----| Course |
+----------+       +----------+       +--------+
```

</div>

<ul>
  <li>• Student و Course هما Entities</li>
  <li>• <strong>Enrolled</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 2. Patient & Medical Record

```text
+---------+       +------------+       +----------------+
| Patient |-----< Has >-----| Medical Record |
+---------+       +------------+       +----------------+
```

</div>

<ul>
  <li>• Patient و Medical Record هما Entities</li>
  <li>• <strong>Has</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 3. Customer & Order

```text
+----------+       +--------+       +-------+
| Customer |-----< Places >-----| Order |
+----------+       +--------+       +-------+
```

</div>

<ul>
  <li>• Customer و Order هما Entities</li>
  <li>• <strong>Places</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 4. Order & Product

```text
+-------+       +----------+       +---------+
| Order |-----< Contains >-----| Product |
+-------+       +----------+       +---------+
```

</div>

<ul>
  <li>• Order يقدر يحتوي على أكثر من Product</li>
  <li>• <strong>Contains</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 5. Member & Book

```text
+--------+       +--------+       +------+
| Member |-----< Borrows >-----| Book |
+--------+       +--------+       +------+
```

</div>

<ul>
  <li>• Member و Book هما Entities</li>
  <li>• <strong>Borrows</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 6. Driver & Vehicle

```text
+--------+       +-------+       +---------+
| Driver |-----< Rents >-----| Vehicle |
+--------+       +-------+       +---------+
```

</div>

<ul>
  <li>• Driver و Vehicle هما Entities</li>
  <li>• <strong>Rents</strong> هي الـRelationship اللي بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

## 7. Developer & Project

```text
+-----------+       +------------+       +---------+
| Developer |-----< Works on >-----| Project |
+-----------+       +------------+       +---------+
      |                                      |
      +-------------< Manages >--------------+
```

</div>

<ul>
  <li>• Developer و Project هما Entities</li>
  <li>• <strong>Works on</strong> هي Relationship وحدة بيناتهم</li>
  <li>• <strong>Manages</strong> هي Relationship أخرى بيناتهم</li>
</ul>

<div dir="rtl" align="right">

---

# Self Referencing Relationship

**Self Referencing Relationship** هي ملي Entity كتكون مرتبطة براسها.

</div>

<ul>
  <li>• عنصر من Entity كيكون مرتبط بعنصر آخر من <strong>نفس الـEntity</strong></li>
  <li>• مثال: Employee عندو Manager، والـManager حتى هو Employee</li>
</ul>

<div dir="rtl" align="right">

```text
+----------+       +---------+
| Employee |-----< Manages >----+
+----------+       +---------+  |
      ^                         |
      +-------------------------+
```

---

# مثال على Self Referencing

## Employees Table

| ID (PK) | Name    | Salary | ManagerID (FK) |
| ------- | ------- | ------ | -------------- |
| 1       | Yassine | 7000   | Null           |
| 2       | Salma   | 5200   | 1              |
| 3       | Nabil   | 3800   | 2              |
| 4       | Hiba    | 3600   | 2              |

</div>

<ul>
  <li>• Yassine هو الـTop Manager حيث ما عندوش Manager فوق منو</li>
  <li>• Salma كتبع Yassine</li>
  <li>• Nabil و Hiba كيتبعو Salma</li>
  <li>• جميع الموظفين مخزنين فـنفس الـTable</li>
</ul>

<div dir="rtl" align="right">

---

# أنواع Relationships

</div>

| نوع Relationship | الوصف                                          | مثال                                    |
| ---------------- | ---------------------------------------------- | --------------------------------------- |
| One-to-One       | Record واحد مرتبط بـRecord واحد                | Patient عندو Medical Record واحد        |
| One-to-Many      | Record واحد مرتبط مع بزاف ديال Records         | Customer كيدير بزاف ديال Orders         |
| Many-to-One      | بزاف ديال Records مرتبطين بـRecord واحد        | بزاف ديال Orders تابعين لـCustomer واحد |
| Many-to-Many     | بزاف ديال Records مرتبطين مع بزاف ديال Records | Students كيسجلو فبزاف ديال Courses      |

<div dir="rtl" align="right">

---

# علاش Relationships مهمين؟

Relationships كيساعدونا:

</div>

<ul>
  <li>• نربطو البيانات بين Tables مختلفة</li>
  <li>• نمثلو العلاقات الموجودة فالعالم الحقيقي</li>
  <li>• نبنيو Database Design كامل ودقيق</li>
  <li>• نتفاداو تكرار البيانات</li>
</ul>

<div dir="rtl" align="right">

Relationships هما الأساس ديال Relational Database Systems.

---

# الخلاصة المهمة

</div>

<ul>
  <li>• Relationships كيربطو بين Entities فـERD</li>
  <li>• Diamond Shape كتستعمل لتمثيل Relationships</li>
  <li>• Relationship فعادةً كتوصف Action ولا Association</li>
  <li>• Self Referencing Relationship كترّبط Entity براسها</li>
  <li>• كاينين 4 أنواع رئيسية: 1:1, 1:M, M:1, M:M</li>
</ul>

<div dir="rtl" align="right">

---

# الملخص

</div>

| المفهوم                       | المعنى                                         |
| ----------------------------- | ---------------------------------------------- |
| Relationship                  | العلاقة بين جوج Entities                       |
| Diamond Shape                 | الـSymbol اللي كيمثل Relationship              |
| Self Referencing Relationship | Entity مرتبطة براسها                           |
| One-to-One                    | Record واحد مرتبط بـRecord واحد                |
| One-to-Many                   | Record واحد مرتبط مع بزاف ديال Records         |
| Many-to-Many                  | بزاف ديال Records مرتبطين مع بزاف ديال Records |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
