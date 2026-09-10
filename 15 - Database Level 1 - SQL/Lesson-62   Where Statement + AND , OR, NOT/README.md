# Lesson 62 - WHERE Statement + AND, OR, NOT

---

# Introduction

In this lesson, we learned about:

# WHERE

`WHERE` is the clause that filters rows based on specified conditions.

You can combine multiple conditions using the logical operators `AND`, `OR`, and `NOT`.

---

# Main Idea

`WHERE` filters data based on conditions.

Logical operators help build complex filters:

* `AND` — both conditions must be true.
* `OR` — either condition can be true.
* `NOT` — reverses a condition.

---

# Example

Filter employees by gender, salary, country, and exit date.

---

# WHERE with Operators

```sql id="c4v8qn"
SELECT * FROM Employees WHERE Gendor = 'f';

SELECT * FROM Employees WHERE MonthlySalary < 500;

SELECT * FROM Employees
WHERE NOT MonthlySalary < 500 AND Gendor = 'f';

SELECT * FROM Employees WHERE CountryID <> 1;

SELECT * FROM Employees WHERE NOT ExitDate IS NULL;

SELECT * FROM Employees WHERE ExitDate IS NULL;
```

---

# Result

```text id="m7x2kp"
Returns only rows matching the filter conditions.
```

---

# Important Rule

```text id="r9d5tw"
Operator precedence: NOT > AND > OR.

Use parentheses () to explicitly control evaluation order.

Use IS NULL / IS NOT NULL — never = NULL.
```

---

# Logical Operators

| Operator | Precedence  | Meaning                      |
| -------- | ----------- | ---------------------------- |
| `NOT`    | 1 (highest) | Negates a condition          |
| `AND`    | 2           | Both conditions must be true |
| `OR`     | 3 (lowest)  | Either condition can be true |

---

# Summary

| Concept   | Meaning                             |
| --------- | ----------------------------------- |
| `WHERE`   | Filters rows by condition           |
| `AND`     | All conditions must be true         |
| `OR`      | At least one condition must be true |
| `NOT`     | Reverses a condition                |
| `IS NULL` | Checks for `NULL` values            |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 62 - WHERE Statement + AND, OR, NOT

---

# المقدمة

فهاد الدرس تعلمنا على:

# WHERE

`WHERE` هي clause كتستعمل باش نصفيّو الـ rows حسب شروط معينة.

نقدرو ندمجو أكثر من شرط باستعمال الـ logical operators: `AND` و `OR` و `NOT`.

---

# الفكرة الرئيسية

`WHERE` كتصفّي البيانات حسب الشروط.

والـ logical operators كيساعدونا نبنيو filters أكثر تعقيداً:

* `AND` — بجوج الشروط خاصهم يكونو صحيحين.
* `OR` — واحد من الشروط على الأقل يقدر يكون صحيح.
* `NOT` — كتعكس الشرط.

---

# المثال

غادي نصفيّو الموظفين حسب الـ gender، والـ salary، والـ country، والـ exit date.

---

# WHERE with Operators

```sql id="h2k6fz"
SELECT * FROM Employees WHERE Gendor = 'f';

SELECT * FROM Employees WHERE MonthlySalary < 500;

SELECT * FROM Employees
WHERE NOT MonthlySalary < 500 AND Gendor = 'f';

SELECT * FROM Employees WHERE CountryID <> 1;

SELECT * FROM Employees WHERE NOT ExitDate IS NULL;

SELECT * FROM Employees WHERE ExitDate IS NULL;
```

---

# النتيجة

```text id="v5p3la"
كيتم إرجاع غير الـ rows اللي كيتوافقو مع شروط الـ filter.
```

---

# قاعدة مهمة

```text id="n8w4ys"
ترتيب أولوية الـ operators هو: NOT > AND > OR.

استعمل الأقواس () باش تتحكم بشكل واضح فترتيب تقييم الشروط.

استعمل IS NULL / IS NOT NULL — وما تستعملش = NULL.
```

---

# Logical Operators

| Operator | الأولوية   | المعنى                                  |
| -------- | ---------- | --------------------------------------- |
| `NOT`    | 1 (الأعلى) | كيعكس الشرط                             |
| `AND`    | 2          | بجوج الشروط خاصهم يكونو صحيحين          |
| `OR`     | 3 (الأدنى) | واحد من الشروط على الأقل يقدر يكون صحيح |

---

# الخلاصة

| Concept   | المعنى                            |
| --------- | --------------------------------- |
| `WHERE`   | كتصفّي الـ rows حسب شرط           |
| `AND`     | جميع الشروط خاصها تكون صحيحة      |
| `OR`      | شرط واحد على الأقل خاصو يكون صحيح |
| `NOT`     | كيعكس الشرط                       |
| `IS NULL` | كيتحقق واش القيمة `NULL`          |

---

# الكاتب

**Youness Chergui Amin**

</div>
