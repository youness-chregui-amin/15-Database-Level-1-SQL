# Lesson 65 - SELECT TOP Statement

---

# Introduction

In this lesson, we learned about:

# SELECT TOP

`SELECT TOP` is a clause specific to SQL Server that limits the number or percentage of rows returned in a query result set.

---

# Main Idea

`SELECT TOP` is placed right after `SELECT`.

Use it with `ORDER BY` to get meaningful "top" results.

It supports both a fixed number of rows and a percentage of rows.

---

# Example

Get the top 3 employees, top 10%, and top 3 distinct salaries.

---

# SELECT TOP

```sql id="t5m8qx"
SELECT TOP 3 * FROM Employees;

SELECT TOP 10 PERCENT * FROM Employees;

SELECT DISTINCT TOP 3 MonthlySalary
FROM Employees
ORDER BY MonthlySalary DESC;

SELECT ID, FirstName, LastName, MonthlySalary
FROM Employees
WHERE MonthlySalary IN (
    SELECT DISTINCT TOP 3 MonthlySalary
    FROM Employees
    ORDER BY MonthlySalary DESC
)
ORDER BY MonthlySalary DESC;
```

---

# Result

```text id="v2k6pn"
TOP 3:    Returns the first 3 rows.

TOP 10%:  Returns approximately 10% of rows.

TOP 3 salaries: Returns employees with the 3 highest unique salaries.
```

---

# Important Rule

```text id="r7c4ma"
Without ORDER BY, TOP returns an arbitrary set of rows.

Always use ORDER BY to get deterministic "top" results.
```

---

# TOP Variations

| Form            | Description                           |
| --------------- | ------------------------------------- |
| `TOP n`         | Fixed number of rows                  |
| `TOP n PERCENT` | Percentage of rows                    |
| `WITH TIES`     | Includes rows matching the last value |

---

# Summary

| Concept      | Meaning                           |
| ------------ | --------------------------------- |
| `SELECT TOP` | Limits rows returned              |
| `PERCENT`    | Returns a percentage of rows      |
| `WITH TIES`  | Includes ties with the last value |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 65 - SELECT TOP Statement

---

# المقدمة

فهاد الدرس تعلمنا على:

# SELECT TOP

`SELECT TOP` هي clause خاصة بـ SQL Server، وكتستعمل باش نحددو عدد أو نسبة الـ rows اللي غادي ترجع فالـ query result set.

---

# الفكرة الرئيسية

`SELECT TOP` كتجي مباشرة من بعد `SELECT`.

كنستعملوها مع `ORDER BY` باش نجيبو نتائج "top" عندها معنى واضح.

وكتدعم عدد محدد ديال الـ rows أو نسبة مئوية منهم.

---

# المثال

غادي نجيبو أعلى 3 ديال الموظفين، وأعلى 10%، وأعلى 3 ديال الـ salaries المختلفة.

---

# SELECT TOP

```sql id="q9w3kf"
SELECT TOP 3 * FROM Employees;

SELECT TOP 10 PERCENT * FROM Employees;

SELECT DISTINCT TOP 3 MonthlySalary
FROM Employees
ORDER BY MonthlySalary DESC;

SELECT ID, FirstName, LastName, MonthlySalary
FROM Employees
WHERE MonthlySalary IN (
    SELECT DISTINCT TOP 3 MonthlySalary
    FROM Employees
    ORDER BY MonthlySalary DESC
)
ORDER BY MonthlySalary DESC;
```

---

# النتيجة

```text id="m6p2zr"
TOP 3:    كترجع أول 3 rows.

TOP 10%:  كترجع تقريباً 10% من الـ rows.

TOP 3 salaries: كترجع الموظفين اللي عندهم أعلى 3 salaries مختلفة.
```

---

# قاعدة مهمة

```text id="x4n7vc"
بلا ORDER BY، TOP تقدر ترجع مجموعة عشوائية من الـ rows.

ديما استعمل ORDER BY باش تحصل على نتائج "top" محددة وواضحة.
```

---

# TOP Variations

| الشكل           | الوصف                                        |
| --------------- | -------------------------------------------- |
| `TOP n`         | عدد محدد من الـ rows                         |
| `TOP n PERCENT` | نسبة مئوية من الـ rows                       |
| `WITH TIES`     | كتزيد الـ rows اللي عندها نفس القيمة الأخيرة |

---

# الخلاصة

| Concept      | المعنى                                   |
| ------------ | ---------------------------------------- |
| `SELECT TOP` | كتحدد عدد الـ rows اللي كترجع            |
| `PERCENT`    | كترجع نسبة مئوية من الـ rows             |
| `WITH TIES`  | كتدخل الـ rows اللي متساويين مع آخر قيمة |

---

# الكاتب

**Youness Chergui Amin**

</div>
