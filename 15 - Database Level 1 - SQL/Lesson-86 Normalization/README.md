# Lesson 86 - Normalization

---

# Introduction

In this lesson, we learned about:

# Normalization

**Normalization** is the process of organizing a database to **reduce redundancy** and **improve data integrity**.

It involves dividing large tables into smaller, well-structured tables and defining relationships between them.

---

# Main Idea

A normalized database is easier to maintain, contains less duplicate data, and helps avoid **update, insert, and delete anomalies**.

Normalization follows a set of rules called **Normal Forms (NF)**.

---

# Why Normalization?

Without normalization, databases can suffer from:

* **Update Anomaly** — changing data in one place may require changing the same data in multiple places, which can lead to inconsistencies.
* **Insert Anomaly** — you may be unable to insert some information without also providing unrelated data.
* **Delete Anomaly** — deleting a row may accidentally remove other important information.

---

# Normalization Goals

```text
Eliminate redundant data

Ensure data dependencies make sense

Reduce unnecessary storage

Improve data integrity

Make updates safer and easier
```

---

# Normal Forms Overview

```text
1NF (First Normal Form)
→ Atomic values, no repeating groups

2NF (Second Normal Form)
→ 1NF + no partial dependencies

3NF (Third Normal Form)
→ 2NF + no transitive dependencies

BCNF
→ A stricter version of 3NF
```

---

# Important Rule

```text
Normalization is done step-by-step.

You must satisfy 1NF before moving to 2NF,
and 2NF before moving to 3NF.

Over-normalization can sometimes make queries more complex,
so a balance between normalization and performance is important.
```

---

# Normal Forms Summary

| Normal Form | Rule                                                                  |
| ----------- | --------------------------------------------------------------------- |
| 1NF         | Each cell contains one atomic value and there are no repeating groups |
| 2NF         | 1NF + no partial dependency on a composite key                        |
| 3NF         | 2NF + no transitive dependency                                        |
| BCNF        | 3NF + every determinant is a candidate key                            |

---

# Summary

| Concept       | Meaning                                                                             |
| ------------- | ----------------------------------------------------------------------------------- |
| Normalization | Process of organizing a database to reduce redundancy and improve data integrity    |
| Anomaly       | A problem caused by poor database design that can lead to inconsistent or lost data |
| Normal Form   | A standard set of rules used to organize database tables                            |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 86 - Normalization

---

# المقدمة

فهاد الدرس تعلمنا:

# Normalization

**Normalization** هي العملية ديال تنظيم قاعدة البيانات باش **نقللو من تكرار البيانات** و **نحسنو Data Integrity**.

كتعتمد على تقسيم الـ tables الكبيرة إلى tables أصغر ومنظمة مزيان، ومن بعد كنحددو العلاقات اللي بينهم.

---

# الفكرة الرئيسية

Database منظمة مزيان كتكون أسهل فالصيانة، فيها data مكررة أقل، وكتساعدنا نتفاداو مشاكل بحال:

* **Update Anomaly** — ملي كتبدل data فبلاصة، ممكن خاصك تبدل نفس data فبلايص أخرى، وهادشي يقدر يسبب عدم التناسق.
* **Insert Anomaly** — ممكن ما تقدرش تزيد شي معلومة بلا ما تزيد معاها data أخرى ما عندهاش علاقة مباشرة بها.
* **Delete Anomaly** — ملي كتحيد row، ممكن بالغلط تحيد معاها معلومات أخرى مهمة.

---

# علاش كنستعملو Normalization؟

الأهداف الرئيسية ديال Normalization هي:

```text
نحيدو البيانات المكررة

نتأكدو بلي dependencies بين البيانات منطقية

نقللو من التخزين غير الضروري

نحسنو Data Integrity

نخليو التعديلات على البيانات أكثر أماناً وأسهل
```

---

# نظرة عامة على Normal Forms

```text
1NF (First Normal Form)
→ Atomic values وما كايناش repeating groups

2NF (Second Normal Form)
→ 1NF + ما كايناش partial dependencies

3NF (Third Normal Form)
→ 2NF + ما كايناش transitive dependencies

BCNF
→ نسخة أكثر تشدداً من 3NF
```

---

# القاعدة المهمة

```text
Normalization كتدار خطوة بخطوة.

خاصك تحقق 1NF قبل ما تمشي لـ 2NF،
وخاصك تحقق 2NF قبل ما تمشي لـ 3NF.

Over-normalization تقدر أحياناً تخلي الـ queries أكثر تعقيداً،
لذلك خاص يكون توازن بين Normalization و Performance.
```

---

# ملخص Normal Forms

| Normal Form | القاعدة                                                   |
| ----------- | --------------------------------------------------------- |
| 1NF         | كل cell فيها قيمة atomic وحدة وما كايناش repeating groups |
| 2NF         | 1NF + ما كايناش partial dependency على composite key      |
| 3NF         | 2NF + ما كايناش transitive dependency                     |
| BCNF        | 3NF + كل determinant خاصو يكون candidate key              |

---

# الخلاصة

| المفهوم       | المعنى                                                                           |
| ------------- | -------------------------------------------------------------------------------- |
| Normalization | عملية تنظيم Database باش نقللو redundancy ونحسنو Data Integrity                  |
| Anomaly       | مشكل ناتج عن تصميم غير جيد لقاعدة البيانات، وقد يسبب عدم تناسق أو فقدان البيانات |
| Normal Form   | مجموعة قواعد معيارية كتستعمل لتنظيم الـ database tables                          |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
