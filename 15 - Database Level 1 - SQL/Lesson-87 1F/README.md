# Lesson 87 - First Normal Form (1NF)

---

# Introduction

In this lesson, we learned about:

# First Normal Form — 1NF

**1NF** requires that every column in a table contains **atomic (indivisible) values**, and that there are **no repeating groups** or multiple values stored in a single cell.

---

# Main Idea

A table is in 1NF when:

1. Each column contains a **single value** — no lists or sets in one cell.
2. Each row is **uniquely identifiable**.
3. There are **no repeating groups** of columns representing the same type of data.

---

# Example

## Violates 1NF

| StudentID | Name  | Courses                |
| --------- | ----- | ---------------------- |
| 1         | Ahmed | Math, Science, English |
| 2         | Sara  | Math, Art              |

The `Courses` column contains multiple values in a single cell.

Therefore, the values are **not atomic**, and the table violates 1NF.

---

# Fixed to 1NF

## Satisfies 1NF

| StudentID | Name  | Course  |
| --------- | ----- | ------- |
| 1         | Ahmed | Math    |
| 1         | Ahmed | Science |
| 1         | Ahmed | English |
| 2         | Sara  | Math    |
| 2         | Sara  | Art     |

Each cell now contains **one value only**.

---

# Rules of 1NF

```text
Each column must contain atomic (single) values.

Each column should contain values of the same type.

Each column should have a unique name.

The order in which rows are stored does not matter.

Each row must be uniquely identifiable.
```

---

# Important Rule

```text
If a cell contains a list, comma-separated values, or multiple items
of the same attribute, the table does not satisfy 1NF.

Fix this by storing each value separately, usually in separate rows.

1NF is the foundation for further normalization.
A table must satisfy 1NF before moving to 2NF and 3NF.
```

---

# 1NF Checklist

| Rule                  | Violation Example                   | Fix                          |
| --------------------- | ----------------------------------- | ---------------------------- |
| Atomic values         | `"Math, Science"` in one cell       | Store each course separately |
| No repeating groups   | `Course1, Course2, Course3` columns | Use separate rows            |
| Unique row identifier | No way to uniquely identify a row   | Define an appropriate key    |

---

# Summary

| Concept             | Meaning                                                |
| ------------------- | ------------------------------------------------------ |
| 1NF                 | First Normal Form                                      |
| Atomic Values       | Each cell contains one value                           |
| No Repeating Groups | No repeated column groups such as `Course1`, `Course2` |
| Result              | A structured table ready for further normalization     |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 87 - First Normal Form (1NF)

---

# المقدمة

فهاد الدرس تعلمنا:

# First Normal Form — 1NF

الـ **1NF** كتشترط بلي كل column فـ table خاصها تحتوي على **atomic values**، يعني كل cell فيها قيمة وحدة وما فيهاش مجموعة ديال القيم.

وكذلك ما خاصناش يكونو **repeating groups** أو عدة values فـ نفس cell.

---

# الفكرة الرئيسية

الـ table كتكون فـ 1NF ملي:

1. كل column فيها **قيمة وحدة**، ماشي list ولا مجموعة ديال values.
2. كل row يمكن **نحددوها بشكل unique**.
3. ما كايناش **repeating groups** ديال columns كتمثل نفس النوع ديال البيانات.

---

# المثال

## ما كتوافقش 1NF

| StudentID | Name  | Courses                |
| --------- | ----- | ---------------------- |
| 1         | Ahmed | Math, Science, English |
| 2         | Sara  | Math, Art              |

الـ `Courses` column فيها عدة values داخل نفس cell.

يعني القيم ماشي **atomic**، وبالتالي هاد table ما كتوافقش 1NF.

---

# تصحيحها إلى 1NF

## كتوافق 1NF

| StudentID | Name  | Course  |
| --------- | ----- | ------- |
| 1         | Ahmed | Math    |
| 1         | Ahmed | Science |
| 1         | Ahmed | English |
| 2         | Sara  | Math    |
| 2         | Sara  | Art     |

دابا كل cell فيها **قيمة وحدة فقط**.

---

# قواعد 1NF

```text
كل column خاصها تحتوي على atomic values، يعني قيمة وحدة.

كل column خاصها تحتوي على values من نفس النوع.

كل column خاص يكون عندها اسم unique.

الترتيب اللي مخزنين به rows ما عندوش أهمية.

كل row خاص نقدروا نحددوها بشكل unique.
```

---

# القاعدة المهمة

```text
إلا كانت cell فيها list، أو values مفصولين بفاصلة،
أو عدة items من نفس attribute، فالـ table ما كتكونش فـ 1NF.

الحل هو نخزنو كل value بشكل منفصل، وغالباً فـ rows مختلفة.

1NF هي الأساس ديال normalization.

خاص table تكون فـ 1NF قبل ما نمشيو لـ 2NF ومن بعد 3NF.
```

---

# Checklist ديال 1NF

| القاعدة               | مثال على المشكل                        | الحل                       |
| --------------------- | -------------------------------------- | -------------------------- |
| Atomic values         | `"Math, Science"` فـ cell وحدة         | نخزنو كل course بشكل منفصل |
| No Repeating Groups   | `Course1, Course2, Course3` كـ columns | نستعملو rows منفصلة        |
| Unique Row Identifier | ما كايناش طريقة نحددو row بشكل unique  | نحددو key مناسب            |

---

# الخلاصة

| المفهوم             | المعنى                                             |
| ------------------- | -------------------------------------------------- |
| 1NF                 | First Normal Form                                  |
| Atomic Values       | كل cell فيها قيمة وحدة                             |
| No Repeating Groups | ما كايناش مجموعات متكررة بحال `Course1`, `Course2` |
| النتيجة             | Table منظمة ومهيأة للـ normalization اللي من بعد   |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
