# Lesson 68 - COUNT, SUM, AVG, MIN, MAX Functions

---

# Introduction

In this lesson, we learned about:

# Aggregate Functions

Aggregate functions are functions that perform calculations on a set of values and return a single summary value.

The five standard aggregate functions are:

`COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.

---

# Main Idea

Aggregate functions generally ignore `NULL` values, except `COUNT(*)`, which counts all rows.

They are often used with `GROUP BY` to produce summaries for each group.

---

# Example

Calculate statistics on the `MonthlySalary` column for all employees and for employees in a specific department.

---

# Aggregate Functions

```sql id="c8p4k1"
SELECT
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary),
    ResignedEmployees = COUNT(ExitDate)
FROM Employees;
```

```sql id="v2m7qa"
SELECT
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary)
FROM Employees
WHERE DepartmentID = 1;
```

---

# Result

```text
TotalCount | TotalSum | Average | Min  | Max
100        | 500000   | 5000    | 1500 | 12000
```

---

# Important Rule

```text
Aggregate functions IGNORE NULL values.

COUNT(*) counts all rows, including rows with NULL values.

COUNT(column) counts only non-NULL values in that column.
```

---

# Aggregate Functions

| Function | Returns                   | NULL Handling |
| -------- | ------------------------- | ------------- |
| COUNT    | Number of non-NULL values | Ignores NULL  |
| SUM      | Total of numeric values   | Ignores NULL  |
| AVG      | Arithmetic mean           | Ignores NULL  |
| MIN      | Smallest value            | Ignores NULL  |
| MAX      | Largest value             | Ignores NULL  |

---

# Summary

| Concept | Meaning                 |
| ------- | ----------------------- |
| COUNT   | Counts non-NULL values  |
| SUM     | Adds up numeric values  |
| AVG     | Calculates the average  |
| MIN     | Finds the minimum value |
| MAX     | Finds the maximum value |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 68 - COUNT, SUM, AVG, MIN, MAX Functions

---

# المقدمة

فهاد الدرس تعلمنا:

# Aggregate Functions

`Aggregate Functions` هما functions كيعملو calculations على مجموعة ديال القيم وكيعطيو نتيجة وحدة كتكون عبارة عن summary.

أشهر خمسة Aggregate Functions هما:

`COUNT`, `SUM`, `AVG`, `MIN`, و `MAX`.

---

# الفكرة الرئيسية

`Aggregate Functions` بشكل عام كيتجاهلو القيم `NULL`، باستثناء `COUNT(*)` اللي كيحسب جميع الـ rows.

وكيتستعملو بزاف مع `GROUP BY` باش نحصلو على summary ديال كل group.

---

# المثال

نحسبو إحصائيات على العمود `MonthlySalary` ديال جميع الموظفين، وكذلك ديال الموظفين فـ Department معين.

---

# Aggregate Functions

```sql id="m6r3tp"
SELECT
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary),
    ResignedEmployees = COUNT(ExitDate)
FROM Employees;
```

```sql id="r9k2wx"
SELECT
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary)
FROM Employees
WHERE DepartmentID = 1;
```

---

# النتيجة

```text
TotalCount | TotalSum | Average | Min  | Max
100        | 500000   | 5000    | 1500 | 12000
```

---

# قاعدة مهمة

```text
Aggregate Functions كيتجاهلو القيم NULL.

COUNT(*) كيحسب جميع الـ rows، حتى اللي فيهم NULL.

COUNT(column) كيحسب غير القيم اللي ماشي NULL فداك العمود.
```

---

# Aggregate Functions

| Function | شنو كترجع                | التعامل مع NULL |
| -------- | ------------------------ | --------------- |
| COUNT    | عدد القيم اللي ماشي NULL | كيتجاهل NULL    |
| SUM      | مجموع القيم الرقمية      | كيتجاهل NULL    |
| AVG      | المتوسط الحسابي          | كيتجاهل NULL    |
| MIN      | أصغر قيمة                | كيتجاهل NULL    |
| MAX      | أكبر قيمة                | كيتجاهل NULL    |

---

# الخلاصة

| المفهوم | المعنى                     |
| ------- | -------------------------- |
| COUNT   | كيحسب القيم اللي ماشي NULL |
| SUM     | كيجمع القيم الرقمية        |
| AVG     | كيحسب المتوسط              |
| MIN     | كيلقى أصغر قيمة            |
| MAX     | كيلقى أكبر قيمة            |

---

# الكاتب

Youness Chergui Amin

</div>
