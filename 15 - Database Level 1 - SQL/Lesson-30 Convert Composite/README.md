# Lesson 30 - Composite / Multivalued / Derived Attributes to Relational Schema

---

# Introduction

In this lesson, we learned how to convert different types of attributes from an **ER Diagram** into a **Relational Schema**.

We focused on:

* Composite Attributes
* Multivalued Attributes
* Derived Attributes

Each type is handled differently when designing database tables.

---

# What are Attribute Types?

Attributes describe the properties of an entity.

In ER Modeling, attributes can have different types.

The three important types in this lesson are:

```text
Composite Attribute

Multivalued Attribute

Derived Attribute
```

---

# Composite Attribute

A **Composite Attribute** is an attribute that can be divided into smaller attributes.

---

# Example

Suppose we have:

```text
FullName
```

It can be divided into:

```text
FirstName
LastName
```

So:

```text
FullName
   │
   ├── FirstName
   └── LastName
```

---

# Converting Composite Attribute to Relational Schema

When converting a Composite Attribute into a relational schema:

> We store its smaller components instead of storing the composite attribute itself.

For example:

```text
Customer(
    CustomerID PK,
    FirstName,
    LastName
)
```

We don't need:

```text
FullName
```

because it is represented by:

```text
FirstName
LastName
```

---

# Multivalued Attribute

A **Multivalued Attribute** is an attribute that can contain multiple values for the same entity.

---

# Example

Suppose a customer can have multiple phone numbers.

```text
Customer
   │
   └── PhoneNumbers
```

One customer could have:

```text
PhoneNumbers:
- 0612345678
- 0678456123
- 0698765432
```

A single column should not normally contain all these values.

---

# Converting Multivalued Attribute to Relational Schema

When converting a Multivalued Attribute:

> We create a separate table for the multivalued attribute.

---

# Example

## Customers

| CustomerID | FirstName | LastName   |
| ---------- | --------- | ---------- |
| 101        | Sara      | El Idrissi |
| 102        | Rayan     | Bennis     |

---

## CustomerPhones

| CustomerPhoneID | CustomerID | Phone      |
| --------------- | ---------- | ---------- |
| 1               | 101        | 0612345678 |
| 2               | 101        | 0678456123 |
| 3               | 102        | 0654321098 |

The `CustomerID` connects the phone numbers to their customer.

---

# Relational Schema

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName
)

CustomerPhones(
    CustomerPhoneID PK,
    CustomerID FK,
    Phone
)
```

The relationship is:

```text
CustomerID FK → Customers.CustomerID
```

---

# Why Create a Separate Table?

Imagine storing multiple phone numbers like this:

```text
CustomerID | PhoneNumbers
-----------|-------------------------------
101        | 0612345678, 0678456123
```

This creates problems when searching, updating, or managing individual phone numbers.

Instead, we use:

```text
CustomerPhones
```

where every phone number gets its own record.

---

# Derived Attribute

A **Derived Attribute** is an attribute whose value can be calculated from another attribute.

---

# Example

Suppose we have:

```text
BirthDate
```

and:

```text
Age
```

Age can be calculated from BirthDate.

Therefore:

```text
Age ← BirthDate
```

---

# Converting Derived Attribute to Relational Schema

When the value can be calculated from another stored attribute:

> We normally do not store the Derived Attribute.

For example:

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName,
    BirthDate
)
```

We don't need:

```text
Age
```

because it can be calculated from:

```text
BirthDate
```

---

# Why Ignore Derived Attributes?

Because storing calculated values can create inconsistency.

For example:

```text
BirthDate = 2000-05-10
Age = 25
```

After one year:

```text
BirthDate = 2000-05-10
Age = 26
```

If we store both values, we must make sure that `Age` is always updated correctly.

Instead, we can calculate the age when needed.

---

# 🎯 Main Conversion Rules

When converting these attributes from ERD to Relational Schema:

| Attribute Type | What We Do                     |
| -------------- | ------------------------------ |
| Composite      | Store its component attributes |
| Multivalued    | Create a separate table        |
| Derived        | Normally do not store it       |

---

# Example

Suppose we have a:

```text
Customer
```

with:

```text
FullName
PhoneNumbers
BirthDate
Age
```

Where:

* `FullName` is Composite
* `PhoneNumbers` is Multivalued
* `Age` is Derived

---

# ERD Attributes

```text
             Customer
          /     |      \
    FullName  Phones    BirthDate
      /   \             \
 First   Last            Age
```

---

# Relational Schema

We convert it into:

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName,
    BirthDate
)

CustomerPhones(
    CustomerPhoneID PK,
    CustomerID FK,
    Phone
)
```

Notice that:

```text
FullName
```

was divided into:

```text
FirstName
LastName
```

and:

```text
PhoneNumbers
```

became a separate table.

And:

```text
Age
```

was not stored because it is derived from `BirthDate`.

---

# Important Rules

## Rule 1

Create a table for the main entity.

---

## Rule 2

Move normal attributes into the table.

---

## Rule 3

For a Composite Attribute:

> Store its component attributes.

Example:

```text
FullName
   ↓
FirstName
LastName
```

---

## Rule 4

For a Multivalued Attribute:

> Create a separate table.

Example:

```text
Customer
    ↓
CustomerPhones
```

---

## Rule 5

Move the Primary Key of the main entity into the new table as a Foreign Key.

Example:

```text
Customers
CustomerID PK
      ↓
CustomerPhones
CustomerID FK
```

---

## Rule 6

For a Derived Attribute:

> Normally don't store it if it can be calculated from existing data.

Example:

```text
BirthDate → Age
```

---

# 🧠 Easy Way to Remember

```text
Composite
     ↓
Break it into parts

Multivalued
     ↓
Separate Table

Derived
     ↓
Calculate when needed
```

---

# 🎯 Real-World Examples

| Attribute      | Type        | Conversion                      |
| -------------- | ----------- | ------------------------------- |
| FullName       | Composite   | FirstName + LastName            |
| Address        | Composite   | Street + City + PostalCode      |
| PhoneNumbers   | Multivalued | Separate table                  |
| EmailAddresses | Multivalued | Separate table                  |
| Age            | Derived     | Calculate from BirthDate        |
| TotalPrice     | Derived     | Calculate from Price × Quantity |

---

# Key Takeaway

When converting attributes from an ER Diagram to a Relational Schema:

**Composite Attribute → Store its components**

**Multivalued Attribute → Create a separate table**

**Derived Attribute → Normally don't store it**

---

# Summary

| Concept     | Meaning                        | Relational Schema   |
| ----------- | ------------------------------ | ------------------- |
| Composite   | Attribute with smaller parts   | Store components    |
| Multivalued | Attribute with multiple values | Separate table      |
| Derived     | Calculated attribute           | Normally not stored |
| PK          | Primary Key                    | Identifies records  |
| FK          | Foreign Key                    | Connects tables     |

---

# Golden Point

```text
Composite   → Components
Multivalued → Separate Table
Derived     → Calculate
```

---

# Author

Youness Chergui Amin

---

---

# الدرس 30 — تحويل Composite / Multivalued / Derived Attributes إلى Relational Schema

---

# المقدمة

فهاد الدرس، غادي نتعلمو كيفاش نحوّلو أنواع مختلفة ديال الـ Attributes من **ER Diagram** إلى **Relational Schema**.

غادي نركزو على ثلاثة أنواع:

* Composite Attributes
* Multivalued Attributes
* Derived Attributes

كل نوع فيهم عندو طريقة خاصة فاش كنحوّلوه لـ Database Tables.

---

# شنو هي Attribute Types؟

الـ Attributes هما المعلومات أو الخصائص اللي كتوصف الـ Entity.

فـ ER Modeling، كاينين أنواع مختلفة ديال الـ Attributes.

فهاد الدرس غادي نهضرو على:

```text
Composite Attribute

Multivalued Attribute

Derived Attribute
```

---

# Composite Attribute

الـ **Composite Attribute** هو Attribute نقدروا نقسموه لأجزاء أصغر.

---

# مثال

نفترضو عندنا:

```text
FullName
```

نقدرو نقسموه إلى:

```text
FirstName
LastName
```

يعني:

```text
FullName
   │
   ├── FirstName
   └── LastName
```

---

# تحويل Composite Attribute إلى Relational Schema

ملي كنحوّلو Composite Attribute إلى Relational Schema:

> كنخزنو الـ Components ديالو، وما كنحتاجوش نخزنو الـ Composite Attribute كامل.

مثلاً:

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName
)
```

ما محتاجينش:

```text
FullName
```

حيت المعلومات ديالو موجودة فـ:

```text
FirstName
LastName
```

---

# Multivalued Attribute

الـ **Multivalued Attribute** هو Attribute يقدر يكون عندو أكثر من Value لنفس الـ Entity.

---

# مثال

نفترضو Customer يقدر يكون عندو أكثر من رقم هاتف.

```text
Customer
   │
   └── PhoneNumbers
```

واحد الـ Customer يقدر يكون عندو:

```text
PhoneNumbers:
- 0612345678
- 0678456123
- 0698765432
```

ماشي مزيان نحطو هاد القيم كاملين فـ Column وحدة.

---

# تحويل Multivalued Attribute إلى Relational Schema

ملي كنحوّلو Multivalued Attribute:

> كننشئو Table جديدة خاصة بهاد الـ Attribute.

---

# مثال

## Customers

| CustomerID | FirstName | LastName   |
| ---------- | --------- | ---------- |
| 101        | Sara      | El Idrissi |
| 102        | Rayan     | Bennis     |

---

## CustomerPhones

| CustomerPhoneID | CustomerID | Phone      |
| --------------- | ---------- | ---------- |
| 1               | 101        | 0612345678 |
| 2               | 101        | 0678456123 |
| 3               | 102        | 0654321098 |

الـ `CustomerID` هو اللي كيربط أرقام الهاتف بالـ Customer ديالهم.

---

# Relational Schema

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName
)

CustomerPhones(
    CustomerPhoneID PK,
    CustomerID FK,
    Phone
)
```

والعلاقة هي:

```text
CustomerID FK → Customers.CustomerID
```

---

# علاش كننشئو Table جديدة؟

تخيل إلا خزنّا أرقام الهاتف هكا:

```text
CustomerID | PhoneNumbers
-----------|-------------------------------
101        | 0612345678, 0678456123
```

غادي تولي عندنا مشاكل فـ:

* البحث
* التعديل
* حذف رقم واحد
* التعامل مع كل Phone بوحدو

لهذا كنستعملو Table جديدة:

```text
CustomerPhones
```

وكل Phone كتكون Record بوحدها.

---

# Derived Attribute

الـ **Derived Attribute** هو Attribute القيمة ديالو كتتحسب انطلاقاً من Attribute آخر.

---

# مثال

نفترضو عندنا:

```text
BirthDate
```

وعندنا:

```text
Age
```

الـ Age نقدروا نحسبوه من BirthDate.

يعني:

```text
Age ← BirthDate
```

---

# تحويل Derived Attribute إلى Relational Schema

ملي القيمة نقدروا نحسبوها من Attribute آخر مخزن:

> غالباً ما كنخزنوش الـ Derived Attribute.

مثلاً:

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName,
    BirthDate
)
```

ما محتاجينش نخزنو:

```text
Age
```

حيت نقدروا نحسبوه انطلاقاً من:

```text
BirthDate
```

---

# علاش ما كنخزنوش Derived Attribute؟

حيت إلا خزنا القيمة المحسوبة، ممكن تولي قديمة وما تبقاش متطابقة مع البيانات الأصلية.

مثلاً:

```text
BirthDate = 2000-05-10
Age = 25
```

من بعد عام:

```text
BirthDate = 2000-05-10
Age = 26
```

إلا كان `Age` مخزن، خاصنا نحدّثوه باستمرار.

أما إلا حسبناه من `BirthDate` وقت الحاجة، غادي يبقى صحيح.

---

# 🎯 القواعد الأساسية للتحويل

ملي كنحوّلو هاد الأنواع من ERD إلى Relational Schema:

| نوع Attribute | شنو كنديرو؟                 |
| ------------- | --------------------------- |
| Composite     | كنخزنو الـ Components ديالو |
| Multivalued   | كننشئو Table جديدة          |
| Derived       | غالباً ما كنخزنوهش          |

---

# مثال شامل

نفترضو عندنا:

```text
Customer
```

وعندو:

```text
FullName
PhoneNumbers
BirthDate
Age
```

فين:

* `FullName` → Composite
* `PhoneNumbers` → Multivalued
* `Age` → Derived

---

# Attributes فـ ERD

```text
             Customer
          /     |      \
    FullName  Phones    BirthDate
      /   \             \
 First   Last            Age
```

---

# Relational Schema

غادي نحولوها لـ:

```text
Customers(
    CustomerID PK,
    FirstName,
    LastName,
    BirthDate
)

CustomerPhones(
    CustomerPhoneID PK,
    CustomerID FK,
    Phone
)
```

لاحظ:

```text
FullName
```

تقسمات إلى:

```text
FirstName
LastName
```

و:

```text
PhoneNumbers
```

ولات Table مستقلة.

أما:

```text
Age
```

ما تخزناهاش، حيت نقدروا نحسبوها من `BirthDate`.

---

# Important Rules

## Rule 1

كل Entity رئيسية كننشئو ليها Table.

---

## Rule 2

الـ Normal Attributes كنحطوهم فـ Table ديال الـ Entity.

---

## Rule 3

إلا كان عندنا Composite Attribute:

> كنخزنو الـ Components ديالو.

مثال:

```text
FullName
   ↓
FirstName
LastName
```

---

## Rule 4

إلا كان عندنا Multivalued Attribute:

> كننشئو Table جديدة.

مثال:

```text
Customer
    ↓
CustomerPhones
```

---

## Rule 5

كننقلو الـ Primary Key ديال الـ Main Table للـ Table الجديدة وكنخليه Foreign Key.

مثال:

```text
Customers
CustomerID PK
      ↓
CustomerPhones
CustomerID FK
```

---

## Rule 6

إلا كان عندنا Derived Attribute:

> غالباً ما كنخزنوهش إلا كان ممكن نحسبوه من Data موجودة.

مثال:

```text
BirthDate → Age
```

---

# 🧠 طريقة سهلة باش تحفظهم

```text
Composite
     ↓
قسمو لأجزاء

Multivalued
     ↓
Table جديدة

Derived
     ↓
نحسبوه ملي نحتاجوه
```

---

# 🎯 أمثلة من الواقع

| Attribute      | النوع       | التحويل                    |
| -------------- | ----------- | -------------------------- |
| FullName       | Composite   | FirstName + LastName       |
| Address        | Composite   | Street + City + PostalCode |
| PhoneNumbers   | Multivalued | Table جديدة                |
| EmailAddresses | Multivalued | Table جديدة                |
| Age            | Derived     | نحسبوه من BirthDate        |
| TotalPrice     | Derived     | نحسبوه من Price × Quantity |

---

# الخلاصة المهمة

ملي كنحوّلو Attributes من ER Diagram إلى Relational Schema:

**Composite Attribute → كنخزنو الـ Components ديالو**

**Multivalued Attribute → كننشئو Table جديدة**

**Derived Attribute → غالباً ما كنخزنوهش**

---

# Summary

| المفهوم     | المعنى                   | Relational Schema     |
| ----------- | ------------------------ | --------------------- |
| Composite   | Attribute فيه أجزاء أصغر | كنخزنو الـ Components |
| Multivalued | Attribute فيه عدة Values | Table جديدة           |
| Derived     | Value محسوبة             | غالباً ما كتخزنش      |
| PK          | Primary Key              | كيميز الـ Records     |
| FK          | Foreign Key              | كيربط بين Tables      |

---

# Golden Point

```text
Composite   → Components
Multivalued → Separate Table
Derived     → Calculate
```

---

# المؤلف

Youness Chergui Amin

---
