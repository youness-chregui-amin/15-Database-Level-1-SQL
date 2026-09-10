# Understanding NULL in Databases

## Overview

This document explains the concept of **NULL** in databases, its meaning, usage, and impact on data operations.

---

## What is NULL?

In a database, **NULL** is a special marker that indicates that a value **does not exist**.

It represents:

* Missing data
* Unknown data

Important:

**NULL is NOT the same as:**

* 0 (zero)
* Empty string ("")
* Blank space

---

## Key Characteristics

* Represents **no value at all**
* Used in table columns
* Indicates **absence of data**
* Different from any actual value

---

## When Does NULL Occur?

NULL appears when:

* Data is **unknown**
* Data is **not provided**
* Field is **optional**
* Value is **not yet available**

---

## Uses of NULL

* Indicating missing data
* Representing optional fields
* Acting as a placeholder for future values

---

## Important Notes

* NULL can affect **query results**
* Comparisons with NULL behave differently
* Must be handled carefully in calculations

---

## Key Concepts

* NULL = No Value
* NULL ≠ 0
* NULL ≠ ""
* NULL requires special handling in SQL

---

## Example (Real-World)

If a user does not enter their phone number:

| Name  | Phone |
| ----- | ----- |
| Ahmed | NULL  |

This means the phone number is **unknown or not provided**, not empty.

---

## Summary

* NULL represents the **absence of a value**
* It is different from zero or empty values
* Used for missing or unknown data
* Must be handled carefully in queries

---

## Author

Youness Chergui Amin

---

<h1 align="center">Moroccan Arabic Version — النسخة بالدارجة المغربية</h1>

<div dir="rtl" align="right">

# فهم NULL فـ Databases

## نظرة عامة

هاد الوثيقة كتشرح مفهوم **NULL** فـ Databases، شنو كيعني، فين كنستعملوه، وكيفاش كيأثر على العمليات اللي كتدار على البيانات.

---

## شنو هو NULL؟

فـ Database، **NULL** هو واحد العلامة الخاصة اللي كتعني أن شي قيمة **ما كايناش**.

كيقدر يمثل:

</div>

<ul dir="rtl">
  <li>بيانات ناقصة</li>
  <li>بيانات مجهولة</li>
</ul>

<div dir="rtl" align="right">

### مهم:

**NULL ماشي هو نفس الشيء بحال:**

</div>

<ul dir="rtl">
  <li>0 (صفر)</li>
  <li>String خاوية ("")</li>
  <li>مسافة خاوية</li>
</ul>

<div dir="rtl" align="right">

---

## الخصائص الأساسية

</div>

<ul dir="rtl">
  <li>كيعني أنه ما كاين حتى Value</li>
  <li>كيستعمل فـ Columns ديال Tables</li>
  <li>كيدل على غياب البيانات</li>
  <li>مختلف على أي Value حقيقية</li>
</ul>

<div dir="rtl" align="right">

---

## إمتى كيوقع NULL؟

NULL كيقدر يبان ملي:

</div>

<ul dir="rtl">
  <li>البيانات مجهولة</li>
  <li>البيانات ما تعطاتش</li>
  <li>الـField اختياري</li>
  <li>الـValue مازال ما توفرتش</li>
</ul>

<div dir="rtl" align="right">

---

## استعمالات NULL

</div>

<ul dir="rtl">
  <li>باش نشيرو للبيانات الناقصة</li>
  <li>باش نمثلو Fields اختيارية</li>
  <li>كـ Placeholder لقيم غادي تتعمر من بعد</li>
</ul>

<div dir="rtl" align="right">

---

## ملاحظات مهمة

</div>

<ul dir="rtl">
  <li>NULL يقدر يأثر على نتائج الـQueries</li>
  <li>المقارنات مع NULL كتخدم بطريقة مختلفة</li>
  <li>خاص التعامل معاه بحذر فـ Calculations</li>
</ul>

<div dir="rtl" align="right">

---

## المفاهيم الأساسية

</div>

<ul dir="rtl">
  <li>NULL = ما كايناش Value</li>
  <li>NULL ≠ 0</li>
  <li>NULL ≠ ""</li>
  <li>NULL خاصو تعامل خاص فـ SQL</li>
</ul>

<div dir="rtl" align="right">

---

## مثال من الواقع

إلى User ما دخلش رقم الهاتف ديالو:

</div>

| Name  | Phone |
| ----- | ----- |
| Ahmed | NULL  |

<div dir="rtl" align="right">

هادشي كيعني أن رقم الهاتف **مجهول أو ما تعطاتش**، وماشي أنه خاوي.

---

## الخلاصة

</div>

<ul dir="rtl">
  <li>NULL كيمثل غياب شي Value</li>
  <li>مختلف على الصفر أو القيم الخاوية</li>
  <li>كيستعمل مع البيانات الناقصة أو المجهولة</li>
  <li>خاص التعامل معاه بحذر فـ Queries</li>
</ul>

<div dir="rtl" align="right">

---

## المؤلف

Youness Chergui Amin

</div>
