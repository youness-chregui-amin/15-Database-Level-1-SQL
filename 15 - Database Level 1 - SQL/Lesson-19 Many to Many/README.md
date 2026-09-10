# Lesson 19 - Many-To-Many Relationship

---

# Introduction

In this lesson, we learned about:

# Many-To-Many Relationship

Many-To-Many relationships are one of the most common and important relationship types in relational databases.

They occur when multiple records from one entity are associated with multiple records from another entity.

---

# What is Many-To-Many Relationship?

# Many-To-Many (M:M)

A Many-To-Many relationship happens when:

> Many records in one entity are related to many records in another entity.

---

# Example

## Students & Courses

```text
Student ---- Enrolled ---- Course

   M                         M
```

* A student can enroll in many courses
* A course can contain many students

---

# Real Meaning

| Student | Courses         |
| ------- | --------------- |
| Sara    | SQL, C#, Python |
| Omar    | Java, SQL       |
| Lina    | C#, JavaScript  |

Each student can be associated with multiple courses, and each course can be associated with multiple students.

---

# Another Example

## Orders & Products

```text
Order ---- Contains ---- Product

  M                         M
```

* One order can contain many products
* One product can exist in many orders

---

# Why Many-To-Many Relationships are Important?

Many-To-Many relationships help represent complex real-world systems such as:

* School systems
* E-commerce systems
* Hospital systems
* Movie platforms
* Social media systems

---

# Important Database Rule

# Many-To-Many is NOT implemented directly

In a relational database, we usually use:

# Junction Table / Bridge Table

to implement the Many-To-Many relationship.

---

# Example

Instead of directly connecting:

```text
Student ---- Course
```

we create a junction table:

```text
StudentCourses
```

---

# Database Structure

## Students Table

| StudentID | Name |
| --------- | ---- |
| 1         | Sara |
| 2         | Omar |
| 3         | Lina |

---

## Courses Table

| CourseID | Name   |
| -------- | ------ |
| 101      | SQL    |
| 102      | C#     |
| 103      | Python |

---

## StudentCourses Table

| StudentID | CourseID |
| --------- | -------- |
| 1         | 101      |
| 1         | 102      |
| 2         | 101      |
| 2         | 103      |
| 3         | 102      |

The `StudentCourses` table connects students with their courses.

---

# Why Use Junction Tables?

Junction tables help:

* Organize relationships
* Reduce data redundancy
* Improve database normalization
* Maintain data integrity
* Store additional relationship information when needed

---

# Converting M:M into 1:M + 1:M

The original relationship:

```text
Student ---- Course

   M          M
```

becomes:

```text
Student ----< StudentCourses >---- Course

   1                M          M       1
```

So instead of having a direct M:M relationship, we create two One-To-Many relationships.

---

# Relationship Structure

```text
Students
    |
    | 1
    |
    | M
StudentCourses
    |
    | M
    |
    | 1
    |
Courses
```

---

# Real-World Examples

| Relationship       | Type |
| ------------------ | ---- |
| Students & Courses | M:M  |
| Orders & Products  | M:M  |
| Actors & Movies    | M:M  |
| Doctors & Patients | M:M  |
| Authors & Books    | M:M  |

---

# Key Takeaway

A Many-To-Many relationship means:

> Many records on one side can be related to many records on the other side.

In relational databases, this relationship is usually implemented using a **Junction Table**.

---

# Summary

| Concept            | Description                         |
| ------------------ | ----------------------------------- |
| Many-To-Many (M:M) | Many records relate to many records |
| Junction Table     | Table used to implement M:M         |
| Bridge Table       | Another name for Junction Table     |
| 1:M + 1:M          | Result after breaking M:M           |

---

# Golden Point

# M:M → Junction Table → 1:M + 1:M

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 19 - Many-To-Many Relationship

---

# المقدمة

فهاد الدرس تعلمنا على:

# Many-To-Many Relationship

Many-To-Many من بين أكثر أنواع العلاقات استعمالاً وأهمية فـRelational Databases.

كتكون ملي بزاف ديال Records من Entity وحدة كيكونو مرتبطين مع بزاف ديال Records من Entity أخرى.

---

# شنو هي Many-To-Many Relationship؟

# Many-To-Many (M:M)

Many-To-Many كتكون ملي:

> بزاف ديال Records فـEntity وحدة كيكونو مرتبطين مع بزاف ديال Records فـEntity أخرى.

---

# مثال

## Students و Courses

```text
Student ---- Enrolled ---- Course

   M                         M
```

</div>

<ul>
  <li>• Student واحد يقدر يسجل فـبزاف ديال Courses</li>
  <li>• Course وحدة يقدرو يسجلو فيها بزاف ديال Students</li>
</ul>

<div dir="rtl" align="right">

---

# المعنى الحقيقي

</div>

| Student | Courses         |
| ------- | --------------- |
| Sara    | SQL, C#, Python |
| Omar    | Java, SQL       |
| Lina    | C#, JavaScript  |

<div dir="rtl" align="right">

كل Student يقدر يكون مرتبط مع بزاف ديال Courses، وكل Course تقدر تكون مرتبطة مع بزاف ديال Students.

---

# مثال آخر

## Orders و Products

```text
Order ---- Contains ---- Product

  M                         M
```

</div>

<ul>
  <li>• Order وحدة تقدر تحتوي على بزاف ديال Products</li>
  <li>• Product وحدة تقدر تكون موجودة فـبزاف ديال Orders</li>
</ul>

<div dir="rtl" align="right">

---

# علاش Many-To-Many مهمة؟

Many-To-Many كتعاوننا نمثلو أنظمة حقيقية معقدة بحال:

</div>

<ul>
  <li>• School Systems</li>
  <li>• E-commerce Systems</li>
  <li>• Hospital Systems</li>
  <li>• Movie Platforms</li>
  <li>• Social Media Systems</li>
</ul>

<div dir="rtl" align="right">

---

# قاعدة مهمة فـDatabase

# Many-To-Many ما كتطبقش مباشرة

فـRelational Database، كنستعملو غالباً:

# Junction Table / Bridge Table

باش نطبقو Many-To-Many Relationship.

---

# مثال

بلا ما نربطو مباشرة:

```text
Student ---- Course
```

كننشئو Table وسيطة:

```text
StudentCourses
```

---

# مثال على Database Structure

## Students Table

</div>

| StudentID | Name |
| --------- | ---- |
| 1         | Sara |
| 2         | Omar |
| 3         | Lina |

<div dir="rtl" align="right">

---

## Courses Table

</div>

| CourseID | Name   |
| -------- | ------ |
| 101      | SQL    |
| 102      | C#     |
| 103      | Python |

<div dir="rtl" align="right">

---

## StudentCourses Table

</div>

| StudentID | CourseID |
| --------- | -------- |
| 1         | 101      |
| 1         | 102      |
| 2         | 101      |
| 2         | 103      |
| 3         | 102      |

<div dir="rtl" align="right">

`StudentCourses` هي اللي كتربط Students مع Courses ديالهم.

---

# علاش كنستعملو Junction Table؟

Junction Tables كيساعدونا:

</div>

<ul>
  <li>• ننظمو العلاقات بين Tables</li>
  <li>• نقللو من تكرار البيانات</li>
  <li>• نحسنو Database Normalization</li>
  <li>• نحافظو على Data Integrity</li>
  <li>• نخزنو معلومات إضافية على العلاقة إلا احتجناها</li>
</ul>

<div dir="rtl" align="right">

---

# تحويل M:M إلى 1:M + 1:M

العلاقة الأصلية:

```text
Student ---- Course

   M          M
```

كتولي:

```text
Student ----< StudentCourses >---- Course

   1                M          M       1
```

يعني بلا ما تكون عندنا علاقة مباشرة M:M، كننشئو جوج ديال One-To-Many Relationships.

---

# Structure ديال العلاقة

```text
Students
    |
    | 1
    |
    | M
StudentCourses
    |
    | M
    |
    | 1
    |
Courses
```

---

# أمثلة من الواقع

</div>

| العلاقة            | النوع |
| ------------------ | ----- |
| Students & Courses | M:M   |
| Orders & Products  | M:M   |
| Actors & Movies    | M:M   |
| Doctors & Patients | M:M   |
| Authors & Books    | M:M   |

<div dir="rtl" align="right">

---

# الخلاصة المهمة

Many-To-Many كتعني:

> بزاف ديال Records فالجهة الأولى يقدرو يكونو مرتبطين مع بزاف ديال Records فالجهة الثانية.

وفـRelational Databases، كنطبقو هاد العلاقة غالباً باستعمال **Junction Table**.

---

# الملخص

</div>

| المفهوم            | المعنى                                         |
| ------------------ | ---------------------------------------------- |
| Many-To-Many (M:M) | بزاف ديال Records مرتبطين مع بزاف ديال Records |
| Junction Table     | Table كتستعمل لتطبيق M:M                       |
| Bridge Table       | اسم آخر لـJunction Table                       |
| 1:M + 1:M          | النتيجة من بعد ما كنقسمو M:M                   |

<div dir="rtl" align="right">

---

# القاعدة الذهبية

# M:M → Junction Table → 1:M + 1:M

---

# المؤلف

Youness Chergui Amin

</div>
