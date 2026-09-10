# Lesson 15 - Attributes in ER Diagram

---

# Introduction

In this lesson, we learned about:

# Attributes in ER Diagram

Attributes represent the properties or characteristics of an entity inside a database.

They are one of the core components of ER Diagrams.

---

# What is an Attribute?

An **Attribute** describes an entity.

Attributes usually become:

# Columns in database tables

---

# Example

## Employee Entity

| Attribute  |
| ---------- |
| FullName   |
| Department |
| HireDate   |

---

# ERD Representation

Attributes are represented using:

# Oval Shape

```text id="m4k7qp"
   (FullName)
       |
+-----------+
|  Employee |
+-----------+
```

---

# Key Attribute

A **Key Attribute** uniquely identifies each entity record.

It is used as:

# Primary Key

---

# Example

```text id="d6v1tn"
ProductID

EmployeeID
```

---

# ERD Representation

Key Attributes are represented using:

# Underlined Text

```text id="a8x5rw"
(__ProductID__)
```

---

# Composite Attribute

A **Composite Attribute** can be divided into smaller attributes.

---

# Example

## Address

Can be divided into:

* Street
* City
* Postal Code

---

# ERD Representation

```text id="u7m3ke"
        (Address)
       /    |     \
 (Street)(City)(Postal Code)
```

---

# Multivalued Attribute

A **Multivalued Attribute** can contain multiple values.

---

# Example

```text id="r2x8qa"
Email Addresses
```

A person may have multiple email addresses.

---

# ERD Representation

A Multivalued Attribute is represented using:

# Double Oval

```text id="p5n1ws"
((Email))
```

---

# Derived Attribute

A **Derived Attribute** is calculated from another attribute.

---

# Example

```text id="f4z7lt"
Age
```

Age can be calculated from BirthDate.

---

# ERD Representation

A Derived Attribute is represented using:

# Dashed Oval

```text id="e9m2vk"
- - (Age) - -
```

---

# Types of Attributes

| Attribute Type        | Description            |
| --------------------- | ---------------------- |
| Attribute             | Normal property        |
| Key Attribute         | Unique identifier      |
| Composite Attribute   | Divided into sub-parts |
| Multivalued Attribute | Multiple values        |
| Derived Attribute     | Calculated value       |

---

# Key Takeaway

Attributes describe entities and provide detailed information about stored data.

Different attribute types help organize and represent data professionally in ER Diagrams.

---

# Summary

* Attributes represent properties of entities
* Attributes become table columns
* Oval shape represents attributes
* Underline represents Key Attribute
* Double Oval represents Multivalued Attribute
* Dashed Oval represents Derived Attribute

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 15 - Attributes فـ ER Diagram

---

# المقدمة

فهاد الدرس تعلمنا على:

# Attributes فـ ER Diagram

Attributes كتمثل الخصائص أو الصفات ديال Entity داخل قاعدة البيانات.

وهي واحد من المكونات الأساسية ديال ER Diagrams.

---

# شنو هي Attribute؟

**Attribute** كتصف Entity وكتعطينا معلومات عليها.

Attributes فعادةً كيتحولو لـ:

# Columns فـ Database Tables

---

# مثال

## Employee Entity

| Attribute  |
| ---------- |
| FullName   |
| Department |
| HireDate   |

---

# تمثيل Attribute فـ ERD

Attributes كتمثل بـ:

# Oval Shape

```text id="n5p2vc"
   (FullName)
       |
+-----------+
|  Employee |
+-----------+
```

---

# Key Attribute

**Key Attribute** هي Attribute اللي كتستعمل باش نحددو كل Record بشكل فريد.

وكتكون هي:

# Primary Key

---

# مثال

```text id="d6v1tn"
ProductID

EmployeeID
```

---

# تمثيل Key Attribute فـ ERD

Key Attributes كتمثل بـ:

# Underlined Text

```text id="a8x5rw"
(__ProductID__)
```

---

# Composite Attribute

**Composite Attribute** هي Attribute اللي نقدر نقسموها لAttributes أصغر.

---

# مثال

## Address

نقدرو نقسموها لـ:

</div>

<ul>
  <li>• Street</li>
  <li>• City</li>
  <li>• Postal Code</li>
</ul>

<div dir="rtl" align="right">

---

# تمثيلها فـ ERD

```text id="u7m3ke"
        (Address)
       /    |     \
 (Street)(City)(Postal Code)
```

---

# Multivalued Attribute

**Multivalued Attribute** هي Attribute اللي تقدر تحتوي على أكثر من قيمة.

---

# مثال

```text id="r2x8qa"
Email Addresses
```

الشخص يقدر يكون عندو أكثر من Email Address.

---

# تمثيلها فـ ERD

Multivalued Attribute كتمثل بـ:

# Double Oval

```text id="p5n1ws"
((Email))
```

---

# Derived Attribute

**Derived Attribute** هي Attribute اللي كتتحسب انطلاقاً من Attribute أخرى.

---

# مثال

```text id="f4z7lt"
Age
```

Age نقدر نحسبوه انطلاقاً من BirthDate.

---

# تمثيلها فـ ERD

Derived Attribute كتمثل بـ:

# Dashed Oval

```text id="e9m2vk"
- - (Age) - -
```

---

# أنواع Attributes

</div>

| نوع Attribute         | الوصف                   |
| --------------------- | ----------------------- |
| Attribute             | خاصية عادية             |
| Key Attribute         | معرف فريد               |
| Composite Attribute   | كتتقسم لأجزاء أصغر      |
| Multivalued Attribute | كتحتوي على أكثر من قيمة |
| Derived Attribute     | قيمة محسوبة             |

<div dir="rtl" align="right">

---

# الخلاصة المهمة

Attributes كتوصف Entities وكتعطينا معلومات مفصلة على البيانات اللي مخزنة.

وكل نوع من Attributes عندو دور مختلف فتنظيم وتمثيل البيانات بطريقة احترافية فـ ER Diagrams.

---

# الملخص

</div>

<ul>
  <li>• Attributes كتمثل خصائص ديال Entities</li>
  <li>• Attributes كيتحولو لـTable Columns</li>
  <li>• Oval Shape كتمثل Attribute</li>
  <li>• Underline كتمثل Key Attribute</li>
  <li>• Double Oval كتمثل Multivalued Attribute</li>
  <li>• Dashed Oval كتمثل Derived Attribute</li>
</ul>

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
