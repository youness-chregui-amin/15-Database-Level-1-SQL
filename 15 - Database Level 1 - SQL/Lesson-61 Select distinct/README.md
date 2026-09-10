# Lesson 61 - SELECT DISTINCT

---

# Introduction

In this lesson, we learned about:

# SELECT DISTINCT

`DISTINCT` is a clause that filters out duplicate rows, returning only unique values for the specified columns.

---

# Main Idea

`DISTINCT` applies to the entire row combination, not individual columns.

It removes duplicates when all selected columns have the same values.

---

# Example

Query distinct `DepartmentID` values and distinct combinations of `FirstName` and `DepartmentID`.

---

# SELECT DISTINCT

```sql id="m4p8vz"
SELECT DepartmentID FROM Employees;

SELECT DISTINCT DepartmentID FROM Employees;

SELECT FirstName, DepartmentID FROM Employees;

SELECT DISTINCT FirstName, DepartmentID FROM Employees;
```

---

# Result

```text id="r7k2qx"
Without DISTINCT: returns all rows including duplicates.

With DISTINCT: returns only unique DepartmentIDs.

With DISTINCT on two columns: returns unique combinations.
```

---

# Important Rule

```text id="n5d3wa"
DISTINCT operates after SELECT — NULL values are considered equal
for DISTINCT purposes, so only one NULL appears in the result.
```

---

# DISTINCT Behavior

| Scenario         | Result                             |
| ---------------- | ---------------------------------- |
| Single column    | Unique values from that column     |
| Multiple columns | Unique combinations of all columns |
| NULL handling    | Only one NULL row returned         |

---

# Summary

| Concept          | Meaning                                |
| ---------------- | -------------------------------------- |
| `DISTINCT`       | Removes duplicate rows from the result |
| `NULL`           | Treated as equal — one NULL returned   |
| Multiple columns | Unique combinations are evaluated      |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 61 - SELECT DISTINCT

---

# المقدمة

فهاد الدرس تعلمنا على:

# SELECT DISTINCT

`DISTINCT` هي clause كتصفّي الـ duplicate rows، وكتخلي غير القيم unique بالنسبة للـ columns اللي حددنا.

---

# الفكرة الرئيسية

`DISTINCT` كتطبق على combination كاملة ديال الـ row، ماشي على كل column بوحدو.

يعني كتحدف التكرار ملي جميع الـ columns اللي اخترنا عندهم نفس القيم.

---

# المثال

غادي نجيبو القيم المختلفة ديال `DepartmentID`، وكذلك الـ combinations المختلفة ديال `FirstName` و `DepartmentID`.

---

# SELECT DISTINCT

```sql id="q9f4lc"
SELECT DepartmentID FROM Employees;

SELECT DISTINCT DepartmentID FROM Employees;

SELECT FirstName, DepartmentID FROM Employees;

SELECT DISTINCT FirstName, DepartmentID FROM Employees;
```

---

# النتيجة

```text id="b6t1ys"
بلا DISTINCT: كترجع جميع الـ rows حتى المكررة.

مع DISTINCT: كترجع غير DepartmentIDs المختلفة.

مع DISTINCT على جوج columns:
كترجع غير الـ combinations المختلفة.
```

---

# قاعدة مهمة

```text id="k3w8rp"
DISTINCT كتخدم من بعد SELECT — وقيم NULL كتعتبر متساوية
بالنسبة لـ DISTINCT، وبالتالي غير NULL وحدة كتبان فالنتيجة.
```

---

# DISTINCT Behavior

| الحالة           | النتيجة                                         |
| ---------------- | ----------------------------------------------- |
| Single column    | القيم المختلفة من داك الـ column                |
| Multiple columns | الـ combinations المختلفة ديال جميع الـ columns |
| NULL handling    | غير NULL وحدة كترجع                             |

---

# الخلاصة

| Concept          | المعنى                               |
| ---------------- | ------------------------------------ |
| `DISTINCT`       | كتحيد الـ duplicate rows من النتيجة  |
| `NULL`           | كتعتبر متساوية — كترجع غير NULL وحدة |
| Multiple columns | كيتم تقييم الـ combinations المختلفة |

---

# الكاتب

**Youness Chergui Amin**

</div>
