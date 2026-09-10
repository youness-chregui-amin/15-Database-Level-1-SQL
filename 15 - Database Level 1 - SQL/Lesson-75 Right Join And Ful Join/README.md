# Lesson 75 - RIGHT JOIN and FULL JOIN

---

# Introduction

In this lesson, we learned about:

# RIGHT JOIN and FULL JOIN

`RIGHT JOIN` returns **all rows from the right table** and the matching rows from the left table. If there is no match, `NULL` is returned for the left table columns.

`FULL JOIN` returns **all rows from both tables**, matching rows where possible.

---

# Main Idea

`RIGHT JOIN` is the mirror of `LEFT JOIN`.

`FULL JOIN` combines the behavior of `LEFT JOIN` and `RIGHT JOIN` — all rows from both tables appear at least once.

---

# Example

Show all orders with customer information using `RIGHT JOIN`, and show all customers and orders using `FULL JOIN`.

---

# RIGHT JOIN and FULL JOIN

```sql id="7kq3mp"
SELECT Customers.Name,
       Orders.Amount
FROM Customers
RIGHT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

The `RIGHT JOIN` returns **all orders**, even if an order does not have a matching customer.

```sql id="f8x2ra"
SELECT Customers.Name,
       Orders.Amount
FROM Customers
FULL OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

The `FULL OUTER JOIN` returns **all customers and all orders**, including unmatched records from both tables.

---

# Result

```text id="6vwp2n"
Name   | Amount
Ahmed  | 500
NULL   | 200
Sara   | NULL
```

* `NULL | 200` means the order has no matching customer.
* `Sara | NULL` means the customer has no matching order.

---

# Important Rule

```text id="m4xq8d"
RIGHT JOIN can always be rewritten as a LEFT JOIN by swapping the table order.

FULL JOIN returns all rows from BOTH tables with NULLs for non-matches.
```

---

# Join Comparison

| Join Type  | Left Table   | Right Table  |
| ---------- | ------------ | ------------ |
| INNER JOIN | Only matched | Only matched |
| LEFT JOIN  | All rows     | Only matched |
| RIGHT JOIN | Only matched | All rows     |
| FULL JOIN  | All rows     | All rows     |

---

# Summary

| Concept    | Meaning                                    |
| ---------- | ------------------------------------------ |
| RIGHT JOIN | All rows from the right table              |
| FULL JOIN  | All rows from both tables                  |
| OUTER      | Optional keyword (`RIGHT/FULL OUTER JOIN`) |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 75 - RIGHT JOIN و FULL JOIN

---

# المقدمة

فهاد الدرس تعلمنا:

# RIGHT JOIN و FULL JOIN

`RIGHT JOIN` كيرجع **جميع الصفوف من الجدول اللي فاليمين**، والصفوف المطابقة من الجدول اللي فاليسار. إلا ما كانش تطابق، أعمدة الجدول اللي فاليسار كترجع فيها `NULL`.

`FULL JOIN` كيرجع **جميع الصفوف من الجدولين بجوج**، وكيطابق الصفوف اللي عندها تطابق.

---

# الفكرة الرئيسية

`RIGHT JOIN` هو العكس ديال `LEFT JOIN`.

`FULL JOIN` كيجمع سلوك `LEFT JOIN` و `RIGHT JOIN` — يعني جميع الصفوف من الجدولين كيبانو على الأقل مرة وحدة.

---

# المثال

نبغيو نجيبو جميع الطلبات مع معلومات الزبون باستعمال `RIGHT JOIN`، وجميع الزبناء والطلبات باستعمال `FULL JOIN`.

---

# RIGHT JOIN و FULL JOIN

```sql id="q7f1mz"
SELECT Customers.Name,
       Orders.Amount
FROM Customers
RIGHT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

`RIGHT JOIN` كيرجع **جميع الطلبات**، حتى إلا كان شي طلب ما عندوش زبون مطابق.

```sql id="r2k9px"
SELECT Customers.Name,
       Orders.Amount
FROM Customers
FULL OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

`FULL OUTER JOIN` كيرجع **جميع الزبناء وجميع الطلبات**، حتى السجلات اللي ما عندهاش تطابق فشي واحد من الجدولين.

---

# النتيجة

```text id="3mvn8k"
Name   | Amount
Ahmed  | 500
NULL   | 200
Sara   | NULL
```

* `NULL | 200` كتعني أن الطلب ما عندوش زبون مطابق.
* `Sara | NULL` كتعني أن الزبون ما عندوش طلب مطابق.

---

# القاعدة المهمة

```text id="b6r2qt"
RIGHT JOIN نقدروا ديما نحولوها لـ LEFT JOIN
إلا بدلنا ترتيب الجدولين.

FULL JOIN كيرجع جميع الصفوف من الجدولين بجوج،
وكيحط NULL فالأعمدة اللي ما عندهاش تطابق.
```

---

# مقارنة أنواع JOIN

| نوع JOIN   | الجدول اللي فاليسار | الجدول اللي فاليمين |
| ---------- | ------------------- | ------------------- |
| INNER JOIN | غير المطابق         | غير المطابق         |
| LEFT JOIN  | جميع الصفوف         | غير المطابق         |
| RIGHT JOIN | غير المطابق         | جميع الصفوف         |
| FULL JOIN  | جميع الصفوف         | جميع الصفوف         |

---

# الخلاصة

| المفهوم    | المعنى                                  |
| ---------- | --------------------------------------- |
| RIGHT JOIN | جميع الصفوف من الجدول اللي فاليمين      |
| FULL JOIN  | جميع الصفوف من الجدولين بجوج            |
| OUTER      | كلمة اختيارية (`RIGHT/FULL OUTER JOIN`) |

---

# المؤلف

**Youness Chergui Amin**

</div>
