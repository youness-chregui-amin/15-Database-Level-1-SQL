# Lesson 06 - Redundancy in Databases

---

# Introduction

In this lesson, we learned about one of the biggest problems in databases:

# Redundancy

Redundancy happens when the same data is stored multiple times inside the database.

This issue commonly appears in poorly designed databases or file systems.

---

# What is Redundancy?

Redundancy means:

> Duplicate or repeated data inside the database.

For example:

| EmployeeID | EmployeeName | Department |
| ---------- | ------------ | ---------- |
| 1          | Ahmed        | IT         |
| 2          | Ali          | IT         |
| 3          | Sara         | IT         |

Here, the word `IT` is repeated many times.

---

# Problems Caused by Redundancy

Redundancy creates many serious database problems:

* More storage space wasted
* Data inconsistency
* Data corruption
* Missing or incomplete data
* Difficult maintenance
* Harder updates and modifications

---

# Data Inconsistency Example

Suppose the department name changes from:

`IT → Information Technology`

If we update some rows and forget others:

| Employee | Department             |
| -------- | ---------------------- |
| Ahmed    | IT                     |
| Ali      | Information Technology |

Now the database contains inconsistent data.

This is called:

# Data Inconsistency

---

# Why File Systems Have Redundancy Problems?

Traditional file systems often:

* Store duplicated information
* Lack relationships between data
* Are difficult to maintain

Because of that, databases were created to solve these issues.

---

# Solution: Normalization

To reduce redundancy, databases use a process called:

# Normalization

---

# What is Normalization?

Normalization is the process of organizing database tables to:

* Reduce duplicated data
* Improve data integrity
* Make data easier to maintain
* Create proper relationships between tables

---

# Normalization Example

Instead of repeating department names:

## Employees Table

| ID | Name  | DepartmentID |
| -- | ----- | ------------ |
| 1  | Ahmed | 1            |
| 2  | Ali   | 1            |

## Departments Table

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 1            | IT             |

Now the department name exists only once.

This reduces redundancy.

---

# Benefits of Normalization

* Less duplicated data
* Better organization
* Easier updates
* Better consistency
* Improved database integrity
* Smaller database size

---

# Key Takeaway

* Redundancy = Duplicate data
* Duplicate data causes database problems
* Normalization helps reduce redundancy
* Good database design improves performance and integrity

---

# Summary

* Redundancy means repeated data
* It wastes storage space
* It may cause inconsistent data
* Databases use normalization to reduce redundancy
* Relationships between tables help organize data correctly

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 06 - Redundancy فـ Databases

---

# المقدمة

فهاد الدرس تعلمنا على واحد من أكبر المشاكل فـ Databases:

# Redundancy

Redundancy كتوقع ملي نفس البيانات كتتخزن أكثر من مرة داخل الـDatabase.

هاد المشكل كيظهر غالباً فـ Databases اللي التصميم ديالها ماشي مزيان أو فـ File Systems.

---

# شنو هي Redundancy؟

Redundancy كتعني:

> بيانات مكررة أو كتعاود أكثر من مرة داخل الـDatabase.

مثلاً:

</div>

| EmployeeID | EmployeeName | Department |
| ---------- | ------------ | ---------- |
| 1          | Ahmed        | IT         |
| 2          | Ali          | IT         |
| 3          | Sara         | IT         |

<div dir="rtl" align="right">

هنا كلمة `IT` كتعاودات بزاف ديال المرات.

---

# المشاكل اللي كتسببها Redundancy

Redundancy كتسبب بزاف ديال المشاكل الخطيرة فـ Database:

</div>

<ul dir="rtl">
  <li>ضياع مساحة إضافية فـ Storage</li>
  <li>عدم تناسق البيانات</li>
  <li>فساد البيانات</li>
  <li>بيانات ناقصة أو غير مكتملة</li>
  <li>صعوبة فـ Maintenance</li>
  <li>صعوبة فـ Updates والتعديلات</li>
</ul>

<div dir="rtl" align="right">

---

# مثال على Data Inconsistency

نفترضو أن اسم الـDepartment تبدل من:

`IT → Information Technology`

إلى بدلنا غير بعض الـRows ونسينا الآخرين:

</div>

| Employee | Department             |
| -------- | ---------------------- |
| Ahmed    | IT                     |
| Ali      | Information Technology |

<div dir="rtl" align="right">

دابا الـDatabase ولات فيها بيانات ما متناسقاش.

هادشي كيتسمى:

# Data Inconsistency

---

# علاش File Systems عندها مشاكل ديال Redundancy؟

File Systems التقليدية غالباً:

</div>

<ul dir="rtl">
  <li>كتخزن نفس المعلومات أكثر من مرة</li>
  <li>ما فيهاش علاقات واضحة بين البيانات</li>
  <li>صعيبة فـ Maintenance</li>
</ul>

<div dir="rtl" align="right">

لهذا السبب، تْطورت Databases باش تساعد فـحل هاد المشاكل.

---

# الحل: Normalization

باش ننقصو من Redundancy، Databases كتستعمل واحد العملية سميتها:

# Normalization

---

# شنو هي Normalization؟

Normalization هي عملية تنظيم الـDatabase Tables باش:

</div>

<ul dir="rtl">
  <li>ننقصو من البيانات المكررة</li>
  <li>نحسنو Data Integrity</li>
  <li>نخليو البيانات أسهل فـ Maintenance</li>
  <li>نديرو علاقات صحيحة بين الـTables</li>
</ul>

<div dir="rtl" align="right">

---

# مثال على Normalization

بلا ما نعاودو أسماء الـDepartments:

## Employees Table

</div>

| ID | Name  | DepartmentID |
| -- | ----- | ------------ |
| 1  | Ahmed | 1            |
| 2  | Ali   | 1            |

<div dir="rtl" align="right">

## Departments Table

</div>

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 1            | IT             |

<div dir="rtl" align="right">

دابا اسم الـDepartment كاين غير مرة وحدة.

وهكذا نقصنا من Redundancy.

---

# فوائد Normalization

</div>

<ul dir="rtl">
  <li>بيانات مكررة أقل</li>
  <li>تنظيم أحسن</li>
  <li>Updates أسهل</li>
  <li>Consistency أحسن</li>
  <li>Data Integrity أحسن</li>
  <li>حجم Database أصغر</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>Redundancy = بيانات مكررة</li>
  <li>البيانات المكررة كتسبب مشاكل فـ Database</li>
  <li>Normalization كتساعدنا ننقصو من Redundancy</li>
  <li>التصميم المزيان ديال Database كيحسن Performance و Integrity</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>Redundancy كتعني البيانات اللي كتعاود أكثر من مرة</li>
  <li>كتضيع Storage Space</li>
  <li>تقدر تسبب عدم تناسق فالبيانات</li>
  <li>Databases كتستعمل Normalization باش تنقص من Redundancy</li>
  <li>العلاقات بين الـTables كتساعد فتنظيم البيانات بشكل صحيح</li>
</ul>

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
