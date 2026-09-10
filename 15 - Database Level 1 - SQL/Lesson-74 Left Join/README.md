# Lesson 74 - LEFT JOIN

---

# Introduction

In this lesson, we learned about:

# LEFT JOIN

`LEFT JOIN` is a join type that returns **all rows from the left table** and the matching rows from the right table.

If there is no matching row in the right table, `NULL` is returned for the right table columns.

---

# Main Idea

`LEFT JOIN` preserves **all rows from the left (first) table**.

Use it when you want to retrieve all records from the primary table, even if some records do not have a matching record in the secondary table.

---

# Example

Show all customers, including customers who have not placed any orders.

---

# LEFT JOIN

```sql
SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

This returns all customers, whether they have orders or not.

To find only customers who **have not placed any orders**:

```sql
SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;
```

---

# Result

```text
Name   | Amount
Ahmed  | 500
Sara   | NULL
John   | 300
```

`Sara` has `NULL` because she has no matching order.

---

# Important Rule

```text
LEFT JOIN returns ALL rows from the left table.

Non-matching right table columns show NULL.

Use WHERE right_table_column IS NULL to find unmatched rows.
```

---

# LEFT JOIN vs INNER JOIN

| Feature        | LEFT JOIN                          | INNER JOIN                |
| -------------- | ---------------------------------- | ------------------------- |
| Left rows      | Always returned                    | Only matched              |
| Right no match | NULLs returned                     | Row excluded              |
| Common use     | All customers, even without orders | Customers who have orders |

---

# Summary

| Concept   | Meaning                                          |
| --------- | ------------------------------------------------ |
| LEFT JOIN | All rows from left, matched rows from right      |
| OUTER     | Optional keyword (`LEFT OUTER JOIN = LEFT JOIN`) |
| IS NULL   | Finds non-matching rows in the right table       |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 74 - LEFT JOIN

---

# المقدمة

فهاد الدرس تعلمنا:

# LEFT JOIN

`LEFT JOIN` هو واحد النوع ديال `JOIN` كيجيب **جميع الصفوف من الجدول اللي فاليسار**، وكيجيب الصفوف المطابقة من الجدول اللي فاليمين.

إلا ما كان حتى تطابق، الأعمدة ديال الجدول اللي فاليمين كترجع فيها `NULL`.

---

# الفكرة الرئيسية

`LEFT JOIN` كيحافظ على **جميع الصفوف ديال الجدول الأول اللي فاليسار**.

كنستعملوه ملي بغينا نجيبو جميع السجلات من الجدول الرئيسي، حتى إلا ما كانش عند بعض السجلات تطابق مع الجدول الثاني.

---

# المثال

نبغيو نجيبو جميع الزبناء، حتى الزبناء اللي ما دارو حتى طلب.

---

# LEFT JOIN

```sql
SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;
```

هاد الاستعلام كيجيب جميع الزبناء، سواء عندهم طلبات أو لا.

باش نجيبو غير الزبناء اللي **ما دارو حتى طلب**:

```sql
SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;
```

---

# النتيجة

```text
Name   | Amount
Ahmed  | 500
Sara   | NULL
John   | 300
```

`Sara` عندها `NULL` حيث ما عندها حتى `Order` مطابق.

---

# القاعدة المهمة

```text
LEFT JOIN كيرجع جميع الصفوف من الجدول اللي فاليسار.

إلا ما كانش تطابق، أعمدة الجدول اللي فاليمين كتكون NULL.

كنستعملو WHERE right_table_column IS NULL باش نلقاو الصفوف اللي ما عندهاش تطابق.
```

---

# LEFT JOIN مقارنة مع INNER JOIN

| الخاصية                   | LEFT JOIN                             | INNER JOIN               |
| ------------------------- | ------------------------------------- | ------------------------ |
| الصفوف ديال اليسار        | كيرجعهم كاملين                        | غير اللي عندهم تطابق     |
| إلا ما كانش تطابق فاليمين | كيرجع NULL                            | الصف ما كيرجعش           |
| الاستعمال الشائع          | جميع الزبناء حتى اللي ما عندهمش طلبات | الزبناء اللي عندهم طلبات |

---

# الخلاصة

| المفهوم   | المعنى                                                 |
| --------- | ------------------------------------------------------ |
| LEFT JOIN | جميع الصفوف من اليسار، والمطابق من اليمين              |
| OUTER     | كلمة اختيارية (`LEFT OUTER JOIN = LEFT JOIN`)          |
| IS NULL   | كتلقا الصفوف اللي ما عندهاش تطابق فالجدول اللي فاليمين |

---

# المؤلف

**Youness Chergui Amin**

</div>
