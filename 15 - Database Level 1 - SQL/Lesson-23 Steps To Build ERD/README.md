# Lesson 23 - Steps To Build ERD

---

# Introduction

In this lesson, we learned:

# How to Build an ER Diagram (ERD)

An ERD is created step by step to transform system requirements into a professional database design.

This lesson explains the complete process of building an ERD from scratch.

---

# What is ERD Building?

Building an ERD means:

> Converting business requirements into a database structure.

Database designers analyze the system first, then identify:

* Entities
* Relationships
* Attributes
* Cardinality
* Participation

before creating the final ER Diagram.

---

# Steps to Create ERD

There are five main steps:

| Step | Description                 |
| ---- | --------------------------- |
| 1    | Entity Identification       |
| 2    | Relationship Identification |
| 3    | Cardinality Identification  |
| 4    | Attributes Identification   |
| 5    | Create Final ERD            |

---

# Step 1 — Entity Identification

In this step, we identify:

# Main Entities in the System

Entities usually become tables in the database.

---

# Example — Library System

From the system requirements:

```text
Member

Book

Author

Library
```

These are the main entities.

---

# Important Rule

Important nouns in the requirements are often:

# Entities

For example:

> A Member borrows Books from a Library.

Possible entities:

```text
Member
Book
Library
```

---

# Step 2 — Relationship Identification

In this step, we identify:

# Relationships Between Entities

Relationships describe how entities interact with each other.

---

# Examples

## Member borrows Book

Relationship:

```text
Borrows
```

---

## Author writes Book

Relationship:

```text
Writes
```

---

## Library contains Book

Relationship:

```text
Contains
```

---

# Relationship Structure

```text
Member ---- Borrows ---- Book

Author ---- Writes ---- Book

Library ---- Contains ---- Book
```

---

# Step 3 — Cardinality Identification

In this step, we determine:

# (MIN, MAX)

for every relationship.

---

# Example 1

## Member & Book

* A member can borrow many books
* A book can be borrowed by zero or one member at a time

### Result

```text
Member (0,M) ---- Borrows ---- (0,1) Book
```

---

# Example 2

## Author & Book

* An author can write many books
* A book must have at least one author

### Result

```text
Author (0,M) ---- Writes ---- (1,M) Book
```

---

# Example 3

## Library & Book

* A library can contain many books
* Every book must belong to one library

### Result

```text
Library (0,M) ---- Contains ---- (1,1) Book
```

---

# Step 4 — Attributes Identification

In this step, we identify:

# Attributes (Columns)

for every entity.

---

# Member Attributes

```text
MemberID

FirstName

LastName

BirthDate

Phone
```

---

# Book Attributes

```text
BookID

Title

ISBN

PublicationDate

Price
```

---

# Author Attributes

```text
AuthorID

FirstName

LastName

BirthDate
```

---

# Important Notes

## Full Name

If we use:

```text
FullName
```

it can be considered a:

# Composite Attribute

because it can be divided into:

```text
FirstName
MiddleName
LastName
```

---

## Age

If the database stores:

```text
BirthDate
```

then Age can be calculated from it.

Therefore:

# Age = Derived Attribute

---

# Step 5 — Create Final ERD

In this step, we combine:

* Entities
* Relationships
* Cardinality
* Participation
* Attributes

into one complete ER Diagram.

---

# Final ERD Structure

```text
Member (0,M) ---- Borrows ---- (0,1) Book

Author (0,M) ---- Writes ---- (1,M) Book

Library (0,M) ---- Contains ---- (1,1) Book
```

---

# Why ERD Steps are Important?

These steps help developers:

* Understand system requirements
* Build organized databases
* Prevent design mistakes
* Create scalable systems
* Design professional ERDs
* Apply business rules correctly

---

# Key Takeaway

Building an ERD is a systematic process that converts real-world business requirements into a clear and organized database design.

The main process is:

```text
Requirements
     ↓
Entities
     ↓
Relationships
     ↓
Cardinality & Participation
     ↓
Attributes
     ↓
Final ERD
```

---

# Summary

| Step                        | Purpose                      |
| --------------------------- | ---------------------------- |
| Entity Identification       | Find entities/tables         |
| Relationship Identification | Find connections             |
| Cardinality Identification  | Determine relationship rules |
| Attributes Identification   | Define columns               |
| Create ERD                  | Build the final diagram      |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 23 - الخطوات ديال بناء ERD

---

# المقدمة

فهاد الدرس تعلمنا:

# كيفاش نبنيو ER Diagram (ERD)

ERD كيتبنى خطوة بخطوة باش نحوّلو متطلبات النظام لتصميم احترافي ديال Database.

فهاد الدرس غادي نشوفو العملية كاملة من البداية حتى للـERD النهائي.

---

# شنو كيعني بناء ERD؟

بناء ERD كيعني:

> نحولو الـBusiness Requirements لـDatabase Structure.

Database Designer كيحلل النظام فالأول، ومن بعد كيحدد:

</div>

<ul>
  <li>• Entities</li>
  <li>• Relationships</li>
  <li>• Attributes</li>
  <li>• Cardinality</li>
  <li>• Participation</li>
</ul>

<div dir="rtl" align="right">

ومن بعد كينشئ ER Diagram النهائي.

---

# الخطوات ديال إنشاء ERD

كاينين خمسة ديال الخطوات الرئيسية:

</div>

| الخطوة | الوصف                  |
| ------ | ---------------------- |
| 1      | تحديد الـEntities      |
| 2      | تحديد الـRelationships |
| 3      | تحديد الـCardinality   |
| 4      | تحديد الـAttributes    |
| 5      | إنشاء الـERD النهائي   |

<div dir="rtl" align="right">

---

# Step 1 — تحديد الـEntities

فهاد الخطوة كنحددو:

# Main Entities فالنظام

Entities غالباً كيتحولو لـTables فـDatabase.

---

# مثال — Library System

من الـSystem Requirements عندنا:

```text
Member

Book

Author

Library
```

هادو هما الـMain Entities.

---

# قاعدة مهمة

الأسماء المهمة اللي كنلقاوها فـRequirements غالباً كتكون:

# Entities

مثلاً:

> Member كيستعير Books من Library.

الـEntities الممكنة هي:

```text
Member
Book
Library
```

---

# Step 2 — تحديد الـRelationships

فهاد الخطوة كنحددو:

# Relationships بين الـEntities

Relationship كتوضح كيفاش الـEntities كيتفاعلو مع بعضياتهم.

---

# أمثلة

## Member كيستعير Book

الـRelationship:

```text
Borrows
```

---

## Author كيكتب Book

الـRelationship:

```text
Writes
```

---

## Library فيها Books

الـRelationship:

```text
Contains
```

---

# Relationship Structure

```text
Member ---- Borrows ---- Book

Author ---- Writes ---- Book

Library ---- Contains ---- Book
```

---

# Step 3 — تحديد الـCardinality

فهاد الخطوة كنحددو:

# (MIN, MAX)

لكل Relationship.

---

# مثال 1

## Member و Book

</div>

<ul>
  <li>• Member يقدر يستعير بزاف ديال Books</li>
  <li>• Book تقدر ما تكون مستعارة حتى لواحد، أو تكون مستعارة عند Member واحد</li>
</ul>

<div dir="rtl" align="right">

### النتيجة

```text
Member (0,M) ---- Borrows ---- (0,1) Book
```

---

# مثال 2

## Author و Book

</div>

<ul>
  <li>• Author يقدر يكتب بزاف ديال Books</li>
  <li>• Book خاص يكون عندها على الأقل Author واحد</li>
</ul>

<div dir="rtl" align="right">

### النتيجة

```text
Author (0,M) ---- Writes ---- (1,M) Book
```

---

# مثال 3

## Library و Book

</div>

<ul>
  <li>• Library تقدر تحتوي على بزاف ديال Books</li>
  <li>• كل Book خاصها تكون تابعة لـLibrary وحدة</li>
</ul>

<div dir="rtl" align="right">

### النتيجة

```text
Library (0,M) ---- Contains ---- (1,1) Book
```

---

# Step 4 — تحديد الـAttributes

فهاد الخطوة كنحددو:

# Attributes (Columns)

ديال كل Entity.

---

# Member Attributes

```text
MemberID

FirstName

LastName

BirthDate

Phone
```

---

# Book Attributes

```text
BookID

Title

ISBN

PublicationDate

Price
```

---

# Author Attributes

```text
AuthorID

FirstName

LastName

BirthDate
```

---

# ملاحظات مهمة

## Full Name

إلا استعملنا:

```text
FullName
```

فيمكن نعتابروه:

# Composite Attribute

حيت نقدروا نقسموه لـ:

```text
FirstName
MiddleName
LastName
```

---

## Age

إلا كانت Database كتخزن:

```text
BirthDate
```

نقدرو نحسبو Age من BirthDate.

إذن:

# Age = Derived Attribute

---

# Step 5 — إنشاء الـERD النهائي

فهاد الخطوة كنجمعو:

</div>

<ul>
  <li>• Entities</li>
  <li>• Relationships</li>
  <li>• Cardinality</li>
  <li>• Participation</li>
  <li>• Attributes</li>
</ul>

<div dir="rtl" align="right">

فـER Diagram واحد كامل.

---

# Final ERD Structure

```text
Member (0,M) ---- Borrows ---- (0,1) Book

Author (0,M) ---- Writes ---- (1,M) Book

Library (0,M) ---- Contains ---- (1,1) Book
```

---

# علاش خطوات ERD مهمة؟

هاد الخطوات كيساعدو Developers:

</div>

<ul>
  <li>• يفهمو System Requirements</li>
  <li>• يبنيو Databases منظمة</li>
  <li>• يتفاداو أخطاء التصميم</li>
  <li>• يبنيو Systems قابلة للتوسع</li>
  <li>• يصممو ERDs احترافية</li>
  <li>• يطبقو Business Rules بطريقة صحيحة</li>
</ul>

<div dir="rtl" align="right">

---

# الخلاصة المهمة

بناء ERD هو Process منظمة كنحوّلو فيها الـBusiness Requirements الحقيقية لتصميم واضح ومنظم ديال Database.

العملية الرئيسية هي:

```text
Requirements
     ↓
Entities
     ↓
Relationships
     ↓
Cardinality & Participation
     ↓
Attributes
     ↓
Final ERD
```

---

# الملخص

</div>

| الخطوة                      | الهدف                     |
| --------------------------- | ------------------------- |
| Entity Identification       | نحددو Entities / Tables   |
| Relationship Identification | نحددو Connections         |
| Cardinality Identification  | نحددو قواعد Relationships |
| Attributes Identification   | نحددو Columns             |
| Create ERD                  | نبنيو ERD النهائي         |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
