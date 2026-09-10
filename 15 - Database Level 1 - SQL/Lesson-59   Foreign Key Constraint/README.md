# Lesson 59 - Foreign Key Constraint

---

# Introduction

In this lesson, we learned about:

# FOREIGN KEY

A `FOREIGN KEY` is a constraint that establishes a relationship between two tables and ensures referential integrity by guaranteeing that values in a column match the primary key of another table.

---

# Main Idea

Foreign keys prevent orphaned records.

They ensure that every value in the child table has a corresponding value in the parent table.

---

# Example

We have `Customers` and `Orders` tables.

Each order must belong to an existing customer.

---

# FOREIGN KEY

```sql id="x7h2qm"
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Country VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Item VARCHAR(40),
    OrderDate DATE,
    Amount INT,
    customer_id INT
);

ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(id);
```

---

# Result

```text id="n8k4ps"
Command(s) completed successfully.

Foreign key constraint enforces:
no order can reference a non-existent customer.
```

---

# Important Rule

```text id="v2d6ra"
The referenced column in the parent table must be a PRIMARY KEY
or have a UNIQUE constraint.

Foreign keys prevent deletion of parent rows that have child
references unless CASCADE is used.
```

---

# Foreign Key Options

| Option               | Behavior                                             |
| -------------------- | ---------------------------------------------------- |
| `ON DELETE CASCADE`  | Deletes child rows when the parent is deleted        |
| `ON UPDATE CASCADE`  | Updates the child FK when the parent PK is updated   |
| `ON DELETE SET NULL` | Sets the child FK to NULL when the parent is deleted |

---

# Summary

| Concept       | Meaning                                       |
| ------------- | --------------------------------------------- |
| `FOREIGN KEY` | Enforces referential integrity between tables |
| `REFERENCES`  | Points to the parent table and column         |
| `CASCADE`     | Propagates changes from parent to child       |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 59 - Foreign Key Constraint

---

# المقدمة

فهاد الدرس تعلمنا على:

# FOREIGN KEY

الـ `FOREIGN KEY` هي واحد الـ constraint كتربط بين جوج ديال الـ tables، وكتضمن `referential integrity` بحيث القيم فـ واحد الـ column خاصها تكون مطابقة مع الـ Primary Key ديال table أخرى.

---

# الفكرة الرئيسية

الـ Foreign Key كتحمي من `orphaned records`.

يعني كتضمن أن كل قيمة موجودة فـ الـ child table عندها قيمة مقابلة ليها فـ الـ parent table.

---

# المثال

عندنا جوج tables:

* `Customers`
* `Orders`

وكل `Order` خاصو يكون تابع لواحد `Customer` موجود.

---

# FOREIGN KEY

```sql id="w4e9tc"
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Country VARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Item VARCHAR(40),
    OrderDate DATE,
    Amount INT,
    customer_id INT
);

ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(id);
```

---

# النتيجة

```text id="r2q5mx"
Command(s) completed successfully.

Foreign key constraint enforces:
no order can reference a non-existent customer.
```

يعني الـ Foreign Key كتمنع `Order` من أنه يشير لواحد `Customer` ما كاينش.

---

# قاعدة مهمة

```text id="f9s3la"
الـ column اللي كنشيرو ليه فـ parent table
خاصو يكون PRIMARY KEY أو عندو UNIQUE constraint.

الـ Foreign Key كتمنع حذف parent row
إلا كانو child rows مرتبطين بيه، إلا استعملنا CASCADE.
```

---

# Foreign Key Options

| Option               | السلوك                                               |
| -------------------- | ---------------------------------------------------- |
| `ON DELETE CASCADE`  | كيحيد الـ child rows ملي كيتحيد الـ parent           |
| `ON UPDATE CASCADE`  | كيحدّث الـ child FK ملي كيتحدّث الـ parent PK        |
| `ON DELETE SET NULL` | كيخلي الـ child FK يولي `NULL` ملي كيتحيد الـ parent |

---

# الخلاصة

| Concept       | المعنى                                     |
| ------------- | ------------------------------------------ |
| `FOREIGN KEY` | كتضمن referential integrity بين الـ tables |
| `REFERENCES`  | كتشير للـ parent table والـ column         |
| `CASCADE`     | كينقل التغييرات من الـ parent للـ child    |

---

# الكاتب

**Youness Chergui Amin**

</div>
