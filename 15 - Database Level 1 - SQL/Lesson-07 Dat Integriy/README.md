# Lesson 07 - What is Data Integrity?

---

# Introduction

In this lesson, we learned about:

# Data Integrity

Data Integrity is one of the most important concepts in databases because it ensures that data remains:

* Accurate
* Consistent
* Reliable
* Correct

throughout its entire lifecycle.

---

# What is Data Integrity?

Data Integrity means:

> The accuracy, consistency, and reliability of data inside the database.

It ensures that data remains valid from the moment it is created until it is deleted.

---

# Examples of Bad Data Integrity

## Invalid Salary

| Employee | Salary |
| -------- | ------ |
| Ahmed    | -400   |

Negative salary is invalid data.

---

## Corrupted Name

| Employee |    |
| -------- | -- |
| U@s#5#Z  | 9E |

This is corrupted or damaged data.

---

## Invalid Foreign Key

Suppose:

### Departments Table

| DepartmentID |
| ------------ |
| 1            |
| 2            |
| 3            |
| 4            |

But inside Employees table:

| Employee | DepartmentID |
| -------- | ------------ |
| Huda     | 5            |

Department `5` does not exist.

This breaks data integrity.

---

# Causes of Data Integrity Problems

Several factors can damage data integrity:

* Human mistakes
* Wrong data entry
* Hardware failures
* Software bugs
* Security attacks
* Data transfer errors

---

# Why Data Integrity is Important?

Without data integrity:

* Reports become inaccurate
* Decisions become wrong
* Systems become unreliable
* Financial losses may occur
* Company reputation may be damaged

---

# Types of Data Integrity

---

# 1. Entity Integrity

Ensures that every row in a table is unique.

### Usually achieved using:

# Primary Key

Example:

| EmployeeID | Name  |
| ---------- | ----- |
| 1          | Ahmed |
| 2          | Ali   |

Each employee has a unique ID.

---

# 2. Referential Integrity

Ensures relationships between tables remain valid.

### Usually achieved using:

# Foreign Key

Example:

An employee cannot belong to a department that does not exist.

---

# 3. Domain Integrity

Ensures data values are valid and within allowed ranges.

### Examples

* Age cannot be negative
* Salary must be numeric
* Date must be valid

---

# 4. Business Integrity

Ensures data follows business rules.

### Examples

* Bank account balance cannot go below the minimum limit
* Hospital patient data must remain confidential
* Product quantity cannot be negative

---

# How to Maintain Data Integrity?

Databases use several techniques:

* Primary Keys
* Foreign Keys
* Constraints
* Validation Rules
* Access Control
* Backups
* Encryption

---

# Key Takeaway

* Data Integrity ensures data is correct and trustworthy
* Databases must protect data from corruption and inconsistency
* Primary Keys and Foreign Keys help maintain integrity
* Constraints are essential for protecting data quality

---

# Summary

* Data Integrity = Accurate + Consistent + Reliable Data
* Bad integrity leads to wrong decisions
* There are multiple types of integrity
* Keys and Constraints protect database data
* Integrity is critical in real-world systems

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# الدرس 07 - شنو هي Data Integrity؟

---

# المقدمة

فهاد الدرس تعلمنا على:

# Data Integrity

Data Integrity هي واحد من أهم المفاهيم فـ Databases، حيث كتضمن بلي البيانات تبقى:

</div>

<ul dir="rtl">
  <li>صحيحة</li>
  <li>متناسقة</li>
  <li>موثوقة</li>
  <li>صحيحة ومطابقة للقواعد</li>
</ul>

<div dir="rtl" align="right">

طوال دورة الحياة كاملة ديالها.

---

# شنو هي Data Integrity؟

Data Integrity كتعني:

> الدقة والتناسق والموثوقية ديال البيانات داخل الـDatabase.

وكتضمن بلي البيانات تبقى صحيحة من اللحظة اللي كتدخل فيها للـDatabase حتى للوقت اللي كتتمسح فيه.

---

# أمثلة على Data Integrity خايبة

## Salary غير صحيحة

</div>

| Employee | Salary |
| -------- | ------ |
| Ahmed    | -400   |

<div dir="rtl" align="right">

Salary سالبة تعتبر بيانات غير صحيحة.

---

## Name فاسدة

</div>

| Employee |    |
| -------- | -- |
| U@s#5#Z  | 9E |

<div dir="rtl" align="right">

هاد البيانات باينة فاسدة أو متضررة.

---

## Foreign Key غير صحيح

نفترضو عندنا:

### Departments Table

</div>

| DepartmentID |
| ------------ |
| 1            |
| 2            |
| 3            |
| 4            |

<div dir="rtl" align="right">

ولكن داخل Employees Table:

</div>

| Employee | DepartmentID |
| -------- | ------------ |
| Huda     | 5            |

<div dir="rtl" align="right">

الـDepartment اللي عندو ID رقم `5` ما كاينش.

هادشي كيخرق Data Integrity.

---

# الأسباب ديال مشاكل Data Integrity

كاينين بزاف ديال العوامل اللي يقدرو يضرّو Data Integrity:

</div>

<ul dir="rtl">
  <li>الأخطاء البشرية</li>
  <li>إدخال بيانات خاطئة</li>
  <li>أعطاب فـ Hardware</li>
  <li>أخطاء فـ Software</li>
  <li>هجمات أمنية</li>
  <li>أخطاء أثناء نقل البيانات</li>
</ul>

<div dir="rtl" align="right">

---

# علاش Data Integrity مهمة؟

إلى ما كانتش Data Integrity:

</div>

<ul dir="rtl">
  <li>Reports يقدرو يكونو غير صحيحين</li>
  <li>القرارات تقدر تكون خاطئة</li>
  <li>الـSystems يقدرو ما يبقاوش موثوقين</li>
  <li>تقدر توقع خسائر مالية</li>
  <li>تقدر تتضرر سمعة الشركة</li>
</ul>

<div dir="rtl" align="right">

---

# أنواع Data Integrity

---

# 1. Entity Integrity

كتضمن بلي كل Row فـTable يكون مميز وما يكونش مكرر.

### غالباً كتتحقق باستعمال:

# Primary Key

مثال:

</div>

| EmployeeID | Name  |
| ---------- | ----- |
| 1          | Ahmed |
| 2          | Ali   |

<div dir="rtl" align="right">

كل Employee عندو ID خاص بيه ومختلف على الآخرين.

---

# 2. Referential Integrity

كتضمن بلي العلاقات بين الـTables تبقى صحيحة.

### غالباً كتتحقق باستعمال:

# Foreign Key

مثال:

Employee ما يقدرش يكون تابع لـDepartment اللي ما كايناش أصلاً.

---

# 3. Domain Integrity

كتضمن بلي الـValues اللي داخلة للـDatabase صحيحة وداخل الـRange المسموح به.

### أمثلة

</div>

<ul dir="rtl">
  <li>Age ما يقدرش يكون بالسالب</li>
  <li>Salary خاصها تكون Numeric</li>
  <li>Date خاصها تكون صحيحة</li>
</ul>

<div dir="rtl" align="right">

---

# 4. Business Integrity

كتضمن بلي البيانات كتتبع القواعد الخاصة بالـBusiness.

### أمثلة

</div>

<ul dir="rtl">
  <li>رصيد الحساب البنكي ما يقدرش يهبط تحت الحد الأدنى المسموح</li>
  <li>بيانات المرضى فالمستشفى خاصها تبقى سرية</li>
  <li>كمية المنتج ما تقدرش تكون بالسالب</li>
</ul>

<div dir="rtl" align="right">

---

# كيفاش نحافظو على Data Integrity؟

Databases كتستعمل بزاف ديال التقنيات، منها:

</div>

<ul dir="rtl">
  <li>Primary Keys</li>
  <li>Foreign Keys</li>
  <li>Constraints</li>
  <li>Validation Rules</li>
  <li>Access Control</li>
  <li>Backups</li>
  <li>Encryption</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

</div>

<ul dir="rtl">
  <li>Data Integrity كتضمن بلي البيانات صحيحة وموثوقة</li>
  <li>Databases خاصها تحمي البيانات من الفساد وعدم التناسق</li>
  <li>Primary Keys و Foreign Keys كيساعدو فالحفاظ على Integrity</li>
  <li>Constraints عندها دور مهم فالحفاظ على جودة البيانات</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة

</div>

<ul dir="rtl">
  <li>Data Integrity = بيانات دقيقة + متناسقة + موثوقة</li>
  <li>Data Integrity الخايبة تقدر تؤدي لقرارات خاطئة</li>
  <li>كاينين عدة أنواع ديال Integrity</li>
  <li>Keys و Constraints كيحميو بيانات الـDatabase</li>
  <li>Integrity مهمة بزاف فـReal-World Systems</li>
</ul>

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
