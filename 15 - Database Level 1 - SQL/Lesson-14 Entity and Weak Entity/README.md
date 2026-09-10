# Lesson 14 - Entity and Weak Entity

---

# Introduction

In this lesson, we learned about:

# Entities in ER Diagram

Entities are one of the main building blocks of ER Diagrams and database design.

We also learned the difference between:

* Strong Entity
* Weak Entity

---

# What is an Entity?

An **Entity** represents a real-world object stored in the database.

An entity can be:

* Living object
* Non-living object

Entities usually become tables inside the database.

---

# Examples of Entities

* Student
* Employee
* Course
* Product
* Department

---

# Entity in ER Diagram

In ERD, an Entity is represented using:

# Rectangle Shape

---

## Example

```text
+----------+
| Student  |
+----------+
```

---

# Strong Entity

A **Strong Entity** is an entity that:

* Has its own Primary Key
* Exists independently
* Does not depend on another entity

---

# Examples

* Student
* Employee
* Course

Each one has its own unique identifier.

---

# Example

## Student Table

| StudentID | Name    |
| --------- | ------- |
| 1         | Yassine |
| 2         | Salma   |

`StudentID` is the Primary Key.

---

# ERD Representation

```text
+----------+
| Student  |
+----------+
```

---

# Weak Entity

A **Weak Entity** is an entity that:

* Does NOT have its own Primary Key
* Depends on another entity
* Cannot exist independently

---

# Example

Dependent entity in employee systems.

A dependent cannot exist without an employee.

---

# Example

## Employee Table

| ID | Name |
| -- | ---- |
| 1  | Omar |

---

## Dependent Table

| RelativeName | Relation |
| ------------ | -------- |
| Lina         | Daughter |

The Dependent entity depends on Employee.

---

# ERD Representation

Weak Entity is represented using:

# Double Rectangle

```text
++-----------++
|| Dependent ||
++-----------++
```

---

# Relationship Example

```text
Employee ---- Dependent
```

* Employee → Strong Entity
* Dependent → Weak Entity

---

# Difference Between Strong and Weak Entity

| Strong Entity    | Weak Entity               |
| ---------------- | ------------------------- |
| Has Primary Key  | No Primary Key            |
| Independent      | Depends on another entity |
| Single Rectangle | Double Rectangle          |
| Can exist alone  | Cannot exist alone        |

---

# Why Weak Entities are Important?

Weak entities help represent:

* Dependent data
* Child records
* Data related to another entity

They are useful in real-world database systems.

---

# Key Takeaway

* Entities represent objects stored in databases
* Strong Entities have Primary Keys
* Weak Entities depend on Strong Entities
* ERD uses different symbols for each entity type

---

# Summary

| Concept          | Meaning                     |
| ---------------- | --------------------------- |
| Entity           | Real-world object           |
| Strong Entity    | Independent entity with PK  |
| Weak Entity      | Dependent entity without PK |
| Rectangle        | Strong Entity symbol        |
| Double Rectangle | Weak Entity symbol          |

---

# Author

Youness Chergui Amin

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 14 - Entity و Weak Entity

---

# المقدمة

فهاد الدرس تعلمنا على:

# Entities فـ ER Diagram

Entities هما واحد من المكونات الأساسية ديال ER Diagrams وتصميم قواعد البيانات.

وتعلمنا حتى الفرق بين:

</div>

<ul>
  <li>• Strong Entity</li>
  <li>• Weak Entity</li>
</ul>

<div dir="rtl" align="right">

---

# شنو هي Entity؟

**Entity** كتمثل شي حاجة أو كائن من العالم الحقيقي اللي كنخزنو المعلومات ديالو فـDatabase.

Entity تقدر تكون:

</div>

<ul>
  <li>• شي حاجة حية</li>
  <li>• شي حاجة ماشي حية</li>
</ul>

<div dir="rtl" align="right">

Entities فعادةً كيتحولو لـTables داخل Database.

---

# أمثلة ديال Entities

</div>

<ul>
  <li>• Student</li>
  <li>• Employee</li>
  <li>• Course</li>
  <li>• Product</li>
  <li>• Department</li>
</ul>

<div dir="rtl" align="right">

---

# Entity فـ ER Diagram

فـERD، الـEntity كتمثل بـ:

# Rectangle Shape

---

## مثال

```text
+----------+
| Student  |
+----------+
```

---

# Strong Entity

**Strong Entity** هي Entity اللي:

</div>

<ul>
  <li>• عندها Primary Key ديالها</li>
  <li>• كتقدر تكون موجودة بوحدها</li>
  <li>• ما كتحتاجش تعتمد على Entity أخرى باش تكون موجودة</li>
</ul>

<div dir="rtl" align="right">

---

# أمثلة

</div>

<ul>
  <li>• Student</li>
  <li>• Employee</li>
  <li>• Course</li>
</ul>

<div dir="rtl" align="right">

كل وحدة فيهم عندها Unique Identifier ديالها.

---

# مثال

## Student Table

| StudentID | Name    |
| --------- | ------- |
| 1         | Yassine |
| 2         | Salma   |

`StudentID` هو الـPrimary Key.

---

# تمثيلها فـ ERD

```text
+----------+
| Student  |
+----------+
```

---

# Weak Entity

**Weak Entity** هي Entity اللي:

</div>

<ul>
  <li>• ما عندهاش Primary Key ديالها بوحدها</li>
  <li>• كتحتاج تعتمد على Entity أخرى</li>
  <li>• ما كتقدرش تكون موجودة بوحدها</li>
</ul>

<div dir="rtl" align="right">

---

# مثال

فـأنظمة الموظفين، نقدر يكون عندنا Dependent.

الـDependent ما يقدرش يكون موجود بلا Employee اللي تابع ليه.

---

# مثال

## Employee Table

| ID | Name |
| -- | ---- |
| 1  | Omar |

---

## Dependent Table

| RelativeName | Relation |
| ------------ | -------- |
| Lina         | Daughter |

الـDependent كيعتمد على Employee.

---

# تمثيلها فـ ERD

Weak Entity كتمثل بـ:

# Double Rectangle

```text
++-----------++
|| Dependent ||
++-----------++
```

---

# مثال ديال Relationship

```text
Employee ---- Dependent
```

</div>

<ul>
  <li>• Employee → Strong Entity</li>
  <li>• Dependent → Weak Entity</li>
</ul>

<div dir="rtl" align="right">

---

# الفرق بين Strong و Weak Entity

</div>

| Strong Entity           | Weak Entity                  |
| ----------------------- | ---------------------------- |
| عندها Primary Key       | ما عندهاش Primary Key        |
| مستقلة                  | كتحتاج Entity أخرى           |
| Single Rectangle        | Double Rectangle             |
| تقدر تكون موجودة بوحدها | ما كتقدرش تكون موجودة بوحدها |

<div dir="rtl" align="right">

---

# علاش Weak Entities مهمين؟

Weak Entities كيساعدونا نمثلو:

</div>

<ul>
  <li>• بيانات تابعة</li>
  <li>• Child Records</li>
  <li>• بيانات مرتبطة بـEntity أخرى</li>
</ul>

<div dir="rtl" align="right">

وكيكونو مفيدين بزاف فأنظمة قواعد البيانات الحقيقية.

---

# الخلاصة المهمة

</div>

<ul>
  <li>• Entities كتمثل الأشياء أو الكائنات اللي كنخزنوها فـDatabase</li>
  <li>• Strong Entities عندها Primary Keys</li>
  <li>• Weak Entities كتعتمد على Strong Entities</li>
  <li>• ERD كيستعمل Symbols مختلفين لكل نوع ديال Entity</li>
</ul>

<div dir="rtl" align="right">

---

# الملخص

</div>

| المفهوم          | المعنى                            |
| ---------------- | --------------------------------- |
| Entity           | كائن أو حاجة من العالم الحقيقي    |
| Strong Entity    | Entity مستقلة وعندها PK           |
| Weak Entity      | Entity تابعة وما عندهاش PK بوحدها |
| Rectangle        | Symbol ديال Strong Entity         |
| Double Rectangle | Symbol ديال Weak Entity           |

<div dir="rtl" align="right">

---

# المؤلف

Youness Chergui Amin

</div>
