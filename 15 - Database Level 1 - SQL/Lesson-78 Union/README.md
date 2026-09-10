# Lesson 78 - UNION

---

# Introduction

In this lesson, we learned about:

# UNION

`UNION` combines the result sets of two or more `SELECT` queries into a single result.

By default, `UNION` removes duplicate rows, while `UNION ALL` keeps all rows, including duplicates.

---

# Main Idea

`UNION` stacks rows from multiple queries on top of each other.

The `SELECT` statements must have:

* The **same number of columns**
* **Compatible data types** in the corresponding columns

---

# Example

Combine active and resigned employees into one result set.

---

# UNION Syntax

### UNION — Removes Duplicates

```sql id="7kq3mp"
SELECT *
FROM ActiveEmployees

UNION

SELECT *
FROM ResignedEmployees;
```

### UNION ALL — Keeps Duplicates

```sql id="f8x2ra"
SELECT *
FROM ActiveEmployees

UNION ALL

SELECT *
FROM ResignedEmployees;
```

### UNION on the Same Table — Removes Duplicates

```sql id="6mwp2n"
SELECT *
FROM Departments

UNION

SELECT *
FROM Departments;
```

### UNION ALL on the Same Table — Keeps Duplicates

```sql id="qmx4ob"
SELECT *
FROM Departments

UNION ALL

SELECT *
FROM Departments;
```

---

# Result

```text id="m4xq8d"
UNION      → merged rows, duplicates removed

UNION ALL  → merged rows, all duplicates kept
```

---

# Important Rule

```text id="p9r2vt"
Both SELECT statements must have the same number of columns.

The corresponding columns must have compatible data types.

Column names come from the FIRST SELECT.

UNION ALL is usually faster than UNION because it does not remove duplicates.
```

---

# UNION vs UNION ALL

| Feature            | UNION                         | UNION ALL                |
| ------------------ | ----------------------------- | ------------------------ |
| Removes Duplicates | Yes                           | No                       |
| Performance        | Usually slower                | Usually faster           |
| Use Case           | When distinct rows are needed | When all rows are needed |

---

# Summary

| Concept   | Meaning                                                  |
| --------- | -------------------------------------------------------- |
| UNION     | Combines results and removes duplicates                  |
| UNION ALL | Combines results and keeps duplicates                    |
| Rule      | Same column count and compatible data types are required |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 78 - UNION

---

# المقدمة

فهاد الدرس تعلمنا:

# UNION

`UNION` كيجمع النتائج ديال جوج أو أكثر ديال `SELECT` queries فـ result وحدة.

بشكل افتراضي، `UNION` كيحيد الصفوف المكررة، بينما `UNION ALL` كيخلي جميع الصفوف حتى المكررة منها.

---

# الفكرة الرئيسية

`UNION` كيجمع الصفوف ديال عدة queries وكيحطهم واحد تحت واحد.

الـ `SELECT` statements خاصهم يكون عندهم:

* **نفس عدد الأعمدة**
* **Data types متوافقة** فالأعمدة المقابلة

---

# المثال

نجمعو الموظفين اللي مازال خدامين والموظفين اللي خرجو من الخدمة فـ result وحدة.

---

# UNION Syntax

### UNION — كتحيد التكرار

```sql id="2rg5hk"
SELECT *
FROM ActiveEmployees

UNION

SELECT *
FROM ResignedEmployees;
```

### UNION ALL — كتحافظ على التكرار

```sql id="c53sqz"
SELECT *
FROM ActiveEmployees

UNION ALL

SELECT *
FROM ResignedEmployees;
```

### UNION مع نفس الجدول — كتحيد التكرار

```sql id="9r7e0s"
SELECT *
FROM Departments

UNION

SELECT *
FROM Departments;
```

### UNION ALL مع نفس الجدول — كتحافظ على التكرار

```sql id="das25f"
SELECT *
FROM Departments

UNION ALL

SELECT *
FROM Departments;
```

---

# النتيجة

```text id="b6r2qt"
UNION      → كيدمج الصفوف وكيحيد المكررين

UNION ALL  → كيدمج الصفوف وكيخلي جميع المكررين
```

---

# القاعدة المهمة

```text id="r2k9px"
جوج SELECT statements خاصهم يكون عندهم نفس عدد الأعمدة.

الأعمدة المقابلة خاص تكون عندها Data Types متوافقة.

أسماء الأعمدة كتكون جاية من FIRST SELECT.

UNION ALL غالباً أسرع من UNION حيث ما كيحتاجش يحيد الصفوف المكررة.
```

---

# UNION مقارنة مع UNION ALL

| الخاصية       | UNION                         | UNION ALL             |
| ------------- | ----------------------------- | --------------------- |
| كيحيد التكرار | نعم                           | لا                    |
| الأداء        | غالباً أبطأ                   | غالباً أسرع           |
| الاستعمال     | ملي بغينا غير الصفوف المختلفة | ملي بغينا جميع الصفوف |

---

# الخلاصة

| المفهوم   | المعنى                                  |
| --------- | --------------------------------------- |
| UNION     | كيجمع النتائج وكيحيد التكرار            |
| UNION ALL | كيجمع النتائج وكيخلي التكرار            |
| القاعدة   | خاص نفس عدد الأعمدة وData Types متوافقة |

---

# المؤلف

**Youness Chergui Amin**

</div>
