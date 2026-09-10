# Lesson 69 - GROUP BY

---

# Introduction

In this lesson, we learned about:

# GROUP BY

`GROUP BY` is a clause that groups rows with the same values in specified columns into summary groups.

It is commonly used with aggregate functions such as `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.

---

# Main Idea

`GROUP BY` divides the result set into groups.

Every column in the `SELECT` list must either be included in the `GROUP BY` clause or be used inside an aggregate function.

---

# Example

Calculate aggregate statistics per department and per hire year.

---

# GROUP BY

```sql id="a7m4qp"
SELECT DepartmentID,
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID;
```

```sql id="k2n8rx"
SELECT
    Distinct_Year = YEAR(HireDate),
    HiredEmployees = COUNT(*),
    AvgSalary = AVG(MonthlySalary)
FROM Employees
GROUP BY YEAR(HireDate)
ORDER BY YEAR(HireDate);
```

---

# Result

```text id="p5c9vw"
DepartmentID | TotalCount | TotalSum | Average | Min  | Max
1            | 50         | 250000   | 5000    | 2000 | 12000
2            | 30         | 150000   | 5000    | 1500 | 10000
```

Each row represents one group, in this case a department.

---

# Important Rule

```text id="z3q6hm"
Every column in SELECT must be in GROUP BY
or used in an aggregate function.

WHERE filters rows BEFORE grouping.
HAVING filters groups AFTER grouping.
```

---

# GROUP BY Rules

| Rule           | Description                       |
| -------------- | --------------------------------- |
| SELECT columns | Must be in GROUP BY or aggregated |
| WHERE          | Filters rows before grouping      |
| HAVING         | Filters groups after grouping     |
| ORDER BY       | Sorts the final grouped result    |

---

# Summary

| Concept         | Meaning                                                      |
| --------------- | ------------------------------------------------------------ |
| GROUP BY        | Groups rows for aggregate calculations                       |
| Aggregates      | COUNT, SUM, AVG, MIN, MAX calculated per group               |
| WHERE vs HAVING | WHERE filters before grouping, HAVING filters after grouping |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 69 - GROUP BY

---

# المقدمة

فهاد الدرس تعلمنا:

# GROUP BY

`GROUP BY` هو clause كيجمّع الـ rows اللي عندهم نفس القيم فالأعمدة المحددة، وكيحولهم لمجموعات باش نديرو عليهم summary.

كيستعمل غالباً مع Aggregate Functions بحال:

`COUNT`, `SUM`, `AVG`, `MIN`, و `MAX`.

---

# الفكرة الرئيسية

`GROUP BY` كيقسم الـ result set لمجموعات.

أي column موجود فـ `SELECT` خاصو يا إما يكون موجود فـ `GROUP BY`، يا إما يكون داخل Aggregate Function.

---

# المثال

نحسبو الإحصائيات ديال كل Department، وكذلك عدد الموظفين والمتوسط حسب سنة التوظيف.

---

# GROUP BY

```sql id="r4v1xs"
SELECT DepartmentID,
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary),
    Min = MIN(MonthlySalary),
    Max = MAX(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
ORDER BY DepartmentID;
```

```sql id="h8d2mk"
SELECT
    Distinct_Year = YEAR(HireDate),
    HiredEmployees = COUNT(*),
    AvgSalary = AVG(MonthlySalary)
FROM Employees
GROUP BY YEAR(HireDate)
ORDER BY YEAR(HireDate);
```

---

# النتيجة

```text id="w7n3bf"
DepartmentID | TotalCount | TotalSum | Average | Min  | Max
1            | 50         | 250000   | 5000    | 2000 | 12000
2            | 30         | 150000   | 5000    | 1500 | 10000
```

كل row هنا كيمثل واحد group، وفهاد المثال كل group كيمثل Department.

---

# قاعدة مهمة

```text id="q6m2yt"
أي column موجود فـ SELECT خاصو يكون موجود فـ GROUP BY
ولا يكون مستعمل داخل Aggregate Function.

WHERE كيفلتر الـ rows قبل GROUP BY.
HAVING كيفلتر الـ groups من بعد GROUP BY.
```

---

# GROUP BY Rules

| القاعدة        | الشرح                                     |
| -------------- | ----------------------------------------- |
| SELECT columns | خاصها تكون فـ GROUP BY أو تكون aggregated |
| WHERE          | كيفلتر الـ rows قبل grouping              |
| HAVING         | كيفلتر الـ groups من بعد grouping         |
| ORDER BY       | كيرتب النتيجة النهائية ديال الـ groups    |

---

# الخلاصة

| المفهوم         | المعنى                                          |
| --------------- | ----------------------------------------------- |
| GROUP BY        | كيجمع الـ rows باش نديرو aggregate calculations |
| Aggregates      | `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` لكل group   |
| WHERE vs HAVING | `WHERE` قبل grouping و `HAVING` من بعد grouping |

---

# الكاتب

Youness Chergui Amin

</div>
