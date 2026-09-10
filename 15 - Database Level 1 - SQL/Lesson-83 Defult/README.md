غادي نعاودو بنفس الستايل ديال الدروس السابقة: English ثم النسخة بالدارجة، بلا emojis، وباسمك فـ Author.

# Lesson 83 - DEFAULT Constraint

---

# Introduction

In this lesson, we learned about:

# DEFAULT Constraint

`DEFAULT` sets an **automatic fallback value** for a column when no value is provided during `INSERT`. It helps ensure that columns receive meaningful values when no value is explicitly supplied.

---

# Main Idea

When inserting a row, if you do not specify a value for a column that has a `DEFAULT` constraint, SQL Server automatically uses the default value.

This is useful when a column should have a predefined value unless another value is provided.

---

# Example

We can use `CHECK` and `DEFAULT` constraints together to enforce business rules and provide automatic values.

---

# DEFAULT and CHECK Syntax

```sql
-- CHECK constraint: Age must be 18 or older

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT CHECK (Age >= 18)
);
```

```sql
-- Named CHECK constraint with multiple conditions

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    City VARCHAR(255),

    CONSTRAINT CHK_Person
    CHECK (Age >= 18 AND City = 'Amman')
);
```

A `DEFAULT` constraint can also be defined for a column:

```sql
CREATE TABLE Users (
    ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active'
);
```

If `Status` is not provided during `INSERT`, SQL Server automatically uses `'Active'`.

---

# Result

```text
CHECK (Age >= 18)
→ Rejects an INSERT or UPDATE when Age is less than 18.

CHECK (Age >= 18 AND City = 'Amman')
→ Both conditions must be true.

DEFAULT 'Active'
→ If Status is not provided, it automatically becomes 'Active'.
```

---

# Important Rule

```text
DEFAULT is used when a value is not supplied for the column during INSERT.

CHECK validates values against a specified condition.

DEFAULT does not replace a value that is explicitly provided.

Named constraints using the CONSTRAINT keyword can be referenced later,
for example when modifying or dropping the constraint.
```

---

# DEFAULT vs CHECK

| Feature      | DEFAULT                                 | CHECK                    |
| ------------ | --------------------------------------- | ------------------------ |
| Purpose      | Fills a missing value                   | Validates a value        |
| When applied | During INSERT when no value is supplied | During INSERT and UPDATE |
| Logic        | Sets a value automatically              | Rejects invalid values   |
| Example      | `DEFAULT 'Active'`                      | `CHECK (Age >= 18)`      |

---

# Summary

| Concept    | Meaning                                                 |
| ---------- | ------------------------------------------------------- |
| DEFAULT    | Automatically provides a value when none is supplied    |
| CHECK      | Validates a value against a condition                   |
| CONSTRAINT | Gives a constraint a name so it can be referenced later |

---

# Author

**Youness Chergui Amin**

Programming & Software Development

I share my programming journey, projects, and study notes.

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 83 - DEFAULT Constraint

---

# المقدمة

فهاد الدرس تعلمنا:

# DEFAULT Constraint

الـ `DEFAULT` كيعطي **قيمة تلقائية** للـ column ملي ما كنحددو حتى قيمة أثناء `INSERT`.

هادشي كيعاون باش الـ columns يكون عندها value معقولة بشكل تلقائي إلا ما عطيناش قيمة بشكل صريح.

---

# الفكرة الرئيسية

ملي كنزيدو row جديد، إلا ما حددناش value ديال واحد الـ column اللي عندو `DEFAULT`، SQL Server كيستعمل القيمة الافتراضية بشكل تلقائي.

هادشي مفيد ملي بغينا column يكون عندو value محددة بشكل افتراضي، إلا إلا عطيناه value أخرى.

---

# المثال

نقدرو نستعملو `CHECK` و `DEFAULT` بجوج باش نفرضو business rules ونعطيو values تلقائية.

---

# Syntax ديال DEFAULT و CHECK

```sql
-- CHECK constraint: العمر خاصو يكون 18 أو أكثر

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT CHECK (Age >= 18)
);
```

```sql
-- CHECK constraint مسماة وبأكثر من شرط

CREATE TABLE Persons (
    ID INT NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    Age INT,
    City VARCHAR(255),

    CONSTRAINT CHK_Person
    CHECK (Age >= 18 AND City = 'Amman')
);
```

ونقدرو حتى نحددو `DEFAULT` لواحد الـ column:

```sql
CREATE TABLE Users (
    ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Status VARCHAR(20) DEFAULT 'Active'
);
```

إلا ما عطيناش `Status` فـ `INSERT`، SQL Server غادي يحط `'Active'` بشكل تلقائي.

---

# النتيجة

```text
CHECK (Age >= 18)
→ كيرفض INSERT أو UPDATE إلا كان Age أقل من 18.

CHECK (Age >= 18 AND City = 'Amman')
→ خاص الشرطين بجوج يكونو صحيحين.

DEFAULT 'Active'
→ إلا ما عطيناش Status، غادي تولي 'Active' بشكل تلقائي.
```

---

# القاعدة المهمة

```text
DEFAULT كيتستعمل ملي ما كنقدموش قيمة للـ column أثناء INSERT.

CHECK كيتحقق من القيمة واش كتوافق الشرط المحدد.

DEFAULT ما كيبدلش القيمة إلا عطيناها بشكل صريح.

الـ constraints اللي مسميين باستعمال CONSTRAINT
نقدرو نرجعو ليهم من بعد، مثلا ملي بغينا نعدلوهم أو نحيدوهم.
```

---

# DEFAULT مقابل CHECK

| الخاصية     | DEFAULT                          | CHECK                  |
| ----------- | -------------------------------- | ---------------------- |
| الهدف       | كيعمر value ناقصة                | كيتحقق من value        |
| وقت التطبيق | أثناء INSERT إلا ما تعطاتش value | أثناء INSERT و UPDATE  |
| المنطق      | كيعطي value بشكل تلقائي          | كيرفض values غير صحيحة |
| المثال      | `DEFAULT 'Active'`               | `CHECK (Age >= 18)`    |

---

# الخلاصة

| المفهوم    | المعنى                                               |
| ---------- | ---------------------------------------------------- |
| DEFAULT    | كيعطي value تلقائياً ملي ما كتكونش محددة             |
| CHECK      | كيتحقق من value باستعمال condition                   |
| CONSTRAINT | كيعطي اسم للـ constraint باش نقدروا نرجعو ليه من بعد |

---

# المؤلف

**Youness Chergui Amin**

Programming & Software Development

كنشارك رحلة تعلمي للبرمجة، المشاريع ديالي، والملخصات الدراسية.

</div>
