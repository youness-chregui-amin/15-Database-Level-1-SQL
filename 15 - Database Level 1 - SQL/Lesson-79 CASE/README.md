# Lesson 79 - CASE

---

# Introduction

In this lesson, we learned about:

# CASE

`CASE` is SQL's way of writing conditional logic, similar to `if/else`, directly inside a query.

It evaluates conditions and returns a value for the **first matching condition**.

---

# Main Idea

`CASE` allows you to transform or classify data dynamically inside a `SELECT`.

You can use it to create new calculated columns based on conditions.

---

# Example

Label gender as `Male` or `Female`, determine employee status, and calculate adjusted salary.

---

# CASE Syntax

### Simple CASE: Gender Label

```sql id="7kq3mp"
SELECT ID, FirstName, LastName,
    GendorTitle = CASE
        WHEN Gendor = 'M' THEN 'Male'
        WHEN Gendor = 'F' THEN 'Female'
        ELSE 'Unknown'
    END
FROM Employees;
```

### Multiple CASE Columns: Gender + Status

```sql id="f8x2ra"
SELECT ID, FirstName, LastName,

    GendorTitle = CASE
        WHEN Gendor = 'M' THEN 'Male'
        WHEN Gendor = 'F' THEN 'Female'
        ELSE 'Unknown'
    END,

    Status = CASE
        WHEN ExitDate IS NULL THEN 'Active'
        WHEN Gendor IS NOT NULL THEN 'Resigned'
    END

FROM Employees;
```

### CASE for Salary Calculation

```sql id="6mwp2n"
SELECT ID, FirstName, LastName,

    MonthlySalary = CASE
        WHEN Gendor = 'M' THEN MonthlySalary * 1.1
        WHEN Gendor = 'F' THEN MonthlySalary * 1.15
    END

FROM Employees;
```

---

# Result

```text id="qmx4ob"
GendorTitle: M → 'Male', F → 'Female'

Status: ExitDate NULL → 'Active', otherwise → 'Resigned'

MonthlySalary: Males get +10%, Females get +15%
```

---

# Important Rule

```text id="p9r2vt"
CASE evaluates conditions from top to bottom and stops at the first TRUE condition.

ELSE is optional. If it is omitted and no condition matches, CASE returns NULL.

You can have multiple CASE expressions in one SELECT.
```

---

# CASE Structure

| Part | Meaning                                  |
| ---- | ---------------------------------------- |
| WHEN | Condition to check                       |
| THEN | Value to return if the condition is TRUE |
| ELSE | Default value if no condition matches    |
| END  | Required to close the CASE expression    |

---

# Summary

| Concept | Meaning                              |
| ------- | ------------------------------------ |
| CASE    | Conditional logic inside SQL queries |
| WHEN    | The condition to evaluate            |
| THEN    | The result if the condition is TRUE  |
| ELSE    | Fallback if no WHEN matches          |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 79 - CASE

---

# المقدمة

فهاد الدرس تعلمنا:

# CASE

`CASE` هي الطريقة اللي كنستعملو فـ SQL باش نديرو conditional logic، بحال `if/else`، مباشرة داخل الـ query.

كتفحص الشروط وكترد القيمة ديال **أول شرط متحقق**.

---

# الفكرة الرئيسية

`CASE` كتخلينا نبدلو أو نصنفو البيانات بشكل ديناميكي داخل `SELECT`.

ونقدرو نستعملوها باش نصايبو أعمدة جديدة محسوبة على حسب شروط معينة.

---

# المثال

نصنفو الجنس إلى `Male` و `Female`، نحددو حالة الموظف، ونحسبو الراتب بعد التعديل.

---

# CASE Syntax

### Simple CASE: تصنيف الجنس

```sql id="2rg5hk"
SELECT ID, FirstName, LastName,
    GendorTitle = CASE
        WHEN Gendor = 'M' THEN 'Male'
        WHEN Gendor = 'F' THEN 'Female'
        ELSE 'Unknown'
    END
FROM Employees;
```

### عدة CASE Columns: الجنس + الحالة

```sql id="c53sqz"
SELECT ID, FirstName, LastName,

    GendorTitle = CASE
        WHEN Gendor = 'M' THEN 'Male'
        WHEN Gendor = 'F' THEN 'Female'
        ELSE 'Unknown'
    END,

    Status = CASE
        WHEN ExitDate IS NULL THEN 'Active'
        WHEN Gendor IS NOT NULL THEN 'Resigned'
    END

FROM Employees;
```

### CASE لحساب الراتب

```sql id="9r7e0s"
SELECT ID, FirstName, LastName,

    MonthlySalary = CASE
        WHEN Gendor = 'M' THEN MonthlySalary * 1.1
        WHEN Gendor = 'F' THEN MonthlySalary * 1.15
    END

FROM Employees;
```

---

# النتيجة

```text id="das25f"
GendorTitle: M → 'Male', F → 'Female'

Status: ExitDate NULL → 'Active', وإلا → 'Resigned'

MonthlySalary: الرجال كيزيد ليهم +10%، والنساء +15%
```

---

# القاعدة المهمة

```text id="b6r2qt"
CASE كيفحص الشروط من الفوق للتحت، وكيوقف عند أول شرط TRUE.

ELSE اختيارية. إلا ما كتبناها وحتى شرط ما تحققش، CASE كترجع NULL.

نقدرو نستعملو أكثر من CASE expression داخل نفس SELECT.
```

---

# بنية CASE

| الجزء | المعنى                                   |
| ----- | ---------------------------------------- |
| WHEN  | الشرط اللي بغينا نفحصو                   |
| THEN  | القيمة اللي غادي ترجع إلا كان الشرط TRUE |
| ELSE  | القيمة الافتراضية إلا حتى شرط ما تحققش   |
| END   | ضرورية باش نسدو CASE expression          |

---

# الخلاصة

| المفهوم | المعنى                                  |
| ------- | --------------------------------------- |
| CASE    | Conditional logic داخل SQL queries      |
| WHEN    | الشرط اللي غادي نفحصو                   |
| THEN    | النتيجة إلا كان الشرط TRUE              |
| ELSE    | النتيجة الافتراضية إلا ما تحقق حتى WHEN |

---

# المؤلف

**Youness Chergui Amin**

</div>
