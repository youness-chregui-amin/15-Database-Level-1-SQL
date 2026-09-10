# Lesson 88 - Second Normal Form (2NF)

---

# Introduction

In this lesson, we learned about:

# Second Normal Form — 2NF

**2NF** requires that a table is already in **1NF** and that every **non-key column is fully dependent on the entire Primary Key**, not just part of it.

---

# Main Idea

2NF eliminates **partial dependencies**.

A partial dependency occurs when a non-key column depends on **only part of a composite primary key**, instead of depending on the entire key.

> If a table has a single-column primary key, it is automatically in 2NF as long as it is already in 1NF.

---

# Example

## Violates 2NF

| StudentID | CourseID | StudentName | CourseName |
| --------- | -------- | ----------- | ---------- |
| 1         | C01      | Ahmed       | Math       |
| 1         | C02      | Ahmed       | Science    |
| 2         | C01      | Sara        | Math       |

* Primary Key = `(StudentID + CourseID)`
* `StudentName` depends only on `StudentID` → **partial dependency**
* `CourseName` depends only on `CourseID` → **partial dependency**

Therefore, the table violates 2NF.

---

# Fixed to 2NF

We split the table into separate tables:

## Students Table

| StudentID | StudentName |
| --------- | ----------- |
| 1         | Ahmed       |
| 2         | Sara        |

## Courses Table

| CourseID | CourseName |
| -------- | ---------- |
| C01      | Math       |
| C02      | Science    |

## Enrollment Table

| StudentID | CourseID |
| --------- | -------- |
| 1         | C01      |
| 1         | C02      |
| 2         | C01      |

Now:

* `StudentName` depends on `StudentID`.
* `CourseName` depends on `CourseID`.
* The `Enrollment` table uses `(StudentID + CourseID)` as its composite key.

This removes the partial dependencies from the original table.

---

# Rules of 2NF

```text id="a3f7qk"
Must be in 1NF first.

Every non-key column must depend on the WHOLE primary key.

No partial dependencies are allowed.

Move partial dependencies to separate tables.
```

---

# Important Rule

```text id="h8m2vc"
2NF only matters when you have a COMPOSITE primary key.

If the primary key has only one column,
a partial dependency is not possible,
so the table is automatically in 2NF if it is already in 1NF.

Splitting tables removes redundancy and helps prevent update anomalies.
```

---

# 2NF Checklist

| Rule                  | Violation Example                         | Fix                         |
| --------------------- | ----------------------------------------- | --------------------------- |
| 1NF satisfied         | Multiple values in one cell               | Apply 1NF first             |
| No partial dependency | `StudentName` depends only on `StudentID` | Move it to `Students` table |
| Full key dependency   | `CourseName` depends only on `CourseID`   | Move it to `Courses` table  |

---

# Summary

| Concept            | Meaning                                                          |
| ------------------ | ---------------------------------------------------------------- |
| 2NF                | Second Normal Form                                               |
| Partial Dependency | A non-key column depends on only part of a composite primary key |
| Fix                | Split the table and move partial dependencies to separate tables |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 88 - Second Normal Form (2NF)

---

# المقدمة

فهاد الدرس تعلمنا:

# Second Normal Form — 2NF

الـ **2NF** كتطلب أولاً أن الـ table تكون فـ **1NF**، ومن بعد كل **non-key column** خاصها تعتمد على **Primary Key كاملة**، وماشي غير على جزء منها.

---

# الفكرة الرئيسية

الـ 2NF كتمنع **partial dependencies**.

الـ partial dependency كتوقع ملي واحد الـ non-key column كيكون كيعتمد على **جزء فقط من composite primary key**، وماشي على الـ key كاملة.

> إلا كانت الـ Primary Key مكونة من column وحدة، ما يمكنش تكون partial dependency، وبالتالي الـ table كتكون تلقائياً فـ 2NF إلا كانت أصلاً فـ 1NF.

---

# المثال

## ما كتوافقش 2NF

| StudentID | CourseID | StudentName | CourseName |
| --------- | -------- | ----------- | ---------- |
| 1         | C01      | Ahmed       | Math       |
| 1         | C02      | Ahmed       | Science    |
| 2         | C01      | Sara        | Math       |

* Primary Key = `(StudentID + CourseID)`
* `StudentName` كيعتمد غير على `StudentID` → **partial dependency**
* `CourseName` كيعتمد غير على `CourseID` → **partial dependency**

إذن هاد الـ table ما كتوافقش 2NF.

---

# تصحيحها إلى 2NF

كنقسمو الـ table إلى tables منفصلة:

## Students Table

| StudentID | StudentName |
| --------- | ----------- |
| 1         | Ahmed       |
| 2         | Sara        |

## Courses Table

| CourseID | CourseName |
| -------- | ---------- |
| C01      | Math       |
| C02      | Science    |

## Enrollment Table

| StudentID | CourseID |
| --------- | -------- |
| 1         | C01      |
| 1         | C02      |
| 2         | C01      |

دابا:

* `StudentName` كيعتمد على `StudentID`.
* `CourseName` كيعتمد على `CourseID`.
* `Enrollment` كتستعمل `(StudentID + CourseID)` كـ composite key.

وبهاد الطريقة حيدنا الـ partial dependencies اللي كانت فـ table الأصلية.

---

# قواعد 2NF

```text id="r6x2nd"
خاص الـ table تكون فـ 1NF أولاً.

كل non-key column خاصها تعتمد على Primary Key كاملة.

ما خاص حتى partial dependency تكون موجودة.

الـ partial dependencies خاصها تمشي لـ tables منفصلة.
```

---

# القاعدة المهمة

```text id="m1q7zs"
2NF كتهمنا خصوصاً ملي كتكون عندنا COMPOSITE primary key.

إلا كانت Primary Key فيها غير column وحدة،
ما يمكنش تكون partial dependency،
وبالتالي الـ table كتكون تلقائياً فـ 2NF إلا كانت فـ 1NF.

تقسيم الـ tables كيقلل redundancy
وكيساعد على منع update anomalies.
```

---

# Checklist ديال 2NF

| القاعدة                      | مثال على المشكل                          | الحل                       |
| ---------------------------- | ---------------------------------------- | -------------------------- |
| 1NF مطبقة                    | عدة values فـ cell وحدة                  | نطبقو 1NF أولاً            |
| ما كايناش partial dependency | `StudentName` كيعتمد غير على `StudentID` | ننقلوه لـ `Students` table |
| Full key dependency          | `CourseName` كيعتمد غير على `CourseID`   | ننقلوه لـ `Courses` table  |

---

# الخلاصة

| المفهوم            | المعنى                                                       |
| ------------------ | ------------------------------------------------------------ |
| 2NF                | Second Normal Form                                           |
| Partial Dependency | Non-key column كيعتمد غير على جزء من composite primary key   |
| الحل               | نقسمو الـ table وننقلو partial dependencies لـ tables منفصلة |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
