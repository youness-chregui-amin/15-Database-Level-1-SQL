# Lesson 66 - SELECT AS

---

# Introduction

In this lesson, we learned about:

# AS (Aliases)

`AS` is a keyword used to create a temporary name for a column or table in the query result. It does not change the actual column or table name in the database.

---

# Main Idea

Aliases improve readability and make SQL queries easier to understand.

They are especially useful for:

* Calculated columns
* Concatenated values
* Function results
* Shortening table names in joins

---

# Example

We can use aliases to give meaningful names to calculated columns such as `FullName`, `YearSalary`, `BonusAmount`, and `Age`.

---

# SELECT AS

```sql
SELECT ID, FirstName + ' ' + LastName AS FullName
FROM Employees;

SELECT ID, FirstName, MonthlySalary,
       MonthlySalary * 12 AS YearSalary,
       MonthlySalary * BonusPerc AS BonusAmount
FROM Employees;

SELECT ID,
       FirstName + ' ' + LastName AS FullName,
       DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM Employees;
```

---

# Result

```text
ID | FullName        | MonthlySalary | YearSalary | BonusAmount
412| Yassine Amrani  | 50000         | 600000     | 12500
```

The aliases make the calculated columns easier to understand in the result.

---

# Important Rule

```text
Aliases only affect the query output.
They do NOT rename columns in the actual table.

Both `column AS alias` and `alias = column`
syntax are valid in SQL Server.
```

---

# Alias Syntax

| Form        | Example            |
| ----------- | ------------------ |
| AS keyword  | `column AS alias`  |
| = syntax    | `alias = column`   |
| Table alias | `FROM Employees e` |

### Example of Table Alias

```sql
SELECT e.FirstName, e.LastName
FROM Employees AS e;
```

Here, `e` is a temporary alias for the `Employees` table.

---

# Summary

| Concept      | Meaning                                                 |
| ------------ | ------------------------------------------------------- |
| AS           | Creates a temporary column or table alias               |
| Column alias | Gives an output column a different name for readability |
| Table alias  | Shortens a table name, especially in joins              |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 66 - SELECT AS

---

# المقدمة

فهاد الدرس تعلمنا:

# AS (Aliases)

`AS` هي كلمة مفتاحية كتستعمل باش نعطيو اسم مؤقت لعمود أو جدول فالـ query result.

هاد الاسم المؤقت **ما كيبدلش الاسم الحقيقي** ديال العمود أو الجدول فقاعدة البيانات.

---

# الفكرة الرئيسية

Aliases كيساعدونا نخليو الـ SQL queries ساهلين فالقراءة والفهم.

كيكونو مفيدين خصوصاً مع:

* الأعمدة المحسوبة
* دمج القيم
* نتائج الـ functions
* اختصار أسماء الجداول فالـ joins

---

# المثال

نقدرو نستعملو aliases باش نعطيو أسماء واضحة للأعمدة المحسوبة بحال `FullName` و `YearSalary` و `BonusAmount` و `Age`.

---

# SELECT AS

```sql
SELECT ID, FirstName + ' ' + LastName AS FullName
FROM Employees;

SELECT ID, FirstName, MonthlySalary,
       MonthlySalary * 12 AS YearSalary,
       MonthlySalary * BonusPerc AS BonusAmount
FROM Employees;

SELECT ID,
       FirstName + ' ' + LastName AS FullName,
       DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM Employees;
```

---

# النتيجة

```text
ID | FullName        | MonthlySalary | YearSalary | BonusAmount
412| Yassine Amrani  | 50000         | 600000     | 12500
```

الـ aliases كيساعدونا نفهمو الأعمدة المحسوبة بسهولة فالنتيجة.

---

# قاعدة مهمة

```text
Aliases كيأثرو غير على النتيجة ديال الـ query.
ما كيبدلوش أسماء الأعمدة الحقيقية فالـ table.

جوج الطرق `column AS alias` و `alias = column`
صالحين فـ SQL Server.
```

---

# Alias Syntax

| الشكل       | المثال             |
| ----------- | ------------------ |
| باستعمال AS | `column AS alias`  |
| باستعمال =  | `alias = column`   |
| Table alias | `FROM Employees e` |

### مثال ديال Table Alias

```sql
SELECT e.FirstName, e.LastName
FROM Employees AS e;
```

هنا `e` هو alias مؤقت للـ table ديال `Employees`.

---

# الخلاصة

| المفهوم      | المعنى                                                |
| ------------ | ----------------------------------------------------- |
| AS           | كينشئ alias مؤقت لعمود أو جدول                        |
| Column alias | كيعطي للعمود اسم مختلف فالنتيجة باش تكون القراءة أسهل |
| Table alias  | كيختصر اسم الجدول، خصوصاً فالـ joins                  |

---

# الكاتب

Youness Chergui Amin

</div>
