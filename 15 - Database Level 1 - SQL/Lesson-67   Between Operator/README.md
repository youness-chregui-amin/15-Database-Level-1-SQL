# Lesson 67 - BETWEEN Operator

---

# Introduction

In this lesson, we learned about:

# BETWEEN

`BETWEEN` is an operator that filters results within a specific range, including both boundary values.

It can be used with numbers, dates, and text.

---

# Main Idea

`BETWEEN` is a cleaner alternative to using `>=` and `<=`.

It is **inclusive**, which means both the lower and upper boundary values are included in the result.

---

# Example

Find employees whose monthly salary is between 500 and 1000.

---

# BETWEEN

```sql
SELECT * FROM Employees
WHERE MonthlySalary BETWEEN 500 AND 1000;
```

Equivalent to:

```sql
SELECT * FROM Employees
WHERE MonthlySalary >= 500
  AND MonthlySalary <= 1000;
```

---

# Result

```text
Returns all employees with a salary from 500 to 1000,
including employees with exactly 500 or exactly 1000.
```

---

# Important Rule

```text
BETWEEN is INCLUSIVE — it includes both the lower
and upper boundary values.

Use NOT BETWEEN to exclude a range.
```

---

# BETWEEN with Data Types

| Type   | Example                                 |
| ------ | --------------------------------------- |
| Number | `BETWEEN 500 AND 1000`                  |
| Date   | `BETWEEN '2020-01-01' AND '2020-12-31'` |
| String | `BETWEEN 'A' AND 'C'`                   |

---

# Summary

| Concept     | Meaning                                  |
| ----------- | ---------------------------------------- |
| BETWEEN     | Filters values within an inclusive range |
| NOT BETWEEN | Excludes values within a range           |
| Boundaries  | Both lower and upper values are included |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 67 - BETWEEN Operator

---

# المقدمة

فهاد الدرس تعلمنا:

# BETWEEN

`BETWEEN` هو operator كيستعمل باش يفلتر النتائج داخل واحد الـ range معين، وكيشمل حتى القيم ديال الحدود.

كيقدر يتستعمل مع الأرقام، التواريخ، وحتى النصوص.

---

# الفكرة الرئيسية

`BETWEEN` هو طريقة أسهل وأنظف من استعمال `>=` و `<=`.

وهو **inclusive**، يعني كيشمل القيمة الصغيرة والقيمة الكبيرة بجوج.

---

# المثال

نقلبو على الموظفين اللي الـ monthly salary ديالهم بين 500 و1000.

---

# BETWEEN

```sql
SELECT * FROM Employees
WHERE MonthlySalary BETWEEN 500 AND 1000;
```

نفسها بحال:

```sql
SELECT * FROM Employees
WHERE MonthlySalary >= 500
  AND MonthlySalary <= 1000;
```

---

# النتيجة

```text
كترجع جميع الموظفين اللي الـ salary ديالهم بين 500 و1000،
وكتشمل حتى اللي عندو بالضبط 500 أو بالضبط 1000.
```

---

# قاعدة مهمة

```text
BETWEEN هو INCLUSIVE — يعني كيشمل بجوج الحدود:
القيمة الصغيرة والقيمة الكبيرة.

استعمل NOT BETWEEN إلا بغيتي تستثني واحد الـ range.
```

---

# BETWEEN مع أنواع البيانات

| النوع  | المثال                                  |
| ------ | --------------------------------------- |
| Number | `BETWEEN 500 AND 1000`                  |
| Date   | `BETWEEN '2020-01-01' AND '2020-12-31'` |
| String | `BETWEEN 'A' AND 'C'`                   |

---

# الخلاصة

| المفهوم     | المعنى                                |
| ----------- | ------------------------------------- |
| BETWEEN     | كيفلتر القيم داخل range وكيشمل الحدود |
| NOT BETWEEN | كيستثني القيم اللي داخل range         |
| Boundaries  | بجوج الحدود كيتحسبو فالنتيجة          |

---

# الكاتب

Youness Chergui Amin

</div>
