# Lesson 25 - Aggregation / Associative Entities

---

# Introduction

In this lesson, we learned about:

# Aggregation & Associative Entities in ER Diagram

A more advanced concept in database design used when a **relationship needs to relate to another relationship**.

---

# What is the Problem?

In normal ERDs, relationships connect **entities to entities**.

But sometimes, a **third entity** needs to connect to a **relationship itself** — not to either entity alone.

This is where **Aggregation** comes in.

---

# Real-World Example

Consider a hospital system:

* A **Doctor** examines a **Patient**
* A **Medicine** is prescribed during that specific examination
* The Medicine is not related to the Doctor alone.
* The Medicine is not related to the Patient alone.
* The Medicine is related to the **Examines relationship itself**.

---

# What is Aggregation?

**Aggregation** means treating a **relationship as if it were an entity** so that another entity can relate to it.

We wrap the relationship in a **box** and connect the third entity to that box.

---

# ERD Representation

```text
+----------+          +-----------+          +---------+
|  Doctor  |---[Examines]---------| Patient  |
+----------+          +-----------+          +---------+
                           |
                      (Aggregation)
                           |
                     +----------+
                     | Medicine |
                     +----------+
```

The dashed box around **Examines** shows it is being treated as an entity.

---

# What is an Associative Entity?

An **Associative Entity** (also called a **Junction Table**) is the table created to:

* Resolve a **Many-to-Many** relationship
* Hold **extra attributes** that belong to the relationship itself

---

# Example

## Doctor ↔ Patient (Examines)

| DoctorID | PatientID | CheckupDate |
| -------- | --------- | ----------- |
| 10       | 201       | 2025-03-12  |
| 15       | 305       | 2025-04-20  |

`CheckupDate` belongs to the **relationship**, not to Doctor or Patient alone.

---

# When to Use Aggregation?

Use Aggregation when:

* A **third entity** must connect to a **relationship** between two other entities
* The relationship itself has **attributes** that another entity depends on
* A simple Many-to-Many junction table is **not enough**

---

# Difference Between Normal Relationship and Aggregation

| Normal Relationship      | Aggregation                       |
| ------------------------ | --------------------------------- |
| Entity relates to Entity | Entity relates to a Relationship  |
| Simple connection        | Relationship treated as an Entity |
| Two participants         | Three or more participants        |
| No wrapping needed       | Relationship is wrapped in a box  |

---

# Why Aggregation is Important?

Aggregation helps represent:

* Complex real-world scenarios
* Relationships that carry their own relationships
* Data that cannot be attached to a single entity

---

# Key Takeaway

* Use Aggregation when a **relationship must relate to another entity**
* The relationship is **wrapped** and treated as an entity
* Associative Entities are junction tables that may carry extra attributes
* This concept is essential for modeling **complex database systems**

---

# Summary

| Concept            | Meaning                                       |
| ------------------ | --------------------------------------------- |
| Aggregation        | Treating a relationship as an entity          |
| Associative Entity | Junction table with extra attributes          |
| When to use        | When a third entity relates to a relationship |
| ERD Symbol         | Dashed box around the relationship            |

---

# Author

Youness Chergui Amin

---

<div dir="rtl" align="right">

# النسخة بالدارجة المغربية

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

---

# الدرس 25 — Aggregation / Associative Entities

---

# المقدمة

فهاد الدرس، غادي نتعلمو على:

# Aggregation و Associative Entities فـ ER Diagram

هاد المفاهيم كيتستعملو فتصميم قواعد البيانات ملي كتكون عندنا **Relationship خاصها ترتابط مع Relationship أخرى أو مع Entity ثالثة**.

---

# فين كاين المشكل؟

فـ ERD العادي، الـ Relationships كيربطو **Entity مع Entity**.

ولكن فبعض الحالات، كيكون عندنا **Entity ثالثة** خاصها ترتابط مع **Relationship نفسها**، وماشي مباشرة مع واحد من الـ Entities.

وهنا كنستعملو **Aggregation**.

---

# مثال من الواقع

ناخدو مثال ديال نظام ديال مستشفى:

* عندنا **Doctor** كيدير فحص لـ **Patient**
* واحد **Medicine** تقدر تتوصف خلال داك الفحص بالضبط
* الـ Medicine ما مرتبطةش بالطبيب بوحدو
* وما مرتبطةش بالمريض بوحدو
* ولكن مرتبطة بــ **Examines Relationship نفسها**

---

# شنو هي Aggregation؟

**Aggregation** هي ملي كنعتابرو **Relationship بحال إلا كانت Entity**، باش نقدروا نربطو بها Entity أخرى.

كنحطو الـ Relationship داخل **Box**، ومن بعد كنربطو الـ Entity الثالثة بهاد الـ Box.

---

# تمثيلها فـ ERD

```text
+----------+          +-----------+          +---------+
|  Doctor  |---[Examines]---------| Patient  |
+----------+          +-----------+          +---------+
                           |
                      (Aggregation)
                           |
                     +----------+
                     | Medicine |
                     +----------+
```

الـ Box اللي داير بـ **Examines** كيبين بأن هاد الـ Relationship ولات كتتعامل بحال Entity.

---

# شنو هي Associative Entity؟

**Associative Entity**، واللي كتسمى حتى **Junction Table** أو **Bridge Table**، هي Table كننشئوها باش:

* نحلّو علاقة **Many-to-Many**
* نخزنو **معلومات إضافية** كتخص الـ Relationship نفسها

---

# مثال

## Doctor ↔ Patient (Examines)

| DoctorID | PatientID | CheckupDate |
| -------- | --------- | ----------- |
| 10       | 201       | 2025-03-12  |
| 15       | 305       | 2025-04-20  |

`CheckupDate` كتخص **العلاقة ديال الفحص**، وماشي Doctor ولا Patient بوحدهم.

---

# إمتى كنستعملو Aggregation؟

كنستعملو **Aggregation** ملي:

* **Entity ثالثة** خاصها ترتابط مع **Relationship** بين جوج Entities
* الـ Relationship نفسها عندها **Attributes** اللي كتعتمد عليهم Entity أخرى
* الـ Junction Table العادية ما كافياش باش تمثل النظام بشكل صحيح

---

# الفرق بين Normal Relationship و Aggregation

| Normal Relationship    | Aggregation                      |
| ---------------------- | -------------------------------- |
| Entity كتربط مع Entity | Entity كتربط مع Relationship     |
| علاقة بسيطة            | Relationship كتتعامل بحال Entity |
| جوج مشاركين            | ثلاثة أو أكثر من المشاركين       |
| ما محتاجينش Wrapping   | Relationship كتكون داخل Box      |

---

# علاش Aggregation مهمة؟

Aggregation كتعاوننا نمثلو:

* أنظمة حقيقية ومعقدة
* Relationships اللي عندها علاقات خاصة بها
* معلومات ما نقدرش نربطوها مباشرة مع Entity وحدة

---

# الخلاصة المهمة

* كنستعملو **Aggregation** ملي Relationship خاصها ترتابط مع Entity أخرى
* كنحطو الـ Relationship داخل **Box** وكنتعاملوا معاها بحال Entity
* **Associative Entity** هي غالباً Junction Table كتقدر تحتوي على Attributes إضافية
* هاد المفهوم مهم فتصميم **أنظمة قواعد بيانات معقدة**

---

# الخلاصة

| المفهوم            | المعنى                                        |
| ------------------ | --------------------------------------------- |
| Aggregation        | التعامل مع Relationship بحال Entity           |
| Associative Entity | Junction Table فيها Attributes إضافية         |
| إمتى كنستعملوها    | ملي Entity ثالثة خاصها ترتابط مع Relationship |
| الرمز فـ ERD       | Box حول الـ Relationship                      |

---

# المؤلف

Youness Chergui Amin

</div>

---
