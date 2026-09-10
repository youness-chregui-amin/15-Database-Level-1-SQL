# Lesson 60 - SELECT Statement

---

# Introduction

In this lesson, we learned about:

# SELECT

`SELECT` is the most fundamental SQL command used to retrieve data from a database.

It queries tables and returns result sets without modifying data.

---

# Main Idea

`SELECT` is read-only.

Use `*` to retrieve all columns, or specify column names to limit the output.

---

# Example

Query data from the `Employees`, `Departments`, and `Countries` tables.

---

# SELECT

```sql id="q8m2vk"
SELECT * FROM Employees;

SELECT Employees.* FROM Employees;

SELECT ID, FirstName FROM Employees;

SELECT * FROM Departments;

SELECT * FROM Countries;
```

---

# Result

```text id="m4p7sx"
Returns all columns and rows from the specified tables.
```

---

# Important Rule

```text id="c6w9na"
SELECT is a DML (Data Manipulation Language) command.

It NEVER modifies data — it only reads and displays it.
```

---

# SELECT Variations

| Form                | Description                      |
| ------------------- | -------------------------------- |
| `SELECT *`          | All columns from the table       |
| `SELECT table.*`    | All columns with table qualifier |
| `SELECT col1, col2` | Specific columns only            |

---

# Summary

| Concept  | Meaning                    |
| -------- | -------------------------- |
| `SELECT` | Retrieves data from tables |
| `FROM`   | Specifies the source table |
| `*`      | Wildcard for all columns   |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 60 - SELECT Statement

---

# المقدمة

فهاد الدرس تعلمنا على:

# SELECT

`SELECT` هو واحد من أهم أوامر SQL، وكيستعمل باش نجيبو البيانات من قاعدة البيانات.

كيعمل `query` على الـ tables وكيعطينا النتائج بلا ما يبدل البيانات.

---

# الفكرة الرئيسية

`SELECT` هو `read-only`.

نستعملو `*` باش نجيبو جميع الـ columns، أو نحددو أسماء الـ columns اللي بغينا باش نجيبو غير البيانات المطلوبة.

---

# المثال

غادي نديرو `query` على الـ tables التالية:

* `Employees`
* `Departments`
* `Countries`

---

# SELECT

```sql id="r5t1pz"
SELECT * FROM Employees;

SELECT Employees.* FROM Employees;

SELECT ID, FirstName FROM Employees;

SELECT * FROM Departments;

SELECT * FROM Countries;
```

---

# النتيجة

```text id="x2k6jd"
كيتم إرجاع جميع الـ columns والـ rows
من الـ tables المحددة.
```

---

# قاعدة مهمة

```text id="p7v3hc"
SELECT هو DML (Data Manipulation Language) command.

ما كيبدلش البيانات — غير كيقراها وكيعرضها.
```

---

# SELECT Variations

| الشكل               | الوصف                               |
| ------------------- | ----------------------------------- |
| `SELECT *`          | جميع الـ columns من الـ table       |
| `SELECT table.*`    | جميع الـ columns مع تحديد الـ table |
| `SELECT col1, col2` | غير الـ columns المحددة             |

---

# الخلاصة

| Concept  | المعنى                                       |
| -------- | -------------------------------------------- |
| `SELECT` | كيجيب البيانات من الـ tables                 |
| `FROM`   | كيحدد الـ table اللي غادي نجيبو منو البيانات |
| `*`      | Wildcard كتعني جميع الـ columns              |

---

# الكاتب

**Youness Chergui Amin**

</div>
