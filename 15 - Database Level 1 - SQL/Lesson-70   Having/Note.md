# Quick Note - HAVING

---

# The Idea Simply

`WHERE` filters **rows** before grouping.

`HAVING` filters **groups** after grouping.

> In simple terms: `WHERE` is used to filter normal row data, while `HAVING` is used to filter results of aggregate functions such as `COUNT`, `SUM`, and `AVG`.

---

# The Order

```text
SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
```

---

# Quick Example

Find the departments that have more than 5 employees:

```sql id="h9q2mv"
SELECT DepartmentID, COUNT(*)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 5;
```

Here:

* `GROUP BY` groups employees by `DepartmentID`.
* `COUNT(*)` counts the employees in each department.
* `HAVING COUNT(*) > 5` keeps only departments with more than 5 employees.

---

# Important

* If you can filter using `WHERE`, use `WHERE` because filtering rows before grouping can reduce the amount of data that needs to be grouped.
* Use `HAVING` when you need to filter based on an aggregate result such as `COUNT`, `SUM`, or `AVG`.

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# نوتة سريعة - HAVING

---

# الفكرة ببساطة

`WHERE` كيفلتر **الـ rows** قبل ما نديرو grouping.

`HAVING` كيفلتر **الـ groups** من بعد ما نديرو grouping.

> ببساطة: `WHERE` كنستعملوه مع البيانات العادية، و`HAVING` كنستعملوه ملي بغينا نفلتر على نتيجة ديال Aggregate Function بحال `COUNT` و `SUM` و `AVG`.

---

# الترتيب

```text
SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
```

---

# مثال سريع

نجيبو الـ departments اللي فيهم أكثر من 5 موظفين:

```sql id="t4k7px"
SELECT DepartmentID, COUNT(*)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*) > 5;
```

هنا:

* `GROUP BY` كيجمع الموظفين حسب `DepartmentID`.
* `COUNT(*)` كيحسب عدد الموظفين فكل Department.
* `HAVING COUNT(*) > 5` كيبقي غير الـ departments اللي فيهم أكثر من 5 موظفين.

---

# مهم

* إلا قدرت تفلتر باستعمال `WHERE`، استعمل `WHERE` حيث filtering قبل grouping يقدر ينقص من البيانات اللي خاصها تدخل للـ grouping.
* استعمل `HAVING` ملي بغيتي تفلتر على نتيجة ديال Aggregate Function بحال `COUNT` أو `SUM` أو `AVG`.

</div>
