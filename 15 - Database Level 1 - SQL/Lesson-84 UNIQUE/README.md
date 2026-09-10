
# Lesson 84 - UNIQUE Constraint

---

# Introduction

In this lesson, we learned about:

# UNIQUE Constraint

`UNIQUE` ensures that values in a column or a combination of columns are **unique**. It prevents duplicate values from being stored where uniqueness is required.

---

# Main Idea

`UNIQUE` is similar to `PRIMARY KEY` because both enforce uniqueness.

However, there are important differences:

* A table can have multiple `UNIQUE` constraints.
* A table can have only one `PRIMARY KEY`.
* A `UNIQUE` constraint can allow `NULL` values.
* A `PRIMARY KEY` does not allow `NULL` values.

When `UNIQUE` is applied to multiple columns, the **combination of those columns** must be unique.

---

# Example

Create a `Persons` table where the combination of `ID` and `LastName` must be unique.

---

# UNIQUE Syntax

```sql id="q7m4ka"
-- Named UNIQUE constraint on multiple columns

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,

    CONSTRAINT UC_Person
    UNIQUE (ID, LastName)
);

SELECT * FROM Persons;
```

---

# Result

```text id="p2v8rx"
UC_Person
→ The combination of (ID + LastName) must be unique.

No two rows can have the same ID AND the same LastName together.
```

For example, these rows are allowed:

```text
ID | LastName | FirstName
1  | Amrani   | Yassine
1  | Bennani  | Salma
2  | Amrani   | Omar
```

But this combination cannot be repeated:

```text
ID | LastName
1  | Amrani
1  | Amrani
```

Because `(1, Amrani)` already exists.

---

# Important Rule

```text id="r5n1cf"
UNIQUE on multiple columns means the COMBINATION must be unique,
not each column individually.

You can have multiple UNIQUE constraints on one table.

UNIQUE can allow NULL values, depending on the database system
and its rules for NULL handling.

PRIMARY KEY does not allow NULL.

Use the CONSTRAINT keyword to give a constraint a name,
which makes it easier to reference later.
```

---

# UNIQUE Comparison

| Feature               | PRIMARY KEY | UNIQUE                                                       |
| --------------------- | ----------- | ------------------------------------------------------------ |
| Allows NULL           | No          | Yes, with database-specific NULL behavior                    |
| Per Table Count       | One only    | Multiple allowed                                             |
| Creates Unique Index  | Yes         | Yes                                                          |
| Foreign Key Reference | Yes         | Yes, when the referenced key meets the database requirements |

---

# Summary

| Concept          | Meaning                                                         |
| ---------------- | --------------------------------------------------------------- |
| UNIQUE           | Prevents duplicate values in a column or combination of columns |
| CONSTRAINT Name  | Gives a constraint a name for easier management                 |
| Composite UNIQUE | The combination of multiple columns must be unique              |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 84 - UNIQUE Constraint

---

# المقدمة

فهاد الدرس تعلمنا:

# UNIQUE Constraint

الـ `UNIQUE` كيتأكد بلي القيم الموجودة فـ column، أو فـ مجموعة ديال columns، **ما تكونش مكررة**.

يعني كيمنع تكرار نفس القيمة فالحالات اللي خاص فيها تكون unique.

---

# الفكرة الرئيسية

الـ `UNIQUE` كيشبه للـ `PRIMARY KEY` حيث بجوج كيضمنو uniqueness.

ولكن كاينين اختلافات مهمة:

* Table وحدة تقدر يكون فيها أكثر من `UNIQUE`.
* Table وحدة تقدر يكون فيها غير `PRIMARY KEY` واحد.
* `UNIQUE` يقدر يسمح بـ `NULL`.
* `PRIMARY KEY` ما كيسمحش بـ `NULL`.

وملي كنستعملو `UNIQUE` على أكثر من column، اللي خاصو يكون unique هو **combination ديال columns كاملين**.

---

# المثال

غادي نديرو table سميتها `Persons`، بحيث combination ديال `ID` و `LastName` خاصها تكون unique.

---

# Syntax ديال UNIQUE

```sql id="z4q9ft"
-- UNIQUE constraint مسماة على أكثر من column

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,

    CONSTRAINT UC_Person
    UNIQUE (ID, LastName)
);

SELECT * FROM Persons;
```

---

# النتيجة

```text id="b8v3mx"
UC_Person
→ Combination ديال (ID + LastName) خاصها تكون unique.

ما يمكنش يكونو جوج rows عندهم نفس ID ونفس LastName بجوج.
```

مثلاً هادو مسموحين:

```text
ID | LastName | FirstName
1  | Amrani   | Yassine
1  | Bennani  | Salma
2  | Amrani   | Omar
```

ولكن هاد combination ما يمكنش يتعاود:

```text
ID | LastName
1  | Amrani
1  | Amrani
```

حيت `(1, Amrani)` راه موجودة من قبل.

---

# القاعدة المهمة

```text id="c6n2wp"
UNIQUE على أكثر من column كيعني بلي COMBINATION كاملة خاصها تكون unique،
ماشي كل column بوحدها.

تقدر يكون عندك أكثر من UNIQUE constraint فـ نفس table.

UNIQUE يقدر يسمح بـ NULL، ولكن طريقة التعامل مع NULL
كتختلف حسب نظام قاعدة البيانات.

PRIMARY KEY ما كيسمحش بـ NULL.

استعمال CONSTRAINT كيعطي اسم للـ constraint،
وهذا كيسهل التعامل معاها من بعد.
```

---

# مقارنة UNIQUE

| الخاصية               | PRIMARY KEY | UNIQUE                             |
| --------------------- | ----------- | ---------------------------------- |
| كيسمح بـ NULL         | لا          | نعم، حسب قواعد قاعدة البيانات      |
| العدد فـ Table        | واحد فقط    | أكثر من واحد مسموح                 |
| كينشئ Unique Index    | نعم         | نعم                                |
| Foreign Key Reference | نعم         | نعم، إلا توفرت شروط قاعدة البيانات |

---

# الخلاصة

| المفهوم          | المعنى                                                  |
| ---------------- | ------------------------------------------------------- |
| UNIQUE           | كيمنع تكرار القيم فـ column أو combination ديال columns |
| CONSTRAINT Name  | كيعطي اسم للـ constraint باش يسهل التعامل معاها         |
| Composite UNIQUE | Combination ديال عدة columns خاصها تكون unique          |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
