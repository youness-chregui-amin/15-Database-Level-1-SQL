# Lesson 13 - Components of ER Diagram

---

# Introduction

In this lesson, we learned about:

# Components of ER Diagram

ER Diagram is built using several important components that help us design and understand databases professionally.

These components are divided into:

* Entities
* Attributes
* Relationships

---

# Main Components of ER Diagram

| Component    | Description                             |
| ------------ | --------------------------------------- |
| Entity       | Represents a table or object            |
| Attribute    | Represents data or columns              |
| Relationship | Represents connections between entities |

---

# Entities

Entities represent real-world objects stored inside the database.

Examples:

* Student
* Employee
* Course
* Department

---

# Strong Entity

A Strong Entity:

* Has its own Primary Key
* Can exist independently

### Example

```text
Student

Employee

Department
```

---

# Weak Entity

A Weak Entity:

* Cannot exist without another entity
* Depends on a Strong Entity

### Example

```text
Order Details

Dependent
```

---

# Attributes

Attributes are properties or information about entities.

They usually become columns in database tables.

---

# Attribute

Basic information stored about an entity.

### Example

```text
Name

Age

Salary
```

---

# Key Attribute

An attribute used to uniquely identify records.

### Example

```text
StudentID

EmployeeID
```

---

# Composite Attribute

An attribute that can be divided into smaller parts.

### Example

```text
Full Name
```

Can be divided into:

* First Name
* Middle Name
* Last Name

---

# Multivalued Attribute

An attribute that can contain multiple values.

### Example

```text
Phone Numbers
```

A person may have more than one phone number.

---

# Derived Attribute

An attribute calculated from another attribute.

### Example

```text
Age
```

Age is calculated from BirthDate.

---

# Relationships

Relationships connect entities together.

They explain how data interacts inside the database.

---

# One-to-One Relationship (1:1)

One record relates to only one record.

### Example

* One person has one passport

---

# One-to-Many Relationship (1:M)

One record relates to many records.

### Example

* One department has many employees

---

# Many-to-One Relationship (M:1)

Many records relate to one record.

### Example

* Many employees belong to one department

---

# Many-to-Many Relationship (M:M)

Many records relate to many records.

### Example

* Students enroll in many courses
* Courses contain many students

---

# Key Takeaway

ER Diagram components help database designers:

* Understand database structure
* Organize data correctly
* Design relationships professionally
* Build scalable databases

---

# Summary

| Component    | Types                                |
| ------------ | ------------------------------------ |
| Entity       | Strong Entity, Weak Entity           |
| Attribute    | Key, Composite, Multivalued, Derived |
| Relationship | 1:1, 1:M, M:1, M:M                   |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 13 - مكونات ER Diagram

---

# المقدمة

فهاد الدرس تعلمنا على:

# مكونات ER Diagram

ER Diagram كيتبنى من مجموعة ديال المكونات المهمة اللي كيساعدونا نصممو ونفهمو قواعد البيانات بطريقة احترافية.

هاد المكونات كتتقسم لـ:

</div>

<ul>
  <li>• Entities</li>
  <li>• Attributes</li>
  <li>• Relationships</li>
</ul>

<div dir="rtl" align="right">

---

# المكونات الرئيسية ديال ER Diagram

</div>

| المكون       | الوصف                       |
| ------------ | --------------------------- |
| Entity       | كيمثل جدول أو كائن          |
| Attribute    | كيمثل البيانات أو الأعمدة   |
| Relationship | كيمثل العلاقات بين الكيانات |

<div dir="rtl" align="right">

---

# Entities

Entities كتمثل الأشياء أو الكائنات الحقيقية اللي كنخزنو المعلومات ديالها داخل قاعدة البيانات.

**أمثلة:**

</div>

<ul>
  <li>• Student</li>
  <li>• Employee</li>
  <li>• Course</li>
  <li>• Department</li>
</ul>

<div dir="rtl" align="right">

---

# Strong Entity

Strong Entity:

</div>

<ul>
  <li>• عندو Primary Key ديالو</li>
  <li>• يقدر يكون موجود بوحدو</li>
</ul>

<div dir="rtl" align="right">

### مثال

```text
Student

Employee

Department
```

---

# Weak Entity

Weak Entity:

</div>

<ul>
  <li>• ما يقدرش يكون موجود بلا Entity آخر</li>
  <li>• كيعتمد على Strong Entity</li>
</ul>

<div dir="rtl" align="right">

### مثال

```text
Order Details

Dependent
```

---

# Attributes

Attributes هي الخصائص أو المعلومات اللي كتكون مرتبطة بـEntities.

فعادةً كتولي Columns داخل Database Tables.

---

# Attribute

هي معلومة أساسية كنخزنوها على Entity.

### مثال

```text
Name

Age

Salary
```

---

# Key Attribute

هي Attribute كنستعملوها باش نحددو Records بشكل فريد.

### مثال

```text
StudentID

EmployeeID
```

---

# Composite Attribute

هي Attribute اللي نقدر نقسموها لأجزاء أصغر.

### مثال

```text
Full Name
```

نقدرو نقسموها لـ:

</div>

<ul>
  <li>• First Name</li>
  <li>• Middle Name</li>
  <li>• Last Name</li>
</ul>

<div dir="rtl" align="right">

---

# Multivalued Attribute

هي Attribute اللي تقدر تحتوي على أكثر من قيمة.

### مثال

```text
Phone Numbers
```

الشخص يقدر يكون عندو أكثر من رقم هاتف.

---

# Derived Attribute

هي Attribute اللي كتتحسب انطلاقاً من Attribute أخرى.

### مثال

```text
Age
```

Age كيتحسب انطلاقاً من BirthDate.

---

# Relationships

Relationships كيربطو بين Entities.

وكيشرحو كيفاش البيانات كتتفاعل وكتكون مرتبطة داخل قاعدة البيانات.

---

# One-to-One Relationship (1:1)

Record واحد كيكون مرتبط غير بـRecord واحد آخر.

### مثال

</div>

<ul>
  <li>• شخص واحد عندو جواز سفر واحد</li>
</ul>

<div dir="rtl" align="right">

---

# One-to-Many Relationship (1:M)

Record واحد كيكون مرتبط مع بزاف ديال Records.

### مثال

</div>

<ul>
  <li>• Department واحد عندو بزاف ديال Employees</li>
</ul>

<div dir="rtl" align="right">

---

# Many-to-One Relationship (M:1)

بزاف ديال Records كيكونو مرتبطين بـRecord واحد.

### مثال

</div>

<ul>
  <li>• بزاف ديال Employees كينتميو لـDepartment واحد</li>
</ul>

<div dir="rtl" align="right">

---

# Many-to-Many Relationship (M:M)

بزاف ديال Records كيكونو مرتبطين مع بزاف ديال Records آخرين.

### مثال

</div>

<ul>
  <li>• Students كيسجلو فبزاف ديال Courses</li>
  <li>• Courses فيهم بزاف ديال Students</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

ER Diagram components كيساعدو Database Designers باش:

</div>

<ul>
  <li>• يفهمو Structure ديال Database</li>
  <li>• ينظمو البيانات بطريقة صحيحة</li>
  <li>• يصممو العلاقات بطريقة احترافية</li>
  <li>• يبنيو Databases قابلة للتوسع</li>
</ul>

<div dir="rtl" align="right">

---

# الملخص

</div>

| المكون       | الأنواع                              |
| ------------ | ------------------------------------ |
| Entity       | Strong Entity, Weak Entity           |
| Attribute    | Key, Composite, Multivalued, Derived |
| Relationship | 1:1, 1:M, M:1, M:M                   |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>

---
