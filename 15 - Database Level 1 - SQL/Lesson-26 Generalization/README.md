# Lesson 24 - Generalization

---

# Introduction

In this lesson, we learned about:

# Generalization

Generalization is an important concept in ER Modeling used to reduce duplication and organize entities professionally.

It helps combine entities that share common attributes into one generalized entity.

---

# What is Generalization?

# Generalization

is the process of:

> Extracting common attributes from multiple entities and creating one general entity.

---

# Simple Idea

If multiple entities share common properties, we move those shared properties into one parent entity.

---

# Generalization is:

# Bottom-Up Approach

Meaning:

We start from smaller entities and combine them into a higher-level entity.

---

# Example

Suppose we have:

```text
Car

Truck

Motorcycle
```

All of them may share common attributes such as:

* VehicleID
* Brand
* Model
* Year

---

# Instead of Repeating

```text
Car(VehicleID, Brand, Model, Year)

Truck(VehicleID, Brand, Model, Year)

Motorcycle(VehicleID, Brand, Model, Year)
```

we create:

# Vehicle

---

# Generalized Structure

```text
             Vehicle
          /     |      \
        Car   Truck   Motorcycle
```

---

# Shared Attributes

## Vehicle

contains common attributes:

```text
VehicleID

Brand

Model

Year
```

---

# Specialized Attributes

Each child entity keeps its own unique attributes.

---

# Example

## Car

```text
NumberOfDoors

FuelType
```

---

## Truck

```text
LoadCapacity

TruckType
```

---

# Why Use Generalization?

Generalization helps to:

* Reduce redundancy
* Organize data better
* Simplify database design
* Reuse common attributes
* Improve maintainability

---

# Real-World Examples

| General Entity | Specialized Entities   |
| -------------- | ---------------------- |
| Vehicle        | Car, Truck, Motorcycle |
| Account        | Savings, Current       |
| Product        | Book, Laptop, Phone    |

---

# ERD Representation

Generalization is usually represented using:

# Triangle Symbol

---

# Example

```text
             Vehicle
                △
        ┌───────┼────────┐
       Car     Truck   Motorcycle
```

---

# Important Point

Generalization extracts:

# Common Attributes

from multiple entities.

---

# Difference Between Generalization and Specialization

| Generalization         | Specialization            |
| ---------------------- | ------------------------- |
| Bottom-Up              | Top-Down                  |
| Combine entities       | Divide entities           |
| Creates general entity | Creates specific entities |

---

# Key Takeaway

Generalization improves database structure by combining common properties into one generalized entity.

It helps create cleaner and more professional ER Diagrams.

---

# Summary

| Concept        | Meaning                                    |
| -------------- | ------------------------------------------ |
| Generalization | Combining entities into one general entity |
| Bottom-Up      | Build higher entity from lower entities    |
| Goal           | Reduce redundancy                          |
| Uses           | Shared/common attributes                   |

---

# Author

Youness Chergui Amin

---

<div dir="rtl" align="right">

<p align="center"><strong>Moroccan Arabic Version — النسخة بالدارجة المغربية</strong></p>

---

# الدرس 24 — Generalization

---

# المقدمة

فهاد الدرس، غادي نتعلمو على:

# Generalization

الـ Generalization هو واحد المفهوم مهم فـ ER Modeling، وكيعاوننا ننقصو من التكرار وننظمو الـ Entities بطريقة مزيانة.

الفكرة ديالو هي أننا كنجمعو الـ Entities اللي عندهم Attributes مشتركة، وكنحطو هاد المعلومات المشتركة فـ Entity عامة وحدة.

---

# شنو هي Generalization؟

# Generalization

هي العملية ديال:

> استخراج الـ Attributes المشتركة من عدة Entities وإنشاء Entity عامة كتجمعهم.

---

# الفكرة ببساطة

إلا كانو عندنا عدة Entities عندهم نفس الخصائص، كنخرجو هاد الخصائص المشتركة ونحطوها فـ Parent Entity وحدة.

---

# Generalization هي:

# Bottom-Up Approach

المعنى ديالها:

كنبدأو من Entities صغار ومختلفين، ومن بعد كنجمعوهم فـ Entity عامة وأكبر.

---

# مثال

نفترضو عندنا:

```text
Car

Truck

Motorcycle
```

كل وحدة فيهم ممكن يكون عندها Attributes مشتركة بحال:

* VehicleID
* Brand
* Model
* Year

---

# بلا ما نعاودو نفس المعلومات

```text
Car(VehicleID, Brand, Model, Year)

Truck(VehicleID, Brand, Model, Year)

Motorcycle(VehicleID, Brand, Model, Year)
```

كننشئو Entity عامة:

# Vehicle

---

# الشكل العام

```text
             Vehicle
          /     |      \
        Car   Truck   Motorcycle
```

---

# الـ Attributes المشتركة

## Vehicle

كتحتوي على المعلومات المشتركة:

```text
VehicleID

Brand

Model

Year
```

---

# الـ Attributes الخاصة

كل Child Entity كتبقى محتافظة بالـ Attributes اللي خاصة بها.

---

# مثال

## Car

```text
NumberOfDoors

FuelType
```

---

## Truck

```text
LoadCapacity

TruckType
```

---

# علاش كنستعملو Generalization؟

الـ Generalization كتعاوننا فـ:

* نقص التكرار
* تنظيم البيانات بشكل أحسن
* تبسيط تصميم قاعدة البيانات
* إعادة استعمال الـ Attributes المشتركة
* تسهيل صيانة النظام

---

# أمثلة من الواقع

| Entity عامة | Entities متخصصة        |
| ----------- | ---------------------- |
| Vehicle     | Car, Truck, Motorcycle |
| Account     | Savings, Current       |
| Product     | Book, Laptop, Phone    |

---

# تمثيل Generalization فـ ERD

الـ Generalization كتتمثل غالباً بـ:

# Triangle Symbol

---

# مثال

```text
             Vehicle
                △
        ┌───────┼────────┐
       Car     Truck   Motorcycle
```

---

# نقطة مهمة

الـ Generalization كتستخرج:

# Common Attributes

من عدة Entities، وكتحطهم فـ Entity عامة وحدة.

---

# الفرق بين Generalization و Specialization

| Generalization    | Specialization        |
| ----------------- | --------------------- |
| Bottom-Up         | Top-Down              |
| كتجمع Entities    | كتقسم Entity          |
| كتخلق Entity عامة | كتخلق Entities متخصصة |

---

# الخلاصة المهمة

الـ Generalization كتخلي تصميم قاعدة البيانات منظم أكثر، بحيث كنجمّعو الخصائص المشتركة فـ Entity عامة وحدة.

وبهاد الطريقة كننقصو من التكرار وكنحصلو على ER Diagram أنظف وأسهل فالصيانة.

---

# الخلاصة

| المفهوم        | المعنى                                       |
| -------------- | -------------------------------------------- |
| Generalization | جمع عدة Entities فـ Entity عامة وحدة         |
| Bottom-Up      | بناء Entity عامة انطلاقاً من Entities متخصصة |
| الهدف          | نقص التكرار                                  |
| الاستعمال      | الخصائص المشتركة                             |

---

# المؤلف

Youness Chergui Amin

</div>

---
