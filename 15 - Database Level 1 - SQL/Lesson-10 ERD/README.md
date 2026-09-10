# Lesson 10 - ERD (Entity Relationship Diagram)

---

# Introduction

In this lesson, we learned about:

# ERD (Entity Relationship Diagram)

ERD is one of the most important concepts in database design because it helps developers visualize and organize the structure of the database before implementation.

---

# What is ERD?

# ERD = Entity Relationship Diagram

An ER Diagram is a visual representation of:

* Database tables
* Fields (columns)
* Relationships between tables

It helps explain how data is connected inside the database.

---

# Purpose of ERD

ER Diagrams are used to:

* Design the database structure
* Understand relationships between entities
* Organize data logically
* Reduce database complexity
* Improve database planning

---

# Main Components of ERD

ERD is mainly built using three important components:

| Component    | Description                            |
| ------------ | -------------------------------------- |
| Entity       | Represents a table                     |
| Attribute    | Represents a column or field           |
| Relationship | Represents a connection between tables |

---

# What is an Entity?

An **Entity** represents a real-world object stored inside the database.

### Examples

* Student
* Employee
* Department
* Product

Usually, entities become tables in the database.

---

# What is an Attribute?

An **Attribute** is a property of an entity.

### Example

## Employee Entity

| Attribute  |
| ---------- |
| EmployeeID |
| FirstName  |
| Salary     |

These attributes become columns in the table.

---

# What is a Relationship?

A **Relationship** connects entities together.

### Example

* One Department has many Employees
* One Student can register in many Courses

Relationships are implemented using:

# Foreign Keys

---

# What is ER Model?

The **ER Model** is the process of designing a database using ER Diagrams.

It helps analyze all data requirements before building the actual database.

---

# Why Use ER Diagrams?

ER Diagrams provide many advantages:

* Better understanding of data
* Easier database design
* Reduces errors
* Simplifies complex systems
* Helps developers and users visualize the database
* Improves database organization

---

# Simple Example

## Students Table

| StudentID | Name    |
| --------- | ------- |
| 1         | Sara    |
| 2         | Yassine |

## Courses Table

| CourseID | CourseName |
| -------- | ---------- |
| 1        | SQL        |
| 2        | C++        |

## Relationship

A student can enroll in courses.

This relationship can later be implemented using foreign keys.

---

# ERD as a Blueprint

An ER Diagram works like:

# Blueprint for Database Design

Just like engineers draw building plans before construction, database designers create ERDs before implementing databases.

---

# Key Takeaway

* ERD visually represents the database structure
* It shows entities, attributes, and relationships
* ER Modeling helps organize and plan databases professionally
* ERD is created before implementing the database

---

# Summary

* ERD = Entity Relationship Diagram
* Used for database planning and visualization
* Main components:

  * Entity
  * Attribute
  * Relationship
* ERD simplifies database design
* Helps build organized relational databases

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 10 - ERD (Entity Relationship Diagram)

---

# المقدمة

فهاد الدرس تعلمنا على:

# ERD (Entity Relationship Diagram)

ERD من أهم المفاهيم فتصميم الـDatabase، حيث كيساعد الـDevelopers يشوفو ويفهمو وينظمو Structure ديال الـDatabase قبل ما يبداو يطبقوها.

---

# شنو هو ERD؟

# ERD = Entity Relationship Diagram

ER Diagram هو رسم توضيحي كيبين لينا:

</div>

<ul dir="rtl">
  <li>Database Tables</li>
  <li>Fields أو Columns</li>
  <li>Relationships بين الـTables</li>
</ul>

<div dir="rtl" align="right">

وكيعاوننا نفهمو كيفاش البيانات مرتبطة ببعضياتها داخل الـDatabase.

---

# علاش كنستعملو ERD؟

ER Diagrams كنستعملوهم باش:

</div>

<ul dir="rtl">
  <li>نصممو Structure ديال الـDatabase</li>
  <li>نفهمو العلاقات بين الـEntities</li>
  <li>ننظمو البيانات بطريقة منطقية</li>
  <li>ننقصو من تعقيد الـDatabase</li>
  <li>نخططو للـDatabase قبل ما نبداو نطبقوها</li>
</ul>

<div dir="rtl" align="right">

---

# المكونات الرئيسية ديال ERD

ERD كيتكون بشكل أساسي من 3 مكونات مهمين:

</div>

<table dir="rtl">
<tr>
<th>المكون</th>
<th>الشرح</th>
</tr>
<tr>
<td>Entity</td>
<td>كتمثل Table</td>
</tr>
<tr>
<td>Attribute</td>
<td>كتمثل Column أو Field</td>
</tr>
<tr>
<td>Relationship</td>
<td>كتمثل العلاقة بين الـTables</td>
</tr>
</table>

<div dir="rtl" align="right">

---

# شنو هي Entity؟

الـ**Entity** كتمثل شي Object حقيقي بغينا نخزنو المعلومات ديالو فالـDatabase.

### أمثلة

</div>

<ul dir="rtl">
  <li>Student</li>
  <li>Employee</li>
  <li>Department</li>
  <li>Product</li>
</ul>

<div dir="rtl" align="right">

فالغالب الـEntities كيتحول كل واحد منها لـTable فالـDatabase.

---

# شنو هو Attribute؟

الـ**Attribute** هي خاصية أو معلومة كتخص الـEntity.

### مثال

## Employee Entity

</div>

<table dir="rtl">
<tr>
<th>Attribute</th>
</tr>
<tr>
<td>EmployeeID</td>
</tr>
<tr>
<td>FirstName</td>
</tr>
<tr>
<td>Salary</td>
</tr>
</table>

<div dir="rtl" align="right">

هاد الـAttributes كيتحولو لـColumns داخل الـTable.

---

# شنو هي Relationship؟

الـ**Relationship** هي العلاقة اللي كتربط بين الـEntities.

### مثال

</div>

<ul dir="rtl">
  <li>Department واحد فيه بزاف ديال Employees</li>
  <li>Student واحد يقدر يسجل فبزاف ديال Courses</li>
</ul>

<div dir="rtl" align="right">

العلاقات بين الـTables كتقدر تتطبق باستعمال:

# Foreign Keys

---

# شنو هو ER Model؟

الـ**ER Model** هو الطريقة اللي كنستعملو بها ER Diagrams باش نصممو الـDatabase.

كيعاوننا نحللو جميع المتطلبات ديال البيانات قبل ما نبنيو الـDatabase الحقيقية.

---

# علاش ER Diagrams مهمين؟

ER Diagrams عندهم بزاف ديال الفوائد:

</div>

<ul dir="rtl">
  <li>كيخليونا نفهمو البيانات بشكل أحسن</li>
  <li>كيخلي تصميم الـDatabase أسهل</li>
  <li>كيقللو من الأخطاء</li>
  <li>كيبسطو الـSystems المعقدة</li>
  <li>كيعاونو الـDevelopers والـUsers يفهمو Structure ديال الـDatabase</li>
  <li>كيحسنو تنظيم الـDatabase</li>
</ul>

<div dir="rtl" align="right">

---

# مثال بسيط

## Students Table

</div>

<table dir="rtl">
<tr>
<th>StudentID</th>
<th>Name</th>
</tr>
<tr>
<td>1</td>
<td>Sara</td>
</tr>
<tr>
<td>2</td>
<td>Yassine</td>
</tr>
</table>

<div dir="rtl" align="right">

## Courses Table

</div>

<table dir="rtl">
<tr>
<th>CourseID</th>
<th>CourseName</th>
</tr>
<tr>
<td>1</td>
<td>SQL</td>
</tr>
<tr>
<td>2</td>
<td>C++</td>
</tr>
</table>

<div dir="rtl" align="right">

## العلاقة

Student يقدر يسجل فـCourses.

هاد العلاقة نقدروا من بعد نطبقوها باستعمال الـForeign Keys.

---

# ERD بحال Blueprint

ER Diagram كيخدم بحال:

# Blueprint ديال Database Design

بحال المهندسين كيرسمو مخطط ديال البناية قبل ما يبداو البناء، حتى الـDatabase Designers كينشئو ERD قبل ما يبداو يطبقو الـDatabase.

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>ERD كيمثل Structure ديال الـDatabase بطريقة مرئية</li>
  <li>كيبين الـEntities والـAttributes والـRelationships</li>
  <li>ER Modeling كيساعد فنظيم وتصميم الـDatabase بطريقة احترافية</li>
  <li>ERD كيتدار قبل تطبيق الـDatabase</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>ERD = Entity Relationship Diagram</li>
  <li>كيستعمل لتخطيط وتمثيل الـDatabase</li>
  <li>المكونات الرئيسية ديالو:</li>
  <li>Entity</li>
  <li>Attribute</li>
  <li>Relationship</li>
  <li>ERD كيبسط تصميم الـDatabase</li>
  <li>كيساعدنا نبنيو Relational Databases منظمة</li>
</ul>

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
