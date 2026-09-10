# Lesson 89 - Third Normal Form (3NF)

---

# Introduction

In this lesson, we learned about:

# Third Normal Form — 3NF

**3NF** requires that a table is already in **2NF** and that every **non-key column depends only on the Primary Key**, not on another non-key column.

This eliminates **transitive dependencies**.

---

# Main Idea

A **transitive dependency** happens when:

```text
A → B → C
```

Where:

* `B` depends on `A`, which is the Primary Key.
* `C` depends on `B`.
* Therefore, `C` does not depend directly on the Primary Key.

3NF removes these dependency chains by splitting the table into separate tables.

---

# Example

## Violates 3NF

| EmployeeID | DepartmentID | DepartmentName |
| ---------- | ------------ | -------------- |
| 1          | D01          | HR             |
| 2          | D02          | IT             |
| 3          | D01          | HR             |

* PK = `EmployeeID`
* `DepartmentID` depends on `EmployeeID` → correct
* `DepartmentName` depends on `DepartmentID`, not directly on `EmployeeID` → transitive dependency
* **Transitive dependency:** `EmployeeID → DepartmentID → DepartmentName`

Therefore, the table violates 3NF.

---

# Fixed to 3NF

We split the table into two tables:

## Employees Table

| EmployeeID | DepartmentID |
| ---------- | ------------ |
| 1          | D01          |
| 2          | D02          |
| 3          | D01          |

## Departments Table

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| D01          | HR             |
| D02          | IT             |

Now:

* `DepartmentID` belongs to the employee.
* `DepartmentName` belongs to the department.
* The department information is stored only once.

This removes the transitive dependency.

---

# Rules of 3NF

```text id="c5n8rx"
Must be in 2NF first.

No non-key column should depend on another non-key column.

Every non-key column should depend on the Primary Key,
not on another non-key column.

Eliminate transitive dependencies.
```

---

# Important Rule

```text id="m7k2qa"
Transitive dependency means:

A → B → C

where B is not the Primary Key and C depends on B.

Fix it by moving the dependent information into a separate table.

3NF reduces data redundancy and helps prevent update anomalies.

After 3NF, a database is often considered well normalized,
although higher normal forms such as BCNF may still be needed.
```

---

# Normalization Journey

| Normal Form | Removes                                | Requirement                    |
| ----------- | -------------------------------------- | ------------------------------ |
| 1NF         | Non-atomic values and repeating groups | Atomic values                  |
| 2NF         | Partial dependencies                   | 1NF + full key dependency      |
| 3NF         | Transitive dependencies                | 2NF + no transitive dependency |

---

# Summary

| Concept               | Meaning                                            |
| --------------------- | -------------------------------------------------- |
| 3NF                   | Third Normal Form                                  |
| Transitive Dependency | A non-key column depends on another non-key column |
| Fix                   | Move dependent information to a separate table     |
| Result                | Reduced redundancy and better data integrity       |

---

# Normalization Progress

```text id="f3q6wy"
1NF → Atomic values

2NF → No partial dependencies

3NF → No transitive dependencies

Database is now well normalized for many practical designs.
```

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 89 - Third Normal Form (3NF)

---

# المقدمة

فهاد الدرس تعلمنا:

# Third Normal Form — 3NF

الـ **3NF** كتطلب أولاً أن الـ table تكون فـ **2NF**، ومن بعد كل **non-key column** خاصها تعتمد غير على **Primary Key**، وماشي على non-key column أخرى.

هادشي كيحيد **transitive dependencies**.

---

# الفكرة الرئيسية

الـ **transitive dependency** كتوقع ملي كيكون عندنا:

```text id="y2r6kp"
A → B → C
```

يعني:

* `B` كيعتمد على `A` اللي هي Primary Key.
* `C` كيعتمد على `B`.
* وبالتالي `C` ما كيعتمدش مباشرة على Primary Key.

الـ 3NF كتزيل هاد السلسلة ديال dependencies عن طريق تقسيم الـ table إلى tables منفصلة.

---

# المثال

## ما كتوافقش 3NF

| EmployeeID | DepartmentID | DepartmentName |
| ---------- | ------------ | -------------- |
| 1          | D01          | HR             |
| 2          | D02          | IT             |
| 3          | D01          | HR             |

* PK = `EmployeeID`
* `DepartmentID` كيعتمد على `EmployeeID` → صحيح
* `DepartmentName` كيعتمد على `DepartmentID` وماشي مباشرة على `EmployeeID` → transitive dependency
* **Transitive dependency:** `EmployeeID → DepartmentID → DepartmentName`

إذن هاد الـ table ما كتوافقش 3NF.

---

# تصحيحها إلى 3NF

كنقسمو الـ table إلى جوج tables:

## Employees Table

| EmployeeID | DepartmentID |
| ---------- | ------------ |
| 1          | D01          |
| 2          | D02          |
| 3          | D01          |

## Departments Table

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| D01          | HR             |
| D02          | IT             |

دابا:

* `DepartmentID` تابع للـ employee.
* `DepartmentName` تابع للـ department.
* معلومات الـ department كتخزن غير مرة وحدة.

وبهاد الطريقة حيدنا الـ transitive dependency.

---

# قواعد 3NF

```text id="q8v4ns"
خاص الـ table تكون فـ 2NF أولاً.

ما خاص حتى non-key column تعتمد على non-key column أخرى.

كل non-key column خاصها تعتمد على Primary Key،
وماشي على non-key column أخرى.

خاصنا نحيدو transitive dependencies.
```

---

# القاعدة المهمة

```text id="a1c7mx"
Transitive dependency كتكون بالشكل:

A → B → C

فين B ماشي هي Primary Key و C كتعتمد على B.

الحل هو ننقلو المعلومات التابعة لـ table منفصلة.

3NF كتقلل من data redundancy
وكاتساعد على منع update anomalies.

من بعد 3NF، الـ database كتكون غالباً normalized مزيان،
ولكن ممكن تبقى normal forms أخرى بحال BCNF فبعض الحالات.
```

---

# رحلة Normalization

| Normal Form | شنو كتزيل                            | الشرط                                 |
| ----------- | ------------------------------------ | ------------------------------------- |
| 1NF         | Non-atomic values و repeating groups | Atomic values                         |
| 2NF         | Partial dependencies                 | 1NF + Full key dependency             |
| 3NF         | Transitive dependencies              | 2NF + ما كايناش transitive dependency |

---

# الخلاصة

| المفهوم               | المعنى                                        |
| --------------------- | --------------------------------------------- |
| 3NF                   | Third Normal Form                             |
| Transitive Dependency | Non-key column كتعتمد على non-key column أخرى |
| الحل                  | ننقلو المعلومات التابعة لـ table منفصلة       |
| النتيجة               | Redundancy أقل و Data Integrity أحسن          |

---

# تقدمنا فـ Normalization

```text id="n4w7cz"
1NF → Atomic values

2NF → No partial dependencies

3NF → No transitive dependencies

الـ Database دابا ولات منظمة مزيان بالنسبة لعدد كبير من التصاميم العملية.
```

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
