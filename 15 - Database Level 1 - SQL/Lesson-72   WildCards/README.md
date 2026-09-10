# Lesson 72 - Wildcards

---

# Introduction

In this lesson, we learned about:

# Wildcards

Wildcards are special characters used with the `LIKE` operator to search for patterns in text data.

SQL Server supports several wildcards, including `%`, `_`, `[]`, `[^]`, and character ranges such as `[a-z]`.

---

# Main Idea

Beyond `%` and `_`, SQL Server provides more precise pattern matching using:

* Character lists: `[abc]`
* Character ranges: `[a-z]`
* Character exclusion: `[^abc]`

---

# Example

Find names starting with specific letters or ranges, and match different spellings of `"Mohammed"` and `"Mohammad"` using one pattern.

---

# Wildcards

```sql id="x7m2kp"
SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE '[abc]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE '[a-l]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName NOT LIKE '[abc]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE 'Mohamm[ae]d';
```

---

# Result

```text id="q4v8ns"
ID | FirstName | LastName

... returns names starting with a, b, or c for [abc]%.

... returns Mohammed and Mohammad for Mohamm[ae]d.
```

---

# Important Rule

```text id="m6t3zr"
[abc] matches any single character in the set.

[a-z] matches any single character in the range.

[^abc] matches any single character NOT in the set.
```

---

# Wildcard Summary

| Wildcard   | Description                  | Example     |
| ---------- | ---------------------------- | ----------- |
| `%`        | Any sequence of characters   | `'a%'`      |
| `_`        | Exactly one character        | `'_a%'`     |
| `[chars]`  | One character in the set     | `'[abc]%'`  |
| `[a-z]`    | One character in the range   | `'[a-l]%'`  |
| `[^chars]` | One character NOT in the set | `'[^abc]%'` |

---

# Summary

| Concept  | Meaning                               |
| -------- | ------------------------------------- |
| `[abc]`  | Matches any character in the list     |
| `[a-z]`  | Matches any character in the range    |
| `[^abc]` | Matches any character NOT in the list |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 72 - Wildcards

---

# المقدمة

فهاد الدرس تعلمنا:

# Wildcards

`Wildcards` هما characters خاصة كيتستعملو مع `LIKE` باش نقلبو على patterns داخل البيانات النصية.

SQL Server كيدعم عدة Wildcards بحال `%` و `_` و `[]` و `[^]` و ranges بحال `[a-z]`.

---

# الفكرة الرئيسية

بالإضافة لـ `%` و `_`، SQL Server كيعطينا طرق أكثر دقة للـ pattern matching باستعمال:

* Character lists: `[abc]`
* Character ranges: `[a-z]`
* Character exclusion: `[^abc]`

---

# المثال

نقلبو على الأسماء اللي كيبداو بحروف معينة أو range معين، ونلقاو الاختلافات بين `"Mohammed"` و `"Mohammad"` باستعمال pattern واحد.

---

# Wildcards

```sql id="b9r5cx"
SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE '[abc]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE '[a-l]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName NOT LIKE '[abc]%';

SELECT ID, FirstName, LastName
FROM Employees
WHERE FirstName LIKE 'Mohamm[ae]d';
```

---

# النتيجة

```text id="n3k7wp"
ID | FirstName | LastName

... كترجع الأسماء اللي كيبداو بـ a أو b أو c مع [abc]%.

... كترجع Mohammed و Mohammad مع Mohamm[ae]d.
```

---

# قاعدة مهمة

```text id="v8q2lm"
[abc] كتماتش أي character وحدة من هاد المجموعة.

[a-z] كتماتش أي character وحدة من هاد الـ range.

[^abc] كتماتش أي character وحدة ماشي موجودة فهاد المجموعة.
```

---

# Wildcard Summary

| Wildcard   | الشرح                           | المثال      |
| ---------- | ------------------------------- | ----------- |
| `%`        | أي sequence ديال characters     | `'a%'`      |
| `_`        | character وحدة بالضبط           | `'_a%'`     |
| `[chars]`  | character وحدة من المجموعة      | `'[abc]%'`  |
| `[a-z]`    | character وحدة من الـ range     | `'[a-l]%'`  |
| `[^chars]` | character وحدة ماشي من المجموعة | `'[^abc]%'` |

---

# الخلاصة

| المفهوم  | المعنى                              |
| -------- | ----------------------------------- |
| `[abc]`  | كيماتش أي character من اللائحة      |
| `[a-z]`  | كيماتش أي character من الـ range    |
| `[^abc]` | كيماتش أي character ماشي من اللائحة |

---

# الكاتب

Youness Chergui Amin

</div>
