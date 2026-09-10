# Lesson 85 - INDEX

---

# Introduction

In this lesson, we learned about:

# INDEX

An `INDEX` is a database object that **speeds up data retrieval** by creating a lookup structure on one or more columns.

It works like an index in a book. Instead of scanning every page, you can quickly find the information you need.

---

# Main Idea

Indexes can make `SELECT` queries faster, especially when working with large tables.

However, indexes also have a cost. When data is inserted, updated, or deleted, the related indexes may also need to be maintained.

Therefore, indexes should be used carefully on columns that are frequently used for searching, joining, or sorting.

---

# Example

Create and drop indexes on the `Persons` table for the `LastName` and `FirstName` columns.

---

# INDEX Syntax

```sql id="k7r2md"
-- Create an index on LastName

CREATE INDEX idx_lastName
ON Persons (LastName);

-- Drop the index

DROP INDEX idx_lastName;

-- Create an index on FirstName

CREATE INDEX idx_firstName
ON Persons (FirstName);

-- Drop the FirstName index

DROP INDEX idx_firstName;
```

---

# Result

```text id="n4x8pq"
idx_lastName
→ Can improve queries that filter or sort by LastName.

idx_firstName
→ Can improve queries that filter or sort by FirstName.

DROP INDEX
→ Removes the index. Table data is NOT deleted.
```

---

# Important Rule

```text id="v9c3la"
Indexes can speed up SELECT queries, but they add overhead to
INSERT, UPDATE, and DELETE operations.

Dropping an index does NOT delete table data.

PRIMARY KEY creates an index automatically.

Indexes are commonly useful on columns frequently used in
WHERE, JOIN, or ORDER BY.
```

---

# INDEX Trade-offs

| Operation | With Index                 | Without Index             |
| --------- | -------------------------- | ------------------------- |
| SELECT    | Faster in suitable queries | May require more scanning |
| INSERT    | Additional overhead        | Less overhead             |
| UPDATE    | Additional overhead        | Less overhead             |
| DELETE    | Additional overhead        | Less overhead             |

---

# Summary

| Concept      | Meaning                                                    |
| ------------ | ---------------------------------------------------------- |
| CREATE INDEX | Creates an index to improve data retrieval                 |
| DROP INDEX   | Removes the index while keeping table data                 |
| `idx_name`   | Common naming convention for indexes, such as `idx_column` |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 85 - INDEX

---

# المقدمة

فهاد الدرس تعلمنا:

# INDEX

الـ `INDEX` هو database object كيساعد على **تسريع جلب البيانات** عن طريق إنشاء lookup structure على واحد أو أكثر من columns.

كيشبه للـ index اللي كاين فالكتاب. بلا ما تقلب فكل الصفحات، كتقدر توصل للمعلومة اللي باغي بسرعة.

---

# الفكرة الرئيسية

الـ indexes يقدرو يسرعو `SELECT` queries، خصوصاً ملي كتكون table كبيرة وفيها بزاف ديال البيانات.

ولكن الـ indexes عندهم حتى هما cost. ملي كنزيدو، نعدلو، أو نحيدو data، الـ indexes المرتبطين بهاد البيانات يقدرو حتى هما يحتاجو للتحديث.

لهذا خاصنا نستعملو indexes بعناية، خصوصاً فـ columns اللي كنستعملوهم بزاف فالبحث، الربط بين tables، أو الترتيب.

---

# المثال

غادي نديرو indexes على table `Persons` باستعمال `LastName` و `FirstName`.

---

# Syntax ديال INDEX

```sql id="w5j1cz"
-- إنشاء index على LastName

CREATE INDEX idx_lastName
ON Persons (LastName);

-- حذف الـ index

DROP INDEX idx_lastName;

-- إنشاء index على FirstName

CREATE INDEX idx_firstName
ON Persons (FirstName);

-- حذف الـ index

DROP INDEX idx_firstName;
```

---

# النتيجة

```text id="e8t4kn"
idx_lastName
→ يقدر يسرع queries اللي كتستعمل LastName فالبحث أو الترتيب.

idx_firstName
→ يقدر يسرع queries اللي كتستعمل FirstName فالبحث أو الترتيب.

DROP INDEX
→ كيحيد الـ index، ولكن data ديال table ما كتتحيدش.
```

---

# القاعدة المهمة

```text id="q2m7vx"
الـ Indexes يقدرو يسرعو SELECT queries،
ولكن كيضيفو overhead على INSERT و UPDATE و DELETE.

حذف الـ index ما كيحذفش data ديال table.

PRIMARY KEY كينشئ index بشكل تلقائي.

الـ indexes كيكونو مفيدين غالباً فـ columns اللي كنستعملوهم بزاف
مع WHERE أو JOIN أو ORDER BY.
```

---

# المقايضة ديال INDEX

| العملية | مع INDEX                 | بلا INDEX                |
| ------- | ------------------------ | ------------------------ |
| SELECT  | أسرع فـ queries المناسبة | ممكن تحتاج scanning أكثر |
| INSERT  | overhead إضافي           | overhead أقل             |
| UPDATE  | overhead إضافي           | overhead أقل             |
| DELETE  | overhead إضافي           | overhead أقل             |

---

# الخلاصة

| المفهوم      | المعنى                                        |
| ------------ | --------------------------------------------- |
| CREATE INDEX | كينشئ index باش يحسن جلب البيانات             |
| DROP INDEX   | كيحيد الـ index ولكن data كتبقى               |
| `idx_name`   | طريقة شائعة لتسمية indexes، بحال `idx_column` |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
