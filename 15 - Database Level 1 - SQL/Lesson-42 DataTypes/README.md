# Lesson 42 - SQL Data Types

---

# Introduction

In this lesson, we learned about the different **Data Types** supported by Microsoft SQL Server.

Choosing the correct data type is important because it affects:

* The type of data that can be stored.
* Storage requirements.
* Data integrity.
* Performance.
* The accuracy of stored values.

---

# What are SQL Server Data Types?

A **Data Type** defines what kind of value a column can store.

For example:

```sql
ID int
```

means that `ID` stores integer numbers.

And:

```sql
Name nvarchar(50)
```

means that `Name` stores Unicode text with a maximum declared length of 50 characters.

---

# Main Categories of SQL Server Data Types

SQL Server data types can be grouped into several categories:

1. **Exact Numerics**
2. **Approximate Numerics**
3. **Character Strings**
4. **Unicode Character Strings**
5. **Date and Time**
6. **Binary Strings**
7. **Other / Special Data Types**

---

# 1. Exact Numerics

Exact numeric types are used when values need to be stored accurately.

## Integer Types

| Data Type  | Range                           | Storage | Main Use                 |
| ---------- | ------------------------------- | ------- | ------------------------ |
| `tinyint`  | 0 to 255                        | 1 byte  | Small positive numbers   |
| `smallint` | -32,768 to 32,767               | 2 bytes | Small integers           |
| `int`      | -2,147,483,648 to 2,147,483,647 | 4 bytes | General-purpose integers |
| `bigint`   | -2⁶³ to 2⁶³ - 1                 | 8 bytes | Very large integers      |

### Example

```sql
CREATE TABLE Products
(
    ID int,
    Quantity smallint,
    CategoryID tinyint,
    BigNumber bigint
);
```

---

# BIT

`bit` is used for values that represent a Boolean-like state.

It can store:

```text
0
1
NULL
```

For example:

```sql
IsActive bit
```

could represent:

| IsActive | Meaning                 |
| -------- | ----------------------- |
| `0`      | False / No              |
| `1`      | True / Yes              |
| `NULL`   | Unknown / Not specified |

SQL Server can pack up to 8 `bit` columns into 1 byte.

---

# DECIMAL and NUMERIC

`decimal` and `numeric` are equivalent data types in SQL Server.

They are used when exact decimal precision is important.

Syntax:

```sql
decimal(p, s)
```

Where:

* `p` = **Precision** → total number of digits.
* `s` = **Scale** → number of digits after the decimal point.

### Example

```sql
Salary decimal(10,2)
```

This allows up to 10 total digits, with 2 digits after the decimal point.

Examples:

```text
1500.50
99999999.99
```

For financial calculations where exact decimal values are required, `decimal` is generally preferred.

---

# MONEY and SMALLMONEY

SQL Server also provides monetary data types:

```sql
money
smallmoney
```

| Data Type    | Storage | Main Use                             |
| ------------ | ------- | ------------------------------------ |
| `money`      | 8 bytes | Monetary values with a larger range  |
| `smallmoney` | 4 bytes | Monetary values with a smaller range |

Example:

```sql
Salary money
```

or:

```sql
Salary smallmoney
```

For many applications, `decimal` is preferred when precise control over precision and scale is required.

---

# 2. Approximate Numerics

Approximate numeric types are used for floating-point values.

They are useful when a very large range or scientific calculations are more important than exact decimal representation.

The main types are:

| Data Type | Approximate Precision | Storage                             |
| --------- | --------------------- | ----------------------------------- |
| `float`   | Up to about 15 digits | 4 or 8 bytes depending on precision |
| `real`    | About 7 digits        | 4 bytes                             |

### Example

```sql
Temperature float
```

or:

```sql
Measurement real
```

### Important

`float` and `real` are **approximate** types.

Therefore, they should generally not be used when exact decimal precision is required, such as financial values.

---

# 3. Character Strings

Character string types are used to store text.

## CHAR

```sql
char(n)
```

`char` is a **fixed-length** character type.

Example:

```sql
CountryCode char(2)
```

If the column is defined as `char(10)`, SQL Server reserves the fixed character length for the value.

---

# VARCHAR

```sql
varchar(n)
```

`varchar` is a **variable-length non-Unicode** character type.

Example:

```sql
Name varchar(50)
```

It is useful when storing text that does not require Unicode characters.

---

# VARCHAR(MAX)

```sql
varchar(max)
```

This is used for very large non-Unicode strings.

It can store up to approximately 2 GB of character data.

Example:

```sql
Description varchar(max)
```

---

# 4. Unicode Character Strings

Unicode types are useful when storing multilingual text, such as:

* Arabic
* German
* French
* Japanese
* Chinese

The main Unicode types are:

* `nchar`
* `nvarchar`
* `nvarchar(max)`

---

# NCHAR

```sql
nchar(n)
```

`nchar` is a **fixed-length Unicode** character type.

Example:

```sql
CountryCode nchar(2)
```

---

# NVARCHAR

```sql
nvarchar(n)
```

`nvarchar` is a **variable-length Unicode** character type.

Example:

```sql
Name nvarchar(50)
```

For example:

```sql
Name nvarchar(50) = N'يونس'
```

The `N` before the string literal indicates a Unicode string literal in T-SQL.

---

# NVARCHAR(MAX)

```sql
nvarchar(max)
```

It is used for very large Unicode text.

Example:

```sql
Description nvarchar(max)
```

It can store up to approximately 2 GB of character data.

---

# VARCHAR vs NVARCHAR

| Type            | Unicode | Variable Length | Typical Use                      |
| --------------- | ------- | --------------- | -------------------------------- |
| `char(n)`       | No      | No              | Fixed-length non-Unicode text    |
| `varchar(n)`    | No      | Yes             | Variable-length non-Unicode text |
| `nchar(n)`      | Yes     | No              | Fixed-length Unicode text        |
| `nvarchar(n)`   | Yes     | Yes             | Variable-length Unicode text     |
| `nvarchar(max)` | Yes     | Yes             | Large Unicode text               |

### Important Rule

If your application needs to store languages such as Arabic, Japanese, or Chinese, use Unicode types such as:

```sql
nvarchar
nchar
nvarchar(max)
```

---

# Deprecated Text Types

SQL Server has older types:

```text
text
ntext
```

These types are deprecated.

For new development, use:

```sql
varchar(max)
nvarchar(max)
```

instead.

---

# 5. Date and Time Data Types

SQL Server provides several types for dates and times.

| Data Type        | What it Stores                     | Storage    |
| ---------------- | ---------------------------------- | ---------- |
| `date`           | Date only                          | 3 bytes    |
| `time`           | Time only                          | 3–5 bytes  |
| `datetime2`      | Date and time                      | 6–8 bytes  |
| `datetimeoffset` | Date, time, and time-zone offset   | 8–10 bytes |
| `datetime`       | Date and time                      | 8 bytes    |
| `smalldatetime`  | Date and time with lower precision | 4 bytes    |

---

# DATE

Use `date` when you only need a date.

Example:

```sql
BirthDate date
```

Example value:

```text
2005-09-16
```

---

# TIME

Use `time` when you only need a time.

Example:

```sql
StartTime time
```

Example:

```text
10:30:00
```

---

# DATETIME2

`datetime2` stores both date and time with high precision.

Example:

```sql
CreatedAt datetime2
```

For new SQL Server applications, `datetime2` is generally preferred over the older `datetime` type.

---

# DATETIMEOFFSET

`datetimeoffset` stores:

* Date
* Time
* Time-zone offset

Example:

```sql
CreatedAt datetimeoffset
```

Example value:

```text
2026-09-09 10:30:00 +01:00
```

This is useful when applications work across different time zones.

---

# DATETIME and SMALLDATETIME

`datetime` and `smalldatetime` are older SQL Server date/time types.

For new designs, `datetime2` is generally preferred when you need both date and time.

---

# 6. Binary Strings

Binary data types are used to store raw bytes.

Main types:

```text
binary(n)
varbinary(n)
varbinary(max)
```

---

# BINARY

```sql
binary(n)
```

Stores fixed-length binary data.

Maximum declared length:

```text
8,000 bytes
```

---

# VARBINARY

```sql
varbinary(n)
```

Stores variable-length binary data.

Maximum declared length:

```text
8,000 bytes
```

---

# VARBINARY(MAX)

```sql
varbinary(max)
```

Stores large variable-length binary data.

It can store data up to approximately 2 GB.

Example:

```sql
FileData varbinary(max)
```

The older `image` data type is deprecated; `varbinary(max)` should be used instead.

---

# 7. Special / Other Data Types

SQL Server also provides several specialized data types.

| Data Type          | Purpose                                         |
| ------------------ | ----------------------------------------------- |
| `uniqueidentifier` | Stores GUID values                              |
| `xml`              | Stores XML data                                 |
| `rowversion`       | Used for row versioning / concurrency           |
| `hierarchyid`      | Represents hierarchical structures              |
| `sql_variant`      | Stores values of different supported data types |
| `table`            | Represents table-valued data                    |

---

# UNIQUEIDENTIFIER

`uniqueidentifier` stores a GUID.

Example:

```sql
ID uniqueidentifier
```

A GUID can be generated using:

```sql
SELECT NEWID();
```

Example result:

```text
6F9619FF-8B86-D011-B42D-00C04FC964FF
```

---

# XML

The `xml` data type is used to store XML-formatted data.

Example:

```sql
ProductData xml
```

---

# ROWVERSION

`rowversion` is an automatically generated binary value used mainly to detect changes to rows and support optimistic concurrency.

Example:

```sql
Version rowversion
```

### Important

`timestamp` is a deprecated synonym for `rowversion`.

Despite its name, SQL Server's `timestamp` does **not** store date or time.

For new development, use `rowversion`.

---

# HIERARCHYID

`hierarchyid` is designed to represent hierarchical relationships.

For example:

```text
Company
 ├── Management
 │    ├── Manager
 │    └── Assistant
 └── Development
      ├── Developer
      └── Tester
```

It can be useful for tree-like structures.

---

# SQL_VARIANT

`sql_variant` can store values of different supported SQL Server data types in the same column.

Example:

```sql
Value sql_variant
```

It should be used only when this flexibility is actually required.

---

# TABLE

`table` is a special data type used to define table variables.

Example:

```sql
DECLARE @Employees TABLE
(
    ID int,
    Name nvarchar(50)
);
```

Here, `@Employees` is a table variable.

---

# Choosing the Correct Data Type

Choosing the correct data type is important.

For example:

### Age

```sql
Age tinyint
```

An age does not need `bigint`.

### Name

```sql
Name nvarchar(100)
```

Useful when the application needs Unicode text.

### Salary

```sql
Salary decimal(10,2)
```

Useful when exact decimal precision is required.

### Birth Date

```sql
BirthDate date
```

There is no need to store a time when only the date is required.

---

# Example: Creating a Complete Table

```sql
CREATE TABLE Employees
(
    ID int PRIMARY KEY,
    Name nvarchar(100) NOT NULL,
    Age tinyint NULL,
    Salary decimal(10,2) NULL,
    BirthDate date NULL,
    IsActive bit NOT NULL,
    CreatedAt datetime2 NOT NULL
);
```

Here we selected a different data type according to the kind of data each column stores.

---

# Important Rules

| Rule                                       | Explanation                            |
| ------------------------------------------ | -------------------------------------- |
| Choose the appropriate type                | The type should match the data         |
| Use `nvarchar` for Unicode                 | Useful for multilingual text           |
| Use `decimal` for exact decimals           | Especially useful for financial values |
| Use `float` for approximate values         | Useful for scientific calculations     |
| Use `date` for date only                   | No need to store time                  |
| Prefer `datetime2`                         | Recommended for new date/time designs  |
| Use `varbinary(max)` for large binary data | Replacement for deprecated `image`     |
| Avoid `text` and `ntext`                   | Deprecated types                       |
| Use `rowversion` instead of `timestamp`    | `timestamp` does not represent time    |

---

# Key Takeaway

A SQL Server **Data Type** determines what kind of value a column can store and how SQL Server handles that value.

The most commonly used types include:

```text
int
decimal
varchar
nvarchar
date
datetime2
bit
varbinary
uniqueidentifier
```

Choosing the correct data type improves the database design, data integrity, and storage efficiency.

---

# Summary

| Category             | Important Types                                                                |
| -------------------- | ------------------------------------------------------------------------------ |
| Exact Numerics       | `tinyint`, `smallint`, `int`, `bigint`, `decimal`, `money`                     |
| Approximate Numerics | `float`, `real`                                                                |
| Character Strings    | `char`, `varchar`, `varchar(max)`                                              |
| Unicode Strings      | `nchar`, `nvarchar`, `nvarchar(max)`                                           |
| Date & Time          | `date`, `time`, `datetime2`, `datetimeoffset`                                  |
| Binary               | `binary`, `varbinary`, `varbinary(max)`                                        |
| Special              | `uniqueidentifier`, `xml`, `rowversion`, `hierarchyid`, `sql_variant`, `table` |
| Deprecated           | `text`, `ntext`, `image`, `timestamp`                                          |

---

# Author

Youness Chergui Amin

---

---

# الدرس 42 — SQL Data Types

---

# المقدمة

فهاد الدرس تعلمنا على مختلف **Data Types** اللي كيدعمهم Microsoft SQL Server.

اختيار الـData Type الصحيح مهم حيث كيأثر على:

* نوع البيانات اللي نقدروا نخزنو.
* المساحة اللي غادي تستعمل.
* صحة البيانات.
* الـPerformance.
* الدقة ديال القيم المخزنة.

---

# شنو هو Data Type؟

الـ **Data Type** كيحدد شنو نوع القيمة اللي يقدر يخزنها الـColumn.

مثلاً:

```sql
ID int
```

المعنى أن `ID` كيخزن أعداد صحيحة.

و:

```sql
Name nvarchar(50)
```

المعنى أن `Name` كيخزن نص Unicode بطول أقصى مصرح به 50 character.

---

# التصنيفات الرئيسية ديال Data Types

SQL Server فيه بزاف ديال Data Types، ونقدرو نقسموهم لـ:

1. **Exact Numerics**
2. **Approximate Numerics**
3. **Character Strings**
4. **Unicode Character Strings**
5. **Date and Time**
6. **Binary Strings**
7. **Other / Special Data Types**

---

# 1. Exact Numerics

هاد الأنواع كنستعملوها ملي بغينا نخزنو الأرقام بشكل دقيق.

## أنواع الأعداد الصحيحة

| Data Type  | Range                               | Storage | الاستعمال              |
| ---------- | ----------------------------------- | ------- | ---------------------- |
| `tinyint`  | من 0 حتى 255                        | 1 byte  | أعداد موجبة صغيرة      |
| `smallint` | من -32,768 حتى 32,767               | 2 bytes | أعداد صحيحة صغيرة      |
| `int`      | من -2,147,483,648 حتى 2,147,483,647 | 4 bytes | الاستعمال العام        |
| `bigint`   | من -2⁶³ حتى 2⁶³ - 1                 | 8 bytes | أعداد صحيحة كبيرة بزاف |

مثال:

```sql
CREATE TABLE Products
(
    ID int,
    Quantity smallint,
    CategoryID tinyint,
    BigNumber bigint
);
```

---

# BIT

`bit` كنستعملوه غالباً للقيم اللي عندها حالتين بحال True / False.

كيقدر يخزن:

```text
0
1
NULL
```

مثلاً:

```sql
IsActive bit
```

يمكن تعني:

| IsActive | المعنى                 |
| -------- | ---------------------- |
| `0`      | False / لا             |
| `1`      | True / نعم             |
| `NULL`   | غير معروف / ما تحدداتش |

وSQL Server يقدر يجمع حتى لـ8 أعمدة من نوع `bit` داخل Byte واحد.

---

# DECIMAL و NUMERIC

`decimal` و `numeric` هما نفس الـData Type فـSQL Server.

كنستعملوهم ملي كتكون الدقة مهمة.

الصيغة:

```sql
decimal(p, s)
```

فين:

* `p` = **Precision** → العدد الإجمالي ديال digits.
* `s` = **Scale** → عدد digits اللي كيجيو من بعد الفاصلة.

مثلاً:

```sql
Salary decimal(10,2)
```

كتعني أن عندنا حتى لـ10 digits بالمجموع، ومنهم جوج digits من بعد الفاصلة.

مثال:

```text
1500.50
99999999.99
```

فالقيم المالية اللي خاصها تكون دقيقة، `decimal` غالباً اختيار مناسب.

---

# MONEY و SMALLMONEY

SQL Server فيه حتى أنواع مخصصة للقيم المالية:

```sql
money
smallmoney
```

| Data Type    | Storage | الاستعمال           |
| ------------ | ------- | ------------------- |
| `money`      | 8 bytes | قيم مالية بمدى كبير |
| `smallmoney` | 4 bytes | قيم مالية بمدى أصغر |

مثال:

```sql
Salary money
```

أو:

```sql
Salary smallmoney
```

ولكن فبزاف ديال التطبيقات، `decimal` كيكون أفضل ملي بغينا نتحكمو بدقة فـPrecision وScale.

---

# 2. Approximate Numerics

هاد الأنواع كنستعملوها مع الأرقام العشرية اللي كتكون **Approximate**.

كتكون مفيدة ملي كيكون الـRange الكبير أو الحسابات العلمية أهم من الدقة العشرية المطلقة.

أهم الأنواع:

| Data Type | Precision تقريبية     | Storage                       |
| --------- | --------------------- | ----------------------------- |
| `float`   | حتى تقريباً 15 digits | 4 أو 8 bytes حسب الـprecision |
| `real`    | تقريباً 7 digits      | 4 bytes                       |

مثال:

```sql
Temperature float
```

أو:

```sql
Measurement real
```

### مهم

`float` و`real` هما **Approximate Data Types**.

لهذا ماشي مناسبين عادةً للقيم اللي خاصها دقة عشرية مطلقة، بحال بعض العمليات المالية.

---

# 3. Character Strings

هاد الأنواع كنستعملوها باش نخزنو النصوص.

## CHAR

```sql
char(n)
```

`char` هو **Fixed-Length**.

مثال:

```sql
CountryCode char(2)
```

إلى عرفنا Column بـ `char(10)` فهو Fixed-Length.

---

# VARCHAR

```sql
varchar(n)
```

`varchar` هو **Variable-Length Non-Unicode**.

مثال:

```sql
Name varchar(50)
```

كيكون مناسب للنصوص اللي ما محتاجاش Unicode.

---

# VARCHAR(MAX)

```sql
varchar(max)
```

كنستعملوه للنصوص الكبيرة بزاف.

كيقدر يخزن تقريباً حتى لـ2 GB من البيانات النصية.

مثال:

```sql
Description varchar(max)
```

---

# 4. Unicode Character Strings

Unicode Types مفيدين ملي بغينا نخزنو لغات متعددة بحال:

* العربية.
* الألمانية.
* الفرنسية.
* اليابانية.
* الصينية.

أهم الأنواع:

* `nchar`
* `nvarchar`
* `nvarchar(max)`

---

# NCHAR

```sql
nchar(n)
```

`nchar` هو **Fixed-Length Unicode**.

مثال:

```sql
CountryCode nchar(2)
```

---

# NVARCHAR

```sql
nvarchar(n)
```

`nvarchar` هو **Variable-Length Unicode**.

مثال:

```sql
Name nvarchar(50)
```

مثلاً:

```sql
Name nvarchar(50) = N'يونس'
```

الحرف `N` قبل الـString Literal كيعني أننا كنستعملو Unicode String Literal فـT-SQL.

---

# NVARCHAR(MAX)

```sql
nvarchar(max)
```

كنستعملوه ملي بغينا نخزنو نصوص Unicode كبيرة بزاف.

مثال:

```sql
Description nvarchar(max)
```

كيقدر يخزن تقريباً حتى لـ2 GB من البيانات.

---

# VARCHAR vs NVARCHAR

| Type            | Unicode | Variable Length | الاستعمال           |
| --------------- | ------- | --------------- | ------------------- |
| `char(n)`       | لا      | لا              | نص ثابت الطول       |
| `varchar(n)`    | لا      | نعم             | نص متغير الطول      |
| `nchar(n)`      | نعم     | لا              | Unicode ثابت الطول  |
| `nvarchar(n)`   | نعم     | نعم             | Unicode متغير الطول |
| `nvarchar(max)` | نعم     | نعم             | نص Unicode كبير     |

### القاعدة المهمة

إلى كان التطبيق ديالك غادي يخزن لغات بحال العربية أو اليابانية أو الصينية، استعمل Unicode Types بحال:

```sql
nvarchar
nchar
nvarchar(max)
```

---

# أنواع النصوص القديمة

كاينين أنواع قديمة فـSQL Server:

```text
text
ntext
```

هاد الأنواع **Deprecated**.

فالمشاريع الجديدة استعمل:

```sql
varchar(max)
nvarchar(max)
```

بدلهم.

---

# 5. Date and Time Data Types

SQL Server كيوفر عدة Data Types للتاريخ والوقت.

| Data Type        | شنو كيخزن                        | Storage    |
| ---------------- | -------------------------------- | ---------- |
| `date`           | التاريخ فقط                      | 3 bytes    |
| `time`           | الوقت فقط                        | 3–5 bytes  |
| `datetime2`      | التاريخ والوقت                   | 6–8 bytes  |
| `datetimeoffset` | التاريخ والوقت وTime Zone Offset | 8–10 bytes |
| `datetime`       | التاريخ والوقت                   | 8 bytes    |
| `smalldatetime`  | التاريخ والوقت بدقة أقل          | 4 bytes    |

---

# DATE

إلى كنت محتاج التاريخ فقط:

```sql
BirthDate date
```

مثال:

```text
2005-09-16
```

---

# TIME

إلى كنت محتاج الوقت فقط:

```sql
StartTime time
```

مثال:

```text
10:30:00
```

---

# DATETIME2

`datetime2` كيخزن التاريخ والوقت بدقة عالية.

مثال:

```sql
CreatedAt datetime2
```

فالمشاريع الجديدة، `datetime2` غالباً أفضل من `datetime`.

---

# DATETIMEOFFSET

`datetimeoffset` كيخزن:

* التاريخ.
* الوقت.
* Time Zone Offset.

مثال:

```sql
CreatedAt datetimeoffset
```

مثال للقيمة:

```text
2026-09-09 10:30:00 +01:00
```

هاد النوع مفيد خصوصاً فالتطبيقات اللي كتخدم مع مناطق زمنية مختلفة.

---

# DATETIME و SMALLDATETIME

`datetime` و `smalldatetime` هما أنواع أقدم فـSQL Server.

فالتصاميم الجديدة، `datetime2` غالباً هو الاختيار الأفضل ملي محتاج التاريخ والوقت بجوج.

---

# 6. Binary Strings

هاد الأنواع كنستعملوها باش نخزنو **Raw Binary Data**.

أهم الأنواع:

```text
binary(n)
varbinary(n)
varbinary(max)
```

---

# BINARY

```sql
binary(n)
```

كيخزن Binary Data بطول ثابت.

الحد الأقصى:

```text
8,000 bytes
```

---

# VARBINARY

```sql
varbinary(n)
```

كيخزن Binary Data بطول متغير.

الحد الأقصى:

```text
8,000 bytes
```

---

# VARBINARY(MAX)

```sql
varbinary(max)
```

كيخزن Binary Data كبيرة.

كيقدر يوصل تقريباً حتى لـ2 GB.

مثال:

```sql
FileData varbinary(max)
```

النوع القديم `image` Deprecated، و`varbinary(max)` هو البديل الموصى به.

---

# 7. Special / Other Data Types

SQL Server فيه حتى Data Types خاصة:

| Data Type          | الاستعمال                     |
| ------------------ | ----------------------------- |
| `uniqueidentifier` | تخزين GUID                    |
| `xml`              | تخزين XML                     |
| `rowversion`       | Row Versioning / Concurrency  |
| `hierarchyid`      | تمثيل Hierarchical Structures |
| `sql_variant`      | تخزين أنواع مختلفة من القيم   |
| `table`            | Table-Valued Data             |

---

# UNIQUEIDENTIFIER

`uniqueidentifier` كيخزن GUID.

مثال:

```sql
ID uniqueidentifier
```

ونقدروا نولدو GUID باستعمال:

```sql
SELECT NEWID();
```

مثال للنتيجة:

```text
6F9619FF-8B86-D011-B42D-00C04FC964FF
```

---

# XML

الـ`xml` Data Type كنستعملوه باش نخزنو XML Data.

مثال:

```sql
ProductData xml
```

---

# ROWVERSION

`rowversion` هو Binary Value كيولدها SQL Server بشكل أوتوماتيكي، وكيستعمل بزاف فـ:

* Detecting Changes.
* Optimistic Concurrency.

مثال:

```sql
Version rowversion
```

### مهم

`timestamp` هو اسم قديم/Deprecated Synonym لـ`rowversion`.

رغم الاسم ديالو، `timestamp` فـSQL Server **ما كيخزنش التاريخ ولا الوقت**.

فالمشاريع الجديدة استعمل:

```sql
rowversion
```

---

# HIERARCHYID

`hierarchyid` مخصص لتمثيل العلاقات الهرمية.

مثلاً:

```text
Company
 ├── Management
 │    ├── Manager
 │    └── Assistant
 └── Development
      ├── Developer
      └── Tester
```

كيكون مفيد فـTree Structures.

---

# SQL_VARIANT

`sql_variant` كيقدر يخزن قيم من Data Types مختلفة مدعومة فـSQL Server داخل نفس الـColumn.

مثال:

```sql
Value sql_variant
```

ولكن خاص نستعملوه غير ملي فعلاً محتاجين هاد المرونة.

---

# TABLE

`table` هو Data Type خاص كنستعملوه مع **Table Variables**.

مثال:

```sql
DECLARE @Employees TABLE
(
    ID int,
    Name nvarchar(50)
);
```

هنا `@Employees` هي Table Variable.

---

# كيفاش نختارو Data Type المناسب؟

اختيار الـData Type خاصو يكون حسب نوع البيانات.

مثلاً:

### Age

```sql
Age tinyint
```

ما محتاجينش `bigint` للعمر.

### Name

```sql
Name nvarchar(100)
```

مناسب إلا كان التطبيق محتاج Unicode.

### Salary

```sql
Salary decimal(10,2)
```

مناسب ملي بغينا دقة عشرية.

### Birth Date

```sql
BirthDate date
```

إلى كنا محتاجين غير التاريخ وما محتاجينش الوقت.

---

# مثال كامل

نقدروا ننشئو Table ديال Employees بهاد الشكل:

```sql
CREATE TABLE Employees
(
    ID int PRIMARY KEY,
    Name nvarchar(100) NOT NULL,
    Age tinyint NULL,
    Salary decimal(10,2) NULL,
    BirthDate date NULL,
    IsActive bit NOT NULL,
    CreatedAt datetime2 NOT NULL
);
```

كل Column هنا اخترنا ليه Data Type مناسب حسب نوع البيانات اللي غادي يخزن.

---

# القواعد المهمة

| القاعدة                                  | الشرح                       |
| ---------------------------------------- | --------------------------- |
| اختار Data Type المناسب                  | النوع خاصو يناسب البيانات   |
| استعمل `nvarchar` للـUnicode             | مفيد للغات متعددة           |
| استعمل `decimal` للأرقام الدقيقة         | خصوصاً فالقيم المالية       |
| استعمل `float` للقيم التقريبية           | مفيد للحسابات العلمية       |
| استعمل `date` للتاريخ فقط                | ما كاينش داعي نخزنو الوقت   |
| فضل `datetime2`                          | مناسب للتصاميم الجديدة      |
| استعمل `varbinary(max)` للـBinary الكبير | البديل لـ`image`            |
| تجنب `text` و `ntext`                    | أنواع Deprecated            |
| استعمل `rowversion` بدل `timestamp`      | `timestamp` ماشي تاريخ ووقت |

---

# الخلاصة المهمة

الـ **Data Type** فـSQL Server كيحدد نوع القيمة اللي يقدر يخزنها الـColumn وكيفاش SQL Server غادي يتعامل معها.

من أكثر الأنواع استعمالاً:

```text
int
decimal
varchar
nvarchar
date
datetime2
bit
varbinary
uniqueidentifier
```

اختيار الـData Type المناسب كيعاوننا فـ:

* تصميم Database مزيان.
* Data Integrity.
* استغلال Storage بشكل أفضل.
* تحسين الـPerformance.

---

# الملخص

| Category             | أهم Types                                                                      |
| -------------------- | ------------------------------------------------------------------------------ |
| Exact Numerics       | `tinyint`, `smallint`, `int`, `bigint`, `decimal`, `money`                     |
| Approximate Numerics | `float`, `real`                                                                |
| Character Strings    | `char`, `varchar`, `varchar(max)`                                              |
| Unicode Strings      | `nchar`, `nvarchar`, `nvarchar(max)`                                           |
| Date & Time          | `date`, `time`, `datetime2`, `datetimeoffset`                                  |
| Binary               | `binary`, `varbinary`, `varbinary(max)`                                        |
| Special              | `uniqueidentifier`, `xml`, `rowversion`, `hierarchyid`, `sql_variant`, `table` |
| Deprecated           | `text`, `ntext`, `image`, `timestamp`                                          |

---

# الكاتب

Youness Chergui Amin

---

---
