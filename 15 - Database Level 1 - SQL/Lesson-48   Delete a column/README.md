# Lesson 48 - SQL Delete a Column

---

# Introduction

In this lesson, we learned about:

**Deleting Columns from a Database Table**

Sometimes, we no longer need a specific column in a table. This can happen during database schema refactoring, when removing redundant data, or when cleaning up obsolete fields.

SQL provides the `ALTER TABLE` statement combined with the `DROP COLUMN` clause to permanently delete one or more columns from a table.

---

# Drop Column in SQL

The `DROP COLUMN` clause is used with `ALTER TABLE` to remove a column from an existing table.

### Dropping a Single Column

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Dropping Multiple Columns (SQL Server / T-SQL)

```sql
ALTER TABLE table_name
DROP COLUMN column1_name, column2_name, ...;
```

---

# Delete a Column in SQL Server

In Microsoft SQL Server, we can use:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Example

If we have a table called `dbo.Emp` and we no longer need the `Salary` column:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

This permanently removes the `Salary` column and all the data stored in it.

---

# Complete Example

First, let's create a table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2)
);
```

Insert some sample data:

```sql
INSERT INTO Emp (FirstName, LastName, Salary)
VALUES
('Yassine', 'Amrani', 5000),
('Salma', 'Bennani', 6500);
```

Now, let's remove the `Salary` column:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

The `Salary` column no longer exists in the table.

We can verify the remaining columns by using:

```sql
SELECT *
FROM dbo.Emp;
```

The result will contain:

```text
ID | FirstName | LastName
```

The `Salary` column and all its stored values have been permanently removed.

---

# Dropping Multiple Columns

SQL Server also allows us to remove multiple columns in a single statement.

### Example

Suppose the table contains:

```text
ID
FirstName
LastName
Salary
Phone
Address
```

We can remove both `Salary` and `Address`:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary, Address;
```

Both columns will be removed from the table.

---

# Important Considerations & Constraints

Before dropping a column from a production database, there are several important things to consider.

## 1. Irreversible Action

Dropping a column is a permanent operation.

When a column is dropped, all the data stored in that column is deleted.

The data cannot normally be recovered unless you have a backup or another recovery method.

---

## 2. Dependent Objects

A column may be referenced by other database objects or constraints.

For example:

* **Foreign Key** constraints
* **Check** constraints
* **Unique** constraints
* **Default** constraints
* **Indexes**
* **Schema-bound Views**
* **Stored Procedures**
* **Triggers**
* **User-Defined Functions**

Some dependencies can prevent the column from being dropped, while others may require you to update the dependent object first.

For example, if a `DEFAULT` constraint is attached to the column, you may need to remove the constraint before dropping the column.

---

## 3. Locks

Executing:

```sql
ALTER TABLE ... DROP COLUMN
```

can acquire a schema-modification lock on the table.

This can block other operations on the table while the structural change is being performed.

The impact depends on the database engine, table size, and the operation being performed.

---

## 4. Performance

Dropping a column from a large table can require time and transaction log space.

The exact impact depends on factors such as:

* Table size
* Database engine
* Number of rows
* Storage structure
* Indexes and dependencies
* Database configuration

For large production tables, structural changes should be planned carefully.

---

# Best Practices

## 1. Always Backup

Before making structural changes, make sure you have a recent database backup.

This gives you a recovery option if something goes wrong.

---

## 2. Check Dependencies First

Before dropping a column, identify objects and constraints that depend on it.

Pay special attention to:

* Default constraints
* Check constraints
* Foreign Keys
* Indexes
* Views
* Stored Procedures
* Triggers
* Functions

---

## 3. Test in Staging

Always test structural SQL changes in a development or staging environment before applying them to production.

This helps you identify dependency, performance, or application-related problems before they affect real users.

---

# Before and After

### Before

```text
Emp
--------------------------------
ID
FirstName
LastName
Salary
```

### Drop Column Command

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

### After

```text
Emp
--------------------------------
ID
FirstName
LastName
```

The `Salary` column and its data have been removed.

---

# Important SQL Server Command

The main SQL Server command for deleting a column is:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Example

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

To delete multiple columns:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary, Address;
```

---

# Key Takeaway

To permanently delete a column from a SQL Server table, use:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

Always check dependencies and make sure you have a recent backup before removing a column, especially in a production database.

---

# Summary

| Operation               | SQL Server                               |
| ----------------------- | ---------------------------------------- |
| Delete Column           | `ALTER TABLE ... DROP COLUMN`            |
| Delete Single Column    | `DROP COLUMN column_name`                |
| Delete Multiple Columns | `DROP COLUMN column1, column2`           |
| Example                 | `ALTER TABLE dbo.Emp DROP COLUMN Salary` |

---

# Author

**Youness Chergui Amin**

---

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

<div dir="rtl" align="right">

# الدرس 48 — SQL Delete a Column

---

# المقدمة

فهاد الدرس تعلمنا:

**حذف الـColumns من Database Table**

كاينين حالات فين ما كنبقاوش محتاجين لـColumn معينة فـTable. مثلاً ملي كنبدلو Database Schema، كنحيدو Data زايدة، ولا كننقيو الـDatabase من Fields قدام وما بقاوش مستعملين.

SQL كتسمح لينا نستعملو `ALTER TABLE` مع `DROP COLUMN` باش نحيدو Column وحدة أو أكثر من Table بشكل نهائي.

---

# حذف Column فـSQL

الـ`DROP COLUMN` كتستعمل مع `ALTER TABLE` باش نحيدو Column موجودة فـTable.

### حذف Column وحدة

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### حذف أكثر من Column — SQL Server / T-SQL

```sql
ALTER TABLE table_name
DROP COLUMN column1_name, column2_name, ...;
```

---

# حذف Column فـSQL Server

فـMicrosoft SQL Server، نقدرو نستعملو:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### مثال

إلا كان عندنا Table سميتو `dbo.Emp` وما بقيناش محتاجين لـColumn ديال `Salary`:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

هاد الأمر كيحيد `Salary` بشكل نهائي، ومعاه جميع الـData اللي كانت مخزنة فيها.

---

# Complete Example

أولاً، غادي ننشئو Table:

```sql
CREATE TABLE Emp
(
    ID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2)
);
```

ومن بعد ندخلو شوية ديال البيانات:

```sql
INSERT INTO Emp (FirstName, LastName, Salary)
VALUES
('Yassine', 'Amrani', 5000),
('Salma', 'Bennani', 6500);
```

دابا غادي نحيدو الـ`Salary`:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

دابا الـ`Salary` ما بقاتش موجودة فـTable.

ونقدرو نتأكدو من الـColumns اللي بقاو باستعمال:

```sql
SELECT *
FROM dbo.Emp;
```

النتيجة غادي يكون فيها:

```text
ID | FirstName | LastName
```

الـ`Salary` والـData اللي كانت فيها تحيدو بشكل نهائي.

---

# حذف أكثر من Column

SQL Server حتى هي كتسمح لينا نحيدو أكثر من Column فـنفس الـStatement.

### مثال

نفترضو أن الـTable فيها:

```text
ID
FirstName
LastName
Salary
Phone
Address
```

نقدرو نحيدو `Salary` و `Address` بجوج:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary, Address;
```

الـColumns بجوج غادي يتحيدو من الـTable.

---

# Important Considerations & Constraints

قبل ما نحيدو Column من Production Database، كاينين مجموعة ديال الحوايج المهمة اللي خاصنا ننتابهو ليها.

## 1. Irreversible Action

حذف Column هو Operation نهائية.

ملي كنحيدو Column، جميع الـData اللي كانت مخزنة فيها كتتحيد.

هاد الـData ما كتقدرش ترجع بشكل عادي إلا كان عندك Backup أو شي طريقة أخرى للـRecovery.

---

## 2. Dependent Objects

ممكن تكون Column مرتبطة مع Database Objects أو Constraints آخرين.

مثلاً:

* **Foreign Key** constraints
* **Check** constraints
* **Unique** constraints
* **Default** constraints
* **Indexes**
* **Schema-bound Views**
* **Stored Procedures**
* **Triggers**
* **User-Defined Functions**

بعض الـDependencies يقدرو يمنعو حذف الـColumn، والبعض الآخر ممكن يحتاج منك تحدث الـDependent Object قبل ما تحيد الـColumn.

مثلاً، إلا كان `DEFAULT` constraint مربوط بالـColumn، ممكن تحتاج تحيد الـConstraint أولاً قبل حذف الـColumn.

---

## 3. Locks

ملي كننفذو:

```sql
ALTER TABLE ... DROP COLUMN
```

ممكن SQL Server يدير Schema-Modification Lock على الـTable.

هادشي يقدر يمنع عمليات أخرى على الـTable أثناء تنفيذ التغيير.

التأثير كيختلف حسب Database Engine، حجم الـTable، والعملية اللي كتدار.

---

## 4. Performance

حذف Column من Table كبيرة ممكن يحتاج وقت وTransaction Log Space.

التأثير بالضبط كيختلف حسب:

* حجم الـTable
* Database Engine
* عدد الـRows
* Storage Structure
* Indexes والـDependencies
* Database Configuration

بالنسبة لـLarge Production Tables، خاص Structural Changes يتخطط ليها مزيان.

---

# Best Practices

## 1. Always Backup

قبل ما تدير أي Structural Change، تأكد أن عندك Recent Database Backup.

هادشي كيخليك عندك إمكانية Recovery إلا وقع شي مشكل.

---

## 2. Check Dependencies First

قبل ما تحيد Column، خاصك تحدد الـObjects والـConstraints اللي مرتبطين بها.

ركز خصوصاً على:

* Default constraints
* Check constraints
* Foreign Keys
* Indexes
* Views
* Stored Procedures
* Triggers
* Functions

---

## 3. Test in Staging

دائماً جرب Structural SQL Changes فـDevelopment أو Staging Environment قبل ما تطبقهم فـProduction.

هادشي كيساعدك تلقى مشاكل ديال Dependencies أو Performance أو Application قبل ما يأثرو على المستخدمين الحقيقيين.

---

# Before and After

### قبل

```text
Emp
--------------------------------
ID
FirstName
LastName
Salary
```

### Drop Column Command

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

### من بعد

```text
Emp
--------------------------------
ID
FirstName
LastName
```

الـ`Salary` والـData اللي كانت فيها تحيدو.

---

# Important SQL Server Command

الأمر الأساسي فـSQL Server لحذف Column هو:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### مثال

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary;
```

ولحذف أكثر من Column:

```sql
ALTER TABLE dbo.Emp
DROP COLUMN Salary, Address;
```

---

# Key Takeaway

باش نحيدو Column بشكل نهائي من SQL Server Table، كنستعملو:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

ودائماً خاصنا نراجعو الـDependencies ونتأكدو أن عندنا Recent Backup قبل ما نحيدو Column، خصوصاً فـProduction Database.

---

# Summary

| العملية                 | SQL Server                               |
| ----------------------- | ---------------------------------------- |
| Delete Column           | `ALTER TABLE ... DROP COLUMN`            |
| Delete Single Column    | `DROP COLUMN column_name`                |
| Delete Multiple Columns | `DROP COLUMN column1, column2`           |
| Example                 | `ALTER TABLE dbo.Emp DROP COLUMN Salary` |

---

# Author

**Youness Chergui Amin**

</div>
