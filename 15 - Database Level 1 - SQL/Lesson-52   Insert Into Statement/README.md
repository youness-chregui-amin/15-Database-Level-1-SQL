# Lesson 52 - INSERT INTO Statement

## Introduction

In this lesson, we learned about:

**INSERT INTO Statement**

The `INSERT INTO` statement is used to add new rows of data into a table.

---

# Syntax

## With Column Names (Recommended)

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

---

## Without Column Names

```sql
INSERT INTO table_name
VALUES (value1, value2, value3);
```

---

## Multiple Rows

```sql
INSERT INTO table_name (column1, column2)
VALUES
    (value1_a, value2_a),
    (value1_b, value2_b);
```

---

# Example

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary)
VALUES
    (1, 'Youness', 'Chergui', 50000.00),
    (2, 'Sara', 'Ali', 60000.00);
```

---

# Notes

* String & date values → use single quotes `'value'`
* Number values → no quotes
* Can't insert duplicate `PRIMARY KEY`
* `NOT NULL` columns must have a value

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 52 - INSERT INTO Statement

## المقدمة

فهاد الدرس تعلمنا:

**INSERT INTO Statement**

الـ `INSERT INTO` كتستعمل باش نزيدو Rows جداد من البيانات داخل واحد الـTable.

---

# Syntax

## مع أسماء الـColumns — الطريقة الموصى بها

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

---

## بلا أسماء الـColumns

```sql
INSERT INTO table_name
VALUES (value1, value2, value3);
```

---

## Multiple Rows

```sql
INSERT INTO table_name (column1, column2)
VALUES
    (value1_a, value2_a),
    (value1_b, value2_b);
```

---

# Example

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary)
VALUES
    (1, 'Youness', 'Chergui', 50000.00),
    (2, 'Sara', 'Ali', 60000.00);
```

---

# Notes

* قيم الـString والـDate → كنستعملو single quotes `'value'`
* قيم الأرقام → ما كنستعملوش quotes
* مايمكنش ندخلو `PRIMARY KEY` مكررة
* الـColumns اللي فيهم `NOT NULL` خاصهم Value

---

# Author

**Youness Chergui Amin**

</div>
