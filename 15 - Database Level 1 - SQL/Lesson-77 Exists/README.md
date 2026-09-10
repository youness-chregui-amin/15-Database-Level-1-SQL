# Lesson 77 - EXISTS

---

# Introduction

In this lesson, we learned about:

# EXISTS

`EXISTS` is a SQL operator used in a `WHERE` clause to check whether a subquery returns **any rows**.

It returns `TRUE` if the subquery returns at least one row.

---

# Main Idea

`EXISTS` is used to filter rows in the outer query based on whether related data exists in another table.

It is commonly used with a **correlated subquery**, where the subquery refers to a column from the outer query.

---

# Example

Get all customers who have at least one order with `Amount < 600`.

---

# EXISTS Syntax

### Basic EXISTS Check

```sql id="7kq3mp"
SELECT X = 'yes'
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE CustomerID = 3
      AND Amount < 600
);
```

### Correlated EXISTS

```sql id="f8x2ra"
SELECT *
FROM Customers T1
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE CustomerID = T1.CustomerID
      AND Amount < 600
);
```

### Using TOP 1

```sql id="6mwp2n"
SELECT *
FROM Customers T1
WHERE EXISTS (
    SELECT TOP 1 *
    FROM Orders
    WHERE CustomerID = T1.CustomerID
      AND Amount < 600
);
```

### NOT EXISTS

Get customers who have **no orders**:

```sql id="qmx4ob"
SELECT *
FROM Customers C4
WHERE NOT EXISTS (
    SELECT TOP 1 *
    FROM Orders
    WHERE Orders.CustomerID = C4.CustomerID
);
```

---

# Result

```text id="m4xq8d"
EXISTS      → returns customers who have matching orders

NOT EXISTS  → returns customers who have NO orders at all
```

---

# Important Rule

```text id="p9r2vt"
EXISTS only cares whether ANY row is returned.

It does not care about the values returned by the subquery.

TOP 1 can make the intention explicit because only the existence
of the first matching row matters.

NOT EXISTS is useful for finding rows with no related data.
```

---

# EXISTS vs IN

| Feature              | EXISTS                                       | IN                                    |
| -------------------- | -------------------------------------------- | ------------------------------------- |
| Works with           | Subqueries, especially correlated subqueries | Value lists and subqueries            |
| Performance          | Depends on the query and data                | Depends on the query and data         |
| NULL handling        | Generally safer for existence checks         | `NOT IN` can cause issues with `NULL` |
| Stops at first match | Can stop once a match is found               | Depends on the execution plan         |

---

# Summary

| Concept    | Meaning                                    |
| ---------- | ------------------------------------------ |
| EXISTS     | `TRUE` if the subquery returns any rows    |
| NOT EXISTS | `TRUE` if the subquery returns zero rows   |
| TOP 1      | Can limit the subquery to one matching row |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 77 - EXISTS

---

# المقدمة

فهاد الدرس تعلمنا:

# EXISTS

`EXISTS` هو واحد الـ SQL operator كنستعملوه داخل `WHERE` باش نشوفو واش الـ subquery رجعات **شي صفوف**.

كتكون النتيجة `TRUE` إلا كان الـ subquery رجع على الأقل صف واحد.

---

# الفكرة الرئيسية

`EXISTS` كنستعملوه باش نصفيّو الصفوف ديال الـ outer query على حسب واش كاينة بيانات مرتبطة فجدول آخر.

كيستعمل بزاف مع **correlated subquery**، يعني الـ subquery كتستعمل شي column من الـ outer query.

---

# المثال

نبغيو نجيبو جميع الزبناء اللي عندهم على الأقل واحد `Order` فيه `Amount < 600`.

---

# EXISTS Syntax

### Basic EXISTS Check

```sql id="2rg5hk"
SELECT X = 'yes'
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE CustomerID = 3
      AND Amount < 600
);
```

### Correlated EXISTS

```sql id="c53sqz"
SELECT *
FROM Customers T1
WHERE EXISTS (
    SELECT *
    FROM Orders
    WHERE CustomerID = T1.CustomerID
      AND Amount < 600
);
```

هنا `T1.CustomerID` جاية من الـ outer query، وهادشي اللي كيخلي الـ subquery مرتبطة بكل customer.

### باستعمال TOP 1

```sql id="9r7e0s"
SELECT *
FROM Customers T1
WHERE EXISTS (
    SELECT TOP 1 *
    FROM Orders
    WHERE CustomerID = T1.CustomerID
      AND Amount < 600
);
```

### NOT EXISTS

باش نجيبو الزبناء اللي **ما عندهم حتى Order**:

```sql id="das25f"
SELECT *
FROM Customers C4
WHERE NOT EXISTS (
    SELECT TOP 1 *
    FROM Orders
    WHERE Orders.CustomerID = C4.CustomerID
);
```

---

# النتيجة

```text id="b6r2qt"
EXISTS      → كيرجع الزبناء اللي عندهم Orders مطابقين

NOT EXISTS  → كيرجع الزبناء اللي ما عندهم حتى Order
```

---

# القاعدة المهمة

```text id="r2k9px"
EXISTS كيهتم غير واش كاين شي صف رجعو الـ subquery.

ما كيهتمش بالقيم اللي رجعاتها الـ subquery.

TOP 1 يقدر يوضح الفكرة حيث EXISTS محتاج غير يعرف واش كاين
أول تطابق.

NOT EXISTS مفيد باش نلقاو السجلات اللي ما عندهاش بيانات مرتبطة.
```

---

# EXISTS مقارنة مع IN

| الخاصية                  | EXISTS                                   | IN                                 |
| ------------------------ | ---------------------------------------- | ---------------------------------- |
| كيخدم مع                 | Subqueries، خصوصاً correlated subqueries | Value lists و subqueries           |
| الأداء                   | كيختلف حسب الـ query والبيانات           | كيختلف حسب الـ query والبيانات     |
| التعامل مع NULL          | غالباً أكثر أماناً فـ existence checks   | `NOT IN` يقدر يسبب مشاكل مع `NULL` |
| كيقدر يوقف عند أول تطابق | نعم، حسب execution plan                  | كيختلف حسب execution plan          |

---

# الخلاصة

| المفهوم    | المعنى                                |
| ---------- | ------------------------------------- |
| EXISTS     | `TRUE` إلا رجع الـ subquery شي صفوف   |
| NOT EXISTS | `TRUE` إلا ما رجع الـ subquery حتى صف |
| TOP 1      | يقدر يحدد الـ subquery فصف واحد مطابق |

---

# المؤلف

**Youness Chergui Amin**

</div>
