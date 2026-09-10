# Lesson 73 - INNER JOIN

---

# Introduction

In this lesson, we learned about:

# INNER JOIN

`INNER JOIN` is a join type that returns only the rows where there is a matching value in both joined tables.

Rows without a match are excluded from the result.

---

# Main Idea

`INNER JOIN` is one of the most commonly used SQL joins.

It returns the intersection of two tables based on a join condition.

`JOIN` is equivalent to `INNER JOIN`.

---

# Example

Join `Customers` with `Orders`, and join `Employees` with `Departments` and `Countries`.

---

# INNER JOIN

```sql id="q8m3vx"
SELECT Customers.CustomerID,
       Customers.Name,
       Orders.Amount
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

```sql id="r5k9wp"
SELECT Employees.ID,
       Employees.FirstName,
       Employees.LastName,
       Departments.Name AS DepartmentName
FROM Departments
INNER JOIN Employees
    ON Departments.ID = Employees.DepartmentID
WHERE Departments.Name = 'IT';
```

```sql id="n7c2hm"
SELECT Employees.ID,
       Employees.LastName,
       Employees.FirstName,
       Departments.Name AS DeptName,
       Countries.Name AS CountryName
FROM Employees
INNER JOIN Departments
    ON Employees.DepartmentID = Departments.ID
INNER JOIN Countries
    ON Employees.CountryID = Countries.ID;
```

---

# Result

```text id="x4v8qa"
ID | FirstName | LastName | DeptName | CountryName
1  | Yassine    | Amrani   | IT       | Morocco
2  | Salma      | Bennani  | HR       | USA
```

Only employees that have matching records in the related tables appear in the result.

---

# Important Rule

```text id="p6t3zr"
Only matching rows from BOTH tables appear.

Unmatched rows are excluded from the result.

Use ON to specify the join condition,
usually between a Foreign Key and a Primary Key.
```

---

# INNER JOIN vs Other Joins

| Join Type  | Result                                                    |
| ---------- | --------------------------------------------------------- |
| INNER JOIN | Only matched rows from both tables                        |
| LEFT JOIN  | All rows from the left table, matched rows from the right |
| RIGHT JOIN | All rows from the right table, matched rows from the left |
| FULL JOIN  | All rows from both tables                                 |

---

# Summary

| Concept    | Meaning                                     |
| ---------- | ------------------------------------------- |
| INNER JOIN | Returns only matching rows from both tables |
| JOIN       | Shorthand for INNER JOIN                    |
| ON         | Specifies the join condition                |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 73 - INNER JOIN

---

# المقدمة

فهاد الدرس تعلمنا:

# INNER JOIN

`INNER JOIN` هو واحد النوع ديال الـ joins كيجيب غير الـ rows اللي كاين بينهم match فالجوج ديال الـ tables.

الـ rows اللي ما عندهاش match كيتحيدو من النتيجة.

---

# الفكرة الرئيسية

`INNER JOIN` من أكثر أنواع الـ joins استعمالاً فـ SQL.

كيجيب الـ intersection بين جوج tables اعتماداً على واحد الـ join condition.

`JOIN` هي نفسها `INNER JOIN`.

---

# المثال

نديرو join بين `Customers` و `Orders`، وكذلك بين `Employees` و `Departments` و `Countries`.

---

# INNER JOIN

```sql id="m2q7fy"
SELECT Customers.CustomerID,
       Customers.Name,
       Orders.Amount
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

```sql id="v9k4xp"
SELECT Employees.ID,
       Employees.FirstName,
       Employees.LastName,
       Departments.Name AS DepartmentName
FROM Departments
INNER JOIN Employees
    ON Departments.ID = Employees.DepartmentID
WHERE Departments.Name = 'IT';
```

```sql id="c5n8zr"
SELECT Employees.ID,
       Employees.LastName,
       Employees.FirstName,
       Departments.Name AS DeptName,
       Countries.Name AS CountryName
FROM Employees
INNER JOIN Departments
    ON Employees.DepartmentID = Departments.ID
INNER JOIN Countries
    ON Employees.CountryID = Countries.ID;
```

---

# النتيجة

```text id="j7w3mb"
ID | FirstName | LastName | DeptName | CountryName
1  | Yassine    | Amrani   | IT       | Morocco
2  | Salma      | Bennani  | HR       | USA
```

غير الموظفين اللي عندهم records متطابقين فـ tables المرتابطة هما اللي كيظهرو فالنتيجة.

---

# قاعدة مهمة

```text id="f3x6qt"
غير الـ rows اللي عندها match فالجوج ديال الـ tables هما اللي كيظهرو.

الـ rows اللي ما عندهاش match كيتستبعدو من النتيجة.

استعمل ON باش تحدد الـ join condition،
وغالباً كتكون العلاقة بين Foreign Key و Primary Key.
```

---

# INNER JOIN مقارنة مع أنواع أخرى

| Join Type  | النتيجة                                             |
| ---------- | --------------------------------------------------- |
| INNER JOIN | غير الـ rows اللي عندها match فالجوج                |
| LEFT JOIN  | جميع rows ديال اليسار، والـ matching rows من اليمين |
| RIGHT JOIN | جميع rows ديال اليمين، والـ matching rows من اليسار |
| FULL JOIN  | جميع rows من الجوج ديال الـ tables                  |

---

# الخلاصة

| المفهوم    | المعنى                                |
| ---------- | ------------------------------------- |
| INNER JOIN | كيرجع غير الـ rows المتطابقة من الجوج |
| JOIN       | اختصار لـ INNER JOIN                  |
| ON         | كيحدد الـ join condition              |

---

# الكاتب

Youness Chergui Amin

</div>
