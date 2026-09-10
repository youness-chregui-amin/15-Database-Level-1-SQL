# Lesson 63 - IN Operator

---

# Introduction

In this lesson, we learned about:

# IN

`IN` is an operator that checks whether a value matches any value in a list or subquery.

It is a shorthand for multiple `OR` conditions.

---

# Main Idea

`IN` is cleaner and often performs better than chaining multiple `OR` conditions.

It works with value lists and subqueries.

---

# Example

Filter employees by multiple department IDs, first names, or use a subquery.

---

# IN Operator

```sql id="q7n3kx"
SELECT * FROM Employees
WHERE DepartmentID IN (1, 2, 3, 4);

SELECT * FROM Employees
WHERE FirstName IN ('John', 'Jane', 'Doe', 'Smith');

SELECT Departments.Name FROM Departments
WHERE ID IN (
    SELECT DepartmentID
    FROM Employees
    WHERE MonthlySalary <= 210
);

SELECT Departments.Name FROM Departments
WHERE ID NOT IN (
    SELECT DepartmentID
    FROM Employees
    WHERE MonthlySalary <= 210
);
```

---

# Result

```text id="m5v8rc"
Returns rows where the column value matches any value
in the list or subquery.
```

---

# Important Rule

```text id="x2k6pa"
Be careful with NOT IN and NULL — if the subquery returns NULL,
the entire NOT IN result set will be empty.
```

---

# IN vs OR

| Feature     | `IN`           | Multiple `OR`s |
| ----------- | -------------- | -------------- |
| Readability | Clean, compact | Verbose        |
| Performance | Often better   | Usually same   |
| Subquery    | Supported      | Not supported  |

---

# Summary

| Concept  | Meaning                                |
| -------- | -------------------------------------- |
| `IN`     | Shorthand for multiple `OR` conditions |
| `NOT IN` | Excludes values in the list            |
| Subquery | `IN` accepts query results             |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 63 - IN Operator

---

# المقدمة

فهاد الدرس تعلمنا على:

# IN

`IN` هو operator كيتحقق واش شي value كتطابق مع شي value من list أو نتيجة ديال subquery.

وهو طريقة مختصرة باش نعوضو بزاف ديال شروط `OR`.

---

# الفكرة الرئيسية

`IN` أوضح وأسهل فالقراءة، وغالباً كيكون أحسن من كتابة بزاف ديال شروط `OR` وراء بعضياتهم.

وكيخدم مع value lists ومع subqueries.

---

# المثال

غادي نصفيّو الموظفين حسب بزاف ديال `DepartmentID`، أو حسب `FirstName`، أو نستعملو subquery.

---

# IN Operator

```sql id="w9f4tz"
SELECT * FROM Employees
WHERE DepartmentID IN (1, 2, 3, 4);

SELECT * FROM Employees
WHERE FirstName IN ('John', 'Jane', 'Doe', 'Smith');

SELECT Departments.Name FROM Departments
WHERE ID IN (
    SELECT DepartmentID
    FROM Employees
    WHERE MonthlySalary <= 210
);

SELECT Departments.Name FROM Departments
WHERE ID NOT IN (
    SELECT DepartmentID
    FROM Employees
    WHERE MonthlySalary <= 210
);
```

---

# النتيجة

```text id="c6r2ym"
كيتم إرجاع الـ rows اللي القيمة ديال الـ column
فيها كتطابق شي value من الـ list أو الـ subquery.
```

---

# قاعدة مهمة

```text id="p8k5vd"
خاصك ترد البال لـ NOT IN و NULL — إلا رجعات الـ subquery
قيمة NULL، فالنتيجة كاملة ديال NOT IN تقدر تكون خاوية.
```

---

# IN vs OR

| الخاصية       | `IN`          | Multiple `OR`s  |
| ------------- | ------------- | --------------- |
| سهولة القراءة | واضحة ومختصرة | طويلة           |
| Performance   | غالباً أحسن   | غالباً نفس الشي |
| Subquery      | مدعومة        | ما مدعماش       |

---

# الخلاصة

| Concept  | المعنى                           |
| -------- | -------------------------------- |
| `IN`     | طريقة مختصرة لعدة شروط `OR`      |
| `NOT IN` | كتستثني القيم الموجودة فالـ list |
| Subquery | `IN` كتقبل نتائج query           |

---

# الكاتب

**Youness Chergui Amin**

</div>
