أكيد، هاهي **Lesson 05** بنفس الـformat اللي اتفقنا عليه: English → عنوان Moroccan Arabic Version فالوسط → Darija RTL، بلا emojis، وباسمك.

# Lesson 05 - Primary Key vs Foreign Key

---

# Introduction

In this lesson, we learned one of the most important concepts in relational databases:

* **Primary Key**
* **Foreign Key**

These keys are used to organize tables and create relationships between data inside the database.

---

# Relational Database Concept

In RDBMS (Relational Database Management System):

* Data is stored inside tables
* Tables contain rows and columns
* Tables can be connected together using relationships

### Important Terms

| Term           | Meaning            |
| -------------- | ------------------ |
| Table          | Collection of data |
| Row / Record   | Single data entry  |
| Column / Field | Attribute of data  |

---

# What is Primary Key?

A **Primary Key** is a column (or set of columns) used to uniquely identify each record in a table.

### Main Features

* Unique for every row
* Cannot contain NULL
* Must not be duplicated
* Should remain stable
* Each table should have one Primary Key

---

# Example of Primary Key

## Employees Table

| ID | FirstName | Salary |
| -- | --------- | ------ |
| 1  | Ahmed     | 5000   |
| 2  | Ali       | 3000   |
| 3  | Sara      | 4000   |

### Here:

`ID` is the **Primary Key** because every employee has a unique ID.

---

# What is Foreign Key?

A **Foreign Key** is a column in one table that refers to the Primary Key in another table.

It is used to create relationships between tables.

---

# Example of Foreign Key

## Departments Table

| DepartmentID | Name |
| ------------ | ---- |
| 1            | IT   |
| 2            | HR   |

## Employees Table

| ID | Name  | DepartmentID |
| -- | ----- | ------------ |
| 1  | Ahmed | 1            |
| 2  | Ali   | 2            |

### Here:

`DepartmentID` in Employees table is a **Foreign Key** because it references `DepartmentID` in Departments table.

---

# Why Foreign Keys are Important?

Foreign Keys help:

* Connect tables together
* Prevent invalid data
* Maintain data integrity
* Organize database relationships

---

# Difference Between Primary Key and Foreign Key

| Primary Key                 | Foreign Key                         |
| --------------------------- | ----------------------------------- |
| Uniquely identifies records | Creates relationship between tables |
| Must be unique              | Can contain duplicate values        |
| Cannot be NULL              | Can be NULL                         |
| Exists in the same table    | References another table            |
| One per table usually       | Multiple foreign keys allowed       |

---

# Real-World Example

### School Database

## Students Table

| StudentID | Name  |
| --------- | ----- |
| 1         | Ahmed |
| 2         | Sara  |

## Courses Table

| CourseID | CourseName |
| -------- | ---------- |
| 1        | SQL        |
| 2        | C++        |

## Enrollments Table

| StudentID | CourseID |
| --------- | -------- |
| 1         | 2        |
| 2         | 1        |

### Explanation

* `StudentID` in Students table → Primary Key
* `CourseID` in Courses table → Primary Key
* `StudentID` and `CourseID` in Enrollments table → Foreign Keys

---

# Summary

* Primary Key uniquely identifies each record
* Foreign Key connects tables together
* Primary Key must be unique
* Foreign Key references another table
* Relationships are essential in relational databases

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 05 - Primary Key ضد Foreign Key

---

# المقدمة

فهاد الدرس تعلمنا واحد من أهم المفاهيم فـ Relational Databases:

</div>

<ul dir="rtl">
  <li><strong>Primary Key</strong></li>
  <li><strong>Foreign Key</strong></li>
</ul>

<div dir="rtl" align="right">

هاد الـKeys كيتستعملو باش ننظمو الـTables وننشئو العلاقات بين البيانات داخل الـDatabase.

---

# مفهوم Relational Database

فـ RDBMS (Relational Database Management System):

</div>

<ul dir="rtl">
  <li>البيانات كتتخزن داخل Tables</li>
  <li>الـTables فيهم Rows و Columns</li>
  <li>الـTables يقدرو يرتابطو مع بعضياتهم باستعمال العلاقات</li>
</ul>

<div dir="rtl" align="right">

### مصطلحات مهمة

</div>

| المصطلح        | المعنى                   |
| -------------- | ------------------------ |
| Table          | مجموعة ديال البيانات     |
| Row / Record   | إدخال واحد ديال البيانات |
| Column / Field | خاصية من خصائص البيانات  |

<div dir="rtl" align="right">

---

# شنو هو Primary Key؟

**Primary Key** هو Column، أو مجموعة ديال Columns، كنستعملوها باش نحددو كل Record بشكل فريد داخل الـTable.

### الخصائص الرئيسية

</div>

<ul dir="rtl">
  <li>كيكون Unique لكل Row</li>
  <li>ما كيقدرش يحتوي على NULL</li>
  <li>ما خاصوش يكون مكرر</li>
  <li>من الأفضل يبقى ثابت</li>
  <li>كل Table خاصها Primary Key واحد</li>
</ul>

<div dir="rtl" align="right">

---

# مثال على Primary Key

## Employees Table

</div>

| ID | FirstName | Salary |
| -- | --------- | ------ |
| 1  | Ahmed     | 5000   |
| 2  | Ali       | 3000   |
| 3  | Sara      | 4000   |

<div dir="rtl" align="right">

### هنا:

`ID` هو **Primary Key** حيث كل Employee عندو ID مختلف وفريد.

---

# شنو هو Foreign Key؟

**Foreign Key** هو Column فـTable وحدة كيرجع وكيشير للـPrimary Key اللي كاين فـTable أخرى.

كنستعملوه باش نديرو العلاقات بين الـTables.

---

# مثال على Foreign Key

## Departments Table

</div>

| DepartmentID | Name |
| ------------ | ---- |
| 1            | IT   |
| 2            | HR   |

<div dir="rtl" align="right">

## Employees Table

</div>

| ID | Name  | DepartmentID |
| -- | ----- | ------------ |
| 1  | Ahmed | 1            |
| 2  | Ali   | 2            |

<div dir="rtl" align="right">

### هنا:

`DepartmentID` فـ Employees Table هو **Foreign Key** حيث كيشير لـ `DepartmentID` اللي كاين فـ Departments Table.

---

# علاش Foreign Keys مهمين؟

Foreign Keys كيساعدونا فـ:

</div>

<ul dir="rtl">
  <li>ربط الـTables مع بعضياتها</li>
  <li>منع البيانات غير الصحيحة</li>
  <li>الحفاظ على Data Integrity</li>
  <li>تنظيم العلاقات داخل الـDatabase</li>
</ul>

<div dir="rtl" align="right">

---

# الفرق بين Primary Key و Foreign Key

</div>

| Primary Key               | Foreign Key                   |
| ------------------------- | ----------------------------- |
| كيميز كل Record بشكل فريد | كينشئ علاقة بين الـTables     |
| خاصو يكون Unique          | يقدر يحتوي على Values مكررة   |
| ما كيقدرش يكون NULL       | يقدر يكون NULL                |
| كاين فـنفس الـTable       | كيشير لـTable أخرى            |
| عادةً واحد لكل Table      | نقدروا يكونو عدة Foreign Keys |

<div dir="rtl" align="right">

---

# مثال من الواقع

### School Database

## Students Table

</div>

| StudentID | Name  |
| --------- | ----- |
| 1         | Ahmed |
| 2         | Sara  |

<div dir="rtl" align="right">

## Courses Table

</div>

| CourseID | CourseName |
| -------- | ---------- |
| 1        | SQL        |
| 2        | C++        |

<div dir="rtl" align="right">

## Enrollments Table

</div>

| StudentID | CourseID |
| --------- | -------- |
| 1         | 2        |
| 2         | 1        |

<div dir="rtl" align="right">

### الشرح

</div>

<ul dir="rtl">
  <li><code>StudentID</code> فـ Students Table → Primary Key</li>
  <li><code>CourseID</code> فـ Courses Table → Primary Key</li>
  <li><code>StudentID</code> و <code>CourseID</code> فـ Enrollments Table → Foreign Keys</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>Primary Key كيميز كل Record بشكل فريد</li>
  <li>Foreign Key كيربط الـTables مع بعضياتها</li>
  <li>Primary Key خاصو يكون Unique</li>
  <li>Foreign Key كيشير لـTable أخرى</li>
  <li>العلاقات أساسية فـRelational Databases</li>
</ul>

<div dir="rtl" align="right">

---

## المؤلف

Youness Chergui Amin

</div>
