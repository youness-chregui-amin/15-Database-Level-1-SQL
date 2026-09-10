# Lesson 71 - LIKE

---

# Introduction

In this lesson, we learned about:

# LIKE

`LIKE` is an operator used in a `WHERE` clause to search for a specific pattern in a column.

It works with wildcard characters to make text searches more flexible.

---

# Main Idea

`LIKE` enables pattern matching on string data.

* `%` matches zero or more characters.
* `_` matches exactly one character.

---

# Example

Find employees whose first name:

* Starts with `a`
* Ends with `a`
* Contains `tell`
* Matches specific character positions

---

# LIKE

```sql id="p8r3kw"
SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '%a';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '%tell%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a%a';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '_a%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '__m%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a__%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'A%'
   OR FirstName LIKE 'B%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'A%D';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '_a_m%';
```

---

# Result

```text id="c4n7vx"
ID | FirstName
1  | Amine
5  | Anas
... returns names matching the specified pattern.
```

---

# Important Rule

```text id="r6t2mp"
% matches zero or more characters (any sequence).

_ matches exactly one character.

LIKE is case-insensitive in many databases by default,
depending on the database collation.
```

---

# LIKE Patterns

| Pattern  | Meaning                                     |
| -------- | ------------------------------------------- |
| `'a%'`   | Starts with `a`                             |
| `'%a'`   | Ends with `a`                               |
| `'%ah%'` | Contains `ah`                               |
| `'_a%'`  | Second character is `a`                     |
| `'a__%'` | Starts with `a`, with at least 3 characters |

---

# Summary

| Concept | Meaning                    |
| ------- | -------------------------- |
| LIKE    | Pattern matching in WHERE  |
| `%`     | Any sequence of characters |
| `_`     | Exactly one character      |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 71 - LIKE

---

# المقدمة

فهاد الدرس تعلمنا:

# LIKE

`LIKE` هو operator كيستعمل مع `WHERE` باش نقلبو على pattern معين داخل واحد الـ column.

كيخدم مع wildcard characters باش نخليو البحث على النصوص أكثر مرونة.

---

# الفكرة الرئيسية

`LIKE` كيخلينا نديرو pattern matching على البيانات النصية.

* `%` كتمثل صفر أو أكثر من character.
* `_` كتمثل character وحدة بالضبط.

---

# المثال

نقلبو على الموظفين اللي الـ first name ديالهم:

* كيبدا بـ `a`
* كيسالي بـ `a`
* فيه `tell`
* كيتوافق مع مواقع معينة ديال characters

---

# LIKE

```sql id="m2q7fz"
SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '%a';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '%tell%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a%a';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '_a%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '__m%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'a__%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'A%'
   OR FirstName LIKE 'B%';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE 'A%D';

SELECT ID, FirstName
FROM Employees
WHERE FirstName LIKE '_a_m%';
```

---

# النتيجة

```text id="x5v9nb"
ID | FirstName
1  | Amine
5  | Anas
... كترجع الأسماء اللي كيتوافقو مع الـ pattern المحدد.
```

---

# قاعدة مهمة

```text id="k3p8qy"
% كتمثل صفر أو أكثر من characters.

_ كتمثل character وحدة بالضبط.

LIKE كيكون case-insensitive فبزاف ديال databases بشكل افتراضي،
ولكن هاد السلوك كيقدر يختلف حسب الـ database collation.
```

---

# LIKE Patterns

| Pattern  | المعنى                                    |
| -------- | ----------------------------------------- |
| `'a%'`   | كيبدا بـ `a`                              |
| `'%a'`   | كيسالي بـ `a`                             |
| `'%ah%'` | فيه `ah`                                  |
| `'_a%'`  | الـ character الثانية هي `a`              |
| `'a__%'` | كيبدا بـ `a` وعندو على الأقل 3 characters |

---

# الخلاصة

| المفهوم | المعنى                      |
| ------- | --------------------------- |
| LIKE    | Pattern matching مع WHERE   |
| `%`     | أي sequence ديال characters |
| `_`     | character وحدة بالضبط       |

---

# الكاتب

Youness Chergui Amin

</div>
