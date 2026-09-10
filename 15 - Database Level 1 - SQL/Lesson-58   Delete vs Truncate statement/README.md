# Lesson 58 - Delete vs Truncate Statement

---

# Introduction

In this lesson, we learned about:

# DELETE vs TRUNCATE

`DELETE` and `TRUNCATE` are two ways to remove rows from a table.

* `DELETE` removes rows one by one with full logging.
* `TRUNCATE` deallocates entire data pages, making the removal faster.

---

# Main Idea

Choose `DELETE` when you need to filter specific rows or fire triggers.

Choose `TRUNCATE` when you need to clear all rows quickly and reset the identity counter.

---

# Example

We have a `Department` table. We insert a row and then truncate the table.

---

# TRUNCATE

```sql
INSERT INTO Department VALUES ('HR');

TRUNCATE TABLE Department;
```

---

# Result

```text
(1 row affected)

Table Department has been truncated.

All rows removed, identity counter reset.
```

---

# Important Rule

```text
TRUNCATE cannot use a WHERE clause — it removes ALL rows.

TRUNCATE resets IDENTITY to seed; DELETE does not.

TRUNCATE does NOT fire triggers.
```

---

# DELETE vs TRUNCATE

| Feature  | DELETE            | TRUNCATE                |
| -------- | ----------------- | ----------------------- |
| WHERE    | Supported         | Not supported           |
| Logging  | Row by row (full) | Page deallocations only |
| Speed    | Slower            | Very fast               |
| Identity | Preserved         | Reset to seed           |
| Triggers | Fires per row     | Does not fire           |

---

# Summary

| Concept    | Meaning                                                   |
| ---------- | --------------------------------------------------------- |
| `DELETE`   | Row-by-row removal, `WHERE` supported, identity preserved |
| `TRUNCATE` | Bulk removal, no `WHERE`, identity reset, very fast       |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 58 - DELETE vs TRUNCATE Statement

---

# المقدمة

فهاد الدرس تعلمنا على:

# DELETE vs TRUNCATE

`DELETE` و `TRUNCATE` هما جوج طرق لحذف الـ rows من واحد الـ table.

* `DELETE` كتحيد الـ rows وحدة بوحدة مع تسجيل كامل للعملية.
* `TRUNCATE` كتحيد صفحات البيانات كاملة، وهادشي كيخلي عملية الحذف أسرع.

---

# الفكرة الرئيسية

استعمل `DELETE` ملي بغيتي تحيد rows محددين باستعمال `WHERE` أو بغيتي تخدم الـ triggers.

استعمل `TRUNCATE` ملي بغيتي تحيد جميع الـ rows بسرعة وترجع الـ identity counter للبداية.

---

# المثال

عندنا table سميتها `Department`. غادي ندخلو واحد الـ row ومن بعد نستعملو `TRUNCATE`.

---

# TRUNCATE

```sql
INSERT INTO Department VALUES ('HR');

TRUNCATE TABLE Department;
```

---

# النتيجة

```text
(1 row affected)

Table Department has been truncated.

All rows removed, identity counter reset.
```

يعني جميع الـ rows تحيدو، والـ identity counter رجع للقيمة ديال البداية `seed`.

---

# قاعدة مهمة

```text
TRUNCATE ما كتدعمش WHERE — كتحيد جميع الـ rows.

TRUNCATE كترجع IDENTITY للـ seed؛ DELETE ما كتديرش هادشي.

TRUNCATE ما كتطلقش triggers.
```

---

# DELETE vs TRUNCATE

| الخاصية  | DELETE            | TRUNCATE               |
| -------- | ----------------- | ---------------------- |
| `WHERE`  | مدعومة            | ما مدعماش              |
| Logging  | row by row (full) | page deallocations فقط |
| السرعة   | أبطأ              | سريعة بزاف             |
| Identity | كيبقى محفوظ       | كيرجع للـ seed         |
| Triggers | كيتشغلو لكل row   | ما كيتشغلوش            |

---

# الخلاصة

| Concept    | المعنى                                                            |
| ---------- | ----------------------------------------------------------------- |
| `DELETE`   | حذف row by row، كتدعم `WHERE`، والـ identity كيبقى محفوظ          |
| `TRUNCATE` | حذف جماعي، بلا `WHERE`، والـ identity كيرجع للـ seed، وسريعة بزاف |

---

# الكاتب

**Youness Chergui Amin**

</div>
