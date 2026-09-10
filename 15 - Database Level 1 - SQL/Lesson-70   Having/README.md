# Lesson 70 - HAVING

---

# Introduction

In this lesson, we learned about:

# HAVING

`HAVING` is a clause that filters groups after the `GROUP BY` has been applied.

It is similar to `WHERE`, but there is an important difference:

* `WHERE` filters rows before grouping.
* `HAVING` filters groups after aggregation.

---

# Main Idea

Use `HAVING` when you need to filter based on the result of an aggregate function such as `COUNT`, `SUM`, or `AVG`.

`WHERE` cannot filter the result of an aggregate function because it is applied before grouping.

---

# Example

Find departments with more than 100 employees and hire years with more than 50 hires.

---

# HAVING

```sql id="k4m8pz"
SELECT DepartmentID,
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(MonthlySalary) > 100
ORDER BY DepartmentID;
```

```sql id="r7x2nc"
SELECT YEAR(HireDate),
    TotalHiredEm = COUNT(ID)
FROM Employees
GROUP BY YEAR(HireDate)
HAVING COUNT(ID) > 50
ORDER BY YEAR(HireDate);
```

---

# Result

```text id="w5q9bt"
DepartmentID | TotalCount | TotalSum | Average
1            | 150        | 750000   | 5000
3            | 120        | 600000   | 5000
```

Only groups that satisfy the `HAVING` condition are returned.

---

# Important Rule

```text id="m3v7ka"
Execution order:

WHERE → GROUP BY → HAVING → ORDER BY

If you can filter with WHERE, do it there because
filtering rows before grouping can reduce the data
that needs to be processed.

HAVING is used when filtering groups or aggregate results.
```

---

# WHERE vs HAVING

| Clause | When it runs    | Filters                     |
| ------ | --------------- | --------------------------- |
| WHERE  | Before GROUP BY | Individual rows             |
| HAVING | After GROUP BY  | Groups / aggregated results |

---

# Summary

| Concept | Meaning                              |
| ------- | ------------------------------------ |
| HAVING  | Filters groups after aggregation     |
| WHERE   | Filters rows before aggregation      |
| Order   | WHERE → GROUP BY → HAVING → ORDER BY |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 70 - HAVING

---

# المقدمة

فهاد الدرس تعلمنا:

# HAVING

`HAVING` هو clause كيستعمل باش يفلتر الـ groups من بعد ما كيتم تطبيق `GROUP BY`.

كيشبه لـ `WHERE`، ولكن كاين فرق مهم:

* `WHERE` كيفلتر الـ rows قبل grouping.
* `HAVING` كيفلتر الـ groups من بعد aggregation.

---

# الفكرة الرئيسية

كنستعملو `HAVING` ملي بغينا نفلتر حسب النتيجة ديال Aggregate Function بحال `COUNT` أو `SUM` أو `AVG`.

`WHERE` ما كيقدرش يفلتر النتيجة ديال Aggregate Function حيث كيتطبق قبل grouping.

---

# المثال

نجيبو الـ departments اللي فيهم أكثر من 100 موظف، والسنوات اللي توظف فيها أكثر من 50 موظف.

---

# HAVING

```sql id="n8c2yf"
SELECT DepartmentID,
    TotalCount = COUNT(MonthlySalary),
    TotalSum = SUM(MonthlySalary),
    Average = AVG(MonthlySalary)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(MonthlySalary) > 100
ORDER BY DepartmentID;
```

```sql id="q6h4mv"
SELECT YEAR(HireDate),
    TotalHiredEm = COUNT(ID)
FROM Employees
GROUP BY YEAR(HireDate)
HAVING COUNT(ID) > 50
ORDER BY YEAR(HireDate);
```

---

# النتيجة

```text id="t9p3xw"
DepartmentID | TotalCount | TotalSum | Average
1            | 150        | 750000   | 5000
3            | 120        | 600000   | 5000
```

غير الـ groups اللي كيتوافقو مع الشرط ديال `HAVING` هما اللي كيرجعو فالنتيجة.

---

# قاعدة مهمة

```text id="b7k1rz"
ترتيب التنفيذ:

WHERE → GROUP BY → HAVING → ORDER BY

إلا قدرت تدير filtering باستعمال WHERE، ديرو تما،
حيت filtering ديال الـ rows قبل grouping يقدر ينقص
من البيانات اللي خاصها تتعالج.

HAVING كتستعمل ملي بغينا نفلتر الـ groups
ولا النتائج ديال Aggregate Functions.
```

---

# WHERE vs HAVING

| Clause | فوقاش كتخدم     | شنو كتفلتر                   |
| ------ | --------------- | ---------------------------- |
| WHERE  | قبل GROUP BY    | الـ rows الفردية             |
| HAVING | من بعد GROUP BY | الـ groups / النتائج المجمعة |

---

# الخلاصة

| المفهوم | المعنى                               |
| ------- | ------------------------------------ |
| HAVING  | كيفلتر الـ groups من بعد aggregation |
| WHERE   | كيفلتر الـ rows قبل aggregation      |
| الترتيب | WHERE → GROUP BY → HAVING → ORDER BY |

---

# الكاتب

Youness Chergui Amin

</div>
