# Lesson 81 - Revision: Constraints

---

# Introduction

In this lesson, we learned about:

# Revision: Constraints in Practice

This is a revision lesson that applies multiple constraints together on real tables to reinforce our understanding of `PRIMARY KEY`, `UNIQUE`, and other SQL constraints.

---

# Main Idea

Practice creating tables with real-world business constraints.

Each constraint serves a specific purpose to maintain clean and reliable data.

---

# Example

Create a `Users` table with multiple constraints applied simultaneously.

---

# Revision Example

```sql id="7kq3mp"
CREATE TABLE Users (
    ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20) UNIQUE
);
```

---

# Result

```text id="f8x2ra"
ID    → must be unique and not NULL (PRIMARY KEY)

Email → no two users can have the same email (UNIQUE)

Phone → no two users can have the same phone (UNIQUE)
```

---

# Important Rule

```text id="6mwp2n"
PRIMARY KEY = NOT NULL + UNIQUE combined.

Multiple UNIQUE constraints can exist on the same table.

Combining constraints helps enforce real-world business rules.
```

---

# Constraint Quick Review

| Constraint  | Auto NOT NULL | Auto UNIQUE | Can Repeat                          |
| ----------- | ------------- | ----------- | ----------------------------------- |
| PRIMARY KEY | Yes           | Yes         | No — one primary key per table      |
| UNIQUE      | No            | Yes         | Multiple UNIQUE constraints allowed |
| NOT NULL    | No            | No          | Multiple columns allowed            |
| CHECK       | No            | No          | Multiple constraints allowed        |
| DEFAULT     | No            | No          | Multiple columns allowed            |

---

# Summary

| Concept     | Meaning                                   |
| ----------- | ----------------------------------------- |
| PRIMARY KEY | Unique identifier for each row            |
| UNIQUE      | Column values must be distinct            |
| Revision    | Apply multiple constraints on real tables |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 81 - Revision: Constraints

---

# المقدمة

فهاد الدرس تعلمنا:

# Revision: Constraints in Practice

هاد الدرس هو درس ديال المراجعة، كنطبقو فيه عدة Constraints مع بعضياتها على جداول واقعية، باش نقويو الفهم ديال `PRIMARY KEY` و `UNIQUE` وباقي SQL Constraints.

---

# الفكرة الرئيسية

كنتمرنو على إنشاء جداول فيها business constraints واقعية.

كل Constraint عندو واحد الدور معين فالحفاظ على البيانات نقية وموثوقة.

---

# المثال

غادي ننشئو `Users` table ونطبقو فيه عدة Constraints فـ نفس الوقت.

---

# مثال المراجعة

```sql id="2rg5hk"
CREATE TABLE Users (
    ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20) UNIQUE
);
```

---

# النتيجة

```text id="c53sqz"
ID    → خاصو يكون unique وما يكونش NULL (PRIMARY KEY)

Email → جوج users ما يقدروش يكون عندهم نفس email (UNIQUE)

Phone → جوج users ما يقدروش يكون عندهم نفس phone (UNIQUE)
```

---

# القاعدة المهمة

```text id="9r7e0s"
PRIMARY KEY = NOT NULL + UNIQUE مجموعين.

نقدرو يكونو عندنا عدة UNIQUE constraints فـ نفس الجدول.

الجمع بين Constraints كيساعدنا نفرضو business rules واقعية.
```

---

# مراجعة سريعة للـ Constraints

| Constraint  | Auto NOT NULL | Auto UNIQUE | Can Repeat                          |
| ----------- | ------------- | ----------- | ----------------------------------- |
| PRIMARY KEY | نعم           | نعم         | لا — واحد Primary Key لكل Table     |
| UNIQUE      | لا            | نعم         | نقدروا نديرو عدة UNIQUE constraints |
| NOT NULL    | لا            | لا          | نقدروا نطبقوه على عدة أعمدة         |
| CHECK       | لا            | لا          | نقدروا نديرو عدة CHECK constraints  |
| DEFAULT     | لا            | لا          | نقدروا نطبقوه على عدة أعمدة         |

---

# الخلاصة

| المفهوم     | المعنى                                 |
| ----------- | -------------------------------------- |
| PRIMARY KEY | معرف فريد لكل صف                       |
| UNIQUE      | قيم العمود خاصها تكون مختلفة           |
| Revision    | تطبيق عدة Constraints على جداول واقعية |

---

# المؤلف

**Youness Chergui Amin**

</div>
