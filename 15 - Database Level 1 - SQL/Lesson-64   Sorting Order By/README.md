# Lesson 64 - Sorting ORDER BY

---

# Introduction

In this lesson, we learned about:

# ORDER BY

`ORDER BY` is the clause that sorts the result set in ascending (`ASC`) or descending (`DESC`) order based on one or more columns.

---

# Main Idea

`ORDER BY` is always the last clause in a query.

`ASC` is the default sorting direction.

You can sort by multiple columns, and each column can have its own sorting direction.

---

# Example

Sort employees by name, salary, or multiple columns.

---

# ORDER BY

```sql
SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID IN (1, 2, 3)
ORDER BY FirstName;

SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID = 1
ORDER BY MonthlySalary DESC;

SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID = 1
ORDER BY FirstName, MonthlySalary DESC;
```

---

# Result

```text
ID | FirstName | MonthlySalary

1  | Alice     | 5000
2  | Bob       | 6000
3  | Charlie   | 5500

...sorted according to ORDER BY clause.
```

---

# Important Rule

```text
DESC applies only to the column it immediately follows.

ORDER BY is evaluated AFTER SELECT, WHERE, GROUP BY, and HAVING.
```

---

# ORDER BY Directions

| Keyword | Effect                         |
| ------- | ------------------------------ |
| `ASC`   | Ascending (A-Z, 0-9) — default |
| `DESC`  | Descending (Z-A, 9-0)          |

---

# Summary

| Concept      | Meaning                                    |
| ------------ | ------------------------------------------ |
| `ORDER BY`   | Sorts the result set                       |
| `ASC`        | Ascending order (default)                  |
| `DESC`       | Descending order                           |
| Multi-column | Comma-separated with individual directions |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 64 - Sorting ORDER BY

---

# المقدمة

فهاد الدرس تعلمنا على:

# ORDER BY

`ORDER BY` هي clause كتستعمل باش نرتبو الـ result set تصاعدياً (`ASC`) أو تنازلياً (`DESC`) حسب واحد أو أكثر من الـ columns.

---

# الفكرة الرئيسية

`ORDER BY` كتكون دائماً هي آخر clause فالـ query.

`ASC` هي طريقة الترتيب الافتراضية.

ونقدرو نرتبو باستعمال أكثر من column، وكل column يقدر يكون عندو direction ديالو.

---

# المثال

غادي نرتبو الموظفين حسب الاسم، أو الـ salary، أو حسب أكثر من column.

---

# ORDER BY

```sql
SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID IN (1, 2, 3)
ORDER BY FirstName;

SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID = 1
ORDER BY MonthlySalary DESC;

SELECT ID, FirstName, MonthlySalary FROM Employees
WHERE DepartmentID = 1
ORDER BY FirstName, MonthlySalary DESC;
```

---

# النتيجة

```text
ID | FirstName | MonthlySalary

1  | Alice     | 5000
2  | Bob       | 6000
3  | Charlie   | 5500

...النتائج مرتبة حسب ORDER BY.
```

---

# قاعدة مهمة

```text
DESC كتطبق غير على الـ column اللي جا مباشرة من بعدها.

ORDER BY كتتقيّم من بعد SELECT و WHERE و GROUP BY و HAVING.
```

---

# ORDER BY Directions

| Keyword | التأثير                             |
| ------- | ----------------------------------- |
| `ASC`   | ترتيب تصاعدي (A-Z, 0-9) — الافتراضي |
| `DESC`  | ترتيب تنازلي (Z-A, 9-0)             |

---

# الخلاصة

| Concept      | المعنى                                                      |
| ------------ | ----------------------------------------------------------- |
| `ORDER BY`   | كترتب الـ result set                                        |
| `ASC`        | ترتيب تصاعدي (الافتراضي)                                    |
| `DESC`       | ترتيب تنازلي                                                |
| Multi-column | عدة columns مفصولين بـ comma، وكل واحد عندو direction ديالو |

---

# الكاتب

**Youness Chergui Amin**

</div>
