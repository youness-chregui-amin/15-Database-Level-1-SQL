# Lesson 76 - VIEW

---

# Introduction

In this lesson, we learned about:

# VIEW

A `VIEW` is a **virtual table** based on the result of a SQL `SELECT` query.

It does not store the data separately. Instead, it provides a way to access data from the underlying tables through a saved query.

---

# Main Idea

A `VIEW` lets you save a query under a name and reuse it like a table.

It can simplify repeated or complex queries and provide an additional layer of abstraction.

---

# Example

Create views for active and resigned employees, then query them.

---

# VIEW Syntax

```sql id="h7k3mp"
CREATE VIEW ActiveEmployees AS
SELECT *
FROM Employees
WHERE ExitDate IS NULL;

CREATE VIEW ResignedEmployees AS
SELECT *
FROM Employees
WHERE ExitDate IS NOT NULL;

SELECT *
FROM ActiveEmployees;

SELECT *
FROM ResignedEmployees;
```

You can also create a view that contains only specific columns:

```sql id="p4x8ra"
CREATE VIEW ActiveNames AS
SELECT ID, FirstName, LastName, Gendor
FROM Employees;

SELECT *
FROM ActiveNames;
```

---

# Result

```text id="6mwp2n"
ActiveEmployees   → employees where ExitDate IS NULL

ResignedEmployees → employees where ExitDate IS NOT NULL

ActiveNames       → a view showing only selected columns
```

---

# Important Rule

```text id="qmx4ob"
VIEWs are virtual — they do not store a separate copy of the data.

When you SELECT from a VIEW, SQL Server uses the view's underlying query
to retrieve the data.
```

---

# VIEW vs Table

| Feature            | Table | VIEW                         |
| ------------------ | ----- | ---------------------------- |
| Stores Data        | Yes   | No separate copy of the data |
| Reusable           | Yes   | Yes                          |
| Updatable          | Yes   | Sometimes                    |
| Simplifies Queries | No    | Yes                          |

---

# Summary

| Concept          | Meaning                                     |
| ---------------- | ------------------------------------------- |
| CREATE VIEW      | Creates a named virtual query               |
| SELECT from VIEW | Retrieves data through the underlying query |
| ExitDate IS NULL | Filter for active employees                 |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 76 - VIEW

---

# المقدمة

فهاد الدرس تعلمنا:

# VIEW

`VIEW` هي **virtual table** مبنية على نتيجة ديال واحد `SELECT` query.

هي ما كتخزنش نسخة مستقلة من البيانات، ولكن كتخلينا نوصلو للبيانات ديال الجداول الأصلية باستعمال query محفوظة باسم.

---

# الفكرة الرئيسية

`VIEW` كتخلينا نحفظو واحد الـ query باسم ونعاودو نستعملوه بحال إلا كان table.

كتعاوننا نبسطو الـ queries اللي كنعاودو نستعملو بزاف، وكتعطينا طبقة إضافية ديال abstraction.

---

# المثال

غادي نديرو views للموظفين اللي مازال خدامين والموظفين اللي خرجو من الخدمة، ومن بعد نستعملوهم.

---

# VIEW Syntax

```sql id="2rg5hk"
CREATE VIEW ActiveEmployees AS
SELECT *
FROM Employees
WHERE ExitDate IS NULL;

CREATE VIEW ResignedEmployees AS
SELECT *
FROM Employees
WHERE ExitDate IS NOT NULL;

SELECT *
FROM ActiveEmployees;

SELECT *
FROM ResignedEmployees;
```

ونقدرو حتى نديرو `VIEW` فيها غير أعمدة معينة:

```sql id="c53sqz"
CREATE VIEW ActiveNames AS
SELECT ID, FirstName, LastName, Gendor
FROM Employees;

SELECT *
FROM ActiveNames;
```

---

# النتيجة

```text id="9r7e0s"
ActiveEmployees   → الموظفين اللي ExitDate ديالهم NULL

ResignedEmployees → الموظفين اللي ExitDate ديالهم فيها قيمة

ActiveNames       → VIEW فيها غير الأعمدة اللي اخترنا
```

---

# القاعدة المهمة

```text id="das25f"
VIEWs هما virtual — ما كيتخزنش فيهم نسخة مستقلة من البيانات.

ملي كتدير SELECT من VIEW، SQL Server كيستعمل الـ query
الأصلية ديال VIEW باش يجيب البيانات.
```

---

# VIEW مقارنة مع Table

| الخاصية                | Table | VIEW                              |
| ---------------------- | ----- | --------------------------------- |
| كتخزن البيانات         | نعم   | ما كتخزنش نسخة مستقلة من البيانات |
| قابلة لإعادة الاستعمال | نعم   | نعم                               |
| قابلة للتعديل          | نعم   | أحياناً                           |
| كتبسط الـ Queries      | لا    | نعم                               |

---

# الخلاصة

| المفهوم          | المعنى                                    |
| ---------------- | ----------------------------------------- |
| CREATE VIEW      | كينشئ virtual query عندها اسم             |
| SELECT from VIEW | كيجيب البيانات باستعمال الـ query الأصلية |
| ExitDate IS NULL | فلتر للموظفين اللي مازال خدامين           |

---

# المؤلف

**Youness Chergui Amin**

</div>
