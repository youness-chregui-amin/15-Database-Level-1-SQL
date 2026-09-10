# Lesson 31 - Convert One-to-One to Relational Schema

---

# Introduction

In this lesson, we learned how to convert:

# One-to-One Relationship

from ERD into Relational Schema.

A One-to-One relationship is used when one record in an entity is related to only one record in another entity.

---

# What is One-to-One Relationship?

# One-to-One Relationship

is:

> A relationship where one record in a table is linked to only one record in another table.

---

# Simple Idea

For example:

One **Person** has one **Passport**.

One **Passport** belongs to one **Person**.

---

# Main Idea

A One-to-One relationship connects:

```text
Person  --------  Passport
   1                  1
```

---

# ERD vs Relational Schema

| ERD                     | Relational Schema    |
| ----------------------- | -------------------- |
| Conceptual Relation     | Real Database Tables |
| Visual Relationship     | PK & FK              |
| One Entity ↔ One Entity | One Row ↔ One Row    |

---

# Example

## ER Diagram

```text
Person ---- Passport
```

---

# Relational Schema

```sql
Person(
    PersonID PK,
    FirstName,
    LastName,
    BirthDate
)

Passport(
    PassportID PK,
    PassportNumber,
    IssueDate,
    ExpiryDate,
    PersonID FK
)
```

---

# Conversion Rule

To convert One-to-One relationship:

1. Create a table for each entity.

2. Take the PK from one table.

3. Put it as FK in the other table.

---

# Example

## Person

```text
PersonID
FirstName
LastName
BirthDate
```

---

## Passport

```text
PassportID
PassportNumber
IssueDate
ExpiryDate
PersonID
```

---

# Why is One-to-One Important?

One-to-One relationships are used in:

* Person & Passport
* Customer & MembershipCard
* User & Profile
* Vehicle & Registration
* Employee & Locker

---

# Important Point

# One-to-One Relationship uses PK and FK

to connect the two tables.

---

# Summary

| Concept      | Meaning                   |
| ------------ | ------------------------- |
| One-to-One   | One record ↔ one record   |
| PK           | Primary Key               |
| FK           | Foreign Key               |
| PersonID FK  | References Person         |
| Relationship | Connection between tables |

---

# Key Takeaway

A One-to-One relationship connects one record from one entity to one record from another entity.

When converting it to Relational Schema, we create a table for each entity and use a Foreign Key to connect them.

---

# Author

Youness Chergui Amin

---

---

# الدرس 31 — تحويل One-to-One إلى Relational Schema

---

# المقدمة

فهاد الدرس، غادي نتعلمو كيفاش نحولو:

# One-to-One Relationship

من ERD إلى Relational Schema.

الـ One-to-One Relationship كتكون ملي Record واحد من Entity كيكون مرتبط مع Record واحد من Entity أخرى.

---

# شنو هي One-to-One Relationship؟

# One-to-One Relationship

هي:

> علاقة كيكون فيها Record واحد فـ Table مرتبط مع Record واحد فقط فـ Table آخر.

---

# الفكرة ببساطة

مثلاً:

واحد **Person** عندو واحد **Passport**.

وواحد **Passport** تابع لواحد **Person**.

```text
Person  --------  Passport
   1                  1
```

---

# الفكرة الأساسية

الـ One-to-One كتربط:

```text
Entity 1  --------  Entity 2
    1                    1
```

---

# ERD و Relational Schema

| ERD                 | Relational Schema |
| ------------------- | ----------------- |
| علاقة مفاهيمية      | Tables حقيقية     |
| Relationship مرسومة | PK & FK           |
| Entity ↔ Entity     | Row ↔ Row         |

---

# مثال

## ER Diagram

```text
Person ---- Passport
```

---

# Relational Schema

```sql
Person(
    PersonID PK,
    FirstName,
    LastName,
    BirthDate
)

Passport(
    PassportID PK,
    PassportNumber,
    IssueDate,
    ExpiryDate,
    PersonID FK
)
```

---

# قاعدة التحويل

باش نحولو One-to-One Relationship:

1. كننشئو Table لكل Entity.

2. كناخدو الـ PK من واحد Table.

3. كنحطوه كـ FK فـ Table الآخر.

---

# مثال

## Person

```text
PersonID
FirstName
LastName
BirthDate
```

---

## Passport

```text
PassportID
PassportNumber
IssueDate
ExpiryDate
PersonID
```

---

# علاش One-to-One مهمة؟

كنستعملو One-to-One فـ أمثلة بحال:

* Person & Passport
* Customer & MembershipCard
* User & Profile
* Vehicle & Registration
* Employee & Locker

---

# نقطة مهمة

# One-to-One Relationship كتستعمل PK و FK

باش نربطو بين جوج Tables.

---

# الخلاصة

| المفهوم      | المعنى                    |
| ------------ | ------------------------- |
| One-to-One   | Record واحد ↔ Record واحد |
| PK           | Primary Key               |
| FK           | Foreign Key               |
| PersonID FK  | كيرجع لـ Person           |
| Relationship | العلاقة بين Tables        |

---

# الخلاصة المهمة

الـ One-to-One Relationship كتربط Record واحد من Entity مع Record واحد من Entity أخرى.

وملي كنحوّلوها لـ Relational Schema، كننشئو Table لكل Entity وكنستعملو Foreign Key باش نربطو بينهم.

---

# المؤلف

Youness Chergui Amin

---
