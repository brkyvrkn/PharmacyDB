# PharmacyDB

[![License](https://img.shields.io/github/license/brkyvrkn/PharmacyDB?style=plastic)](https://github.com/brkyvrkn/PharmacyDB/blob/master/LICENSE)

## Environment

The management system was built by using the Oracle with version 12c. It provides the illustration and running the code easily.

## Abstract

People may sometimes become weak due to external or internal influences, and have the potential to be ill in all seasons due to malnutrition. At this point, it is important to be able to diagnose and treat people correctly. People need medicines to overcome these diseases. The organizations responsible for the sale of these drugs also unite under the roof of the pharmacy. A pharmacy must have some basic features that can respond to patients' wishes, and at the same time, they need some programs that contain records of all relevant information to respond quickly and systematically.

## Introduction

We live in the information age, so we need to keep every job we do in a virtual environment in detail. As we all know, pharmacies also sell hundreds of drugs. In addition, the channels responsible for the supply of these drugs perform thousands of operations. When we go one step further, there are companies operating the factories responsible for the production of these drugs. 

As you have seen, the information contained in this structure must be stored and accessible on a regular basis. We have established a structure in which we can control all this flow in the Pharmacy system.

## What the System Does?

We have employees in our pharmacies, who are responsible for the supplement. In the inventory, there are drugs that are stored for delivery to pharmacies, and there are two different types, medical and non-medical. Each drug has its own unique barcode number, which we keep in our table through this barcode number. Other features of the drugs are the name and type. Since the drugs will be taken by the patients, we have a patient table that stores the patients. One or more prescriptions for each patient in this table are written. 

We also created a recipe table to access these prescriptions. When we consider the conditions in Turkey, our country is available by prescription type, expressed as color names, these types of statements we've added to the bill as a separate feature. In addition, the day of prescriptions is an important attribute; therefore, we also have access to the days on which the prescriptions are written under the day column.

## User Requirements

- Daily & monthly income
- Daily & monthly outcome
- The drug which is the bestseller based on its type
- The drugs which are fully-supported by government
- Bestseller non-medical drugs
- Daily inventory information
- All expired drugs
- Salaries of the employee
- Whole drugs in the inventory
- Drug count in the inventory with respect to their name
- All drug supplier
- All patient
- All prescriptions that is written in a specific day
- Bestseller drug in a specific month/year
- The date of the last receipt of the specific drug by a patient

>The owner of the system will be able to do the things in the below

- Drug Management
- Inventory of the Drug Management
- Employee Management
- Drug Supplier Management

## ERD

The diagram illustrated contains all inter-relations and connections. The bold & underlined ellipses is corresponding to their primary keys, also the nodes that have multi-connections are specified as the foreign keys which are the same values its corresponding data.

Some relation sets have more than one interconnection associated with their foreign keys, it means that some of them is many-to-one and the others one-to-one. As we see in the first draft of the E-R Diagram that there is no one-to-many cardinalities. Perhaps, it would be after we redesign the tables in other revisions, feedbacks.

The rectangles defines entity sets and the ellipses are connected to are their attributes ​(entity).

![alt text](https://github.com/brkyvrkn/PharmacyDB/blob/master/images/ERD.png "ERD Diagram")

## Entities

### Drug Company

|    |              |
|----|--------------|
| PK | dc_id        |
|    | dc_name      |
|    | dc_address   |

### Drug

|    |            |
|----|------------|
| PK | drg_id     |
|    | drg_name   |
|    | drg_type   |
|    | drg_expire |

### Drug Suppliers

|    |            |
|----|------------|
| PK | ds_id      |
|    | ds_name    |
|    | ds_address |

### Stock

|    |               |
|----|---------------|
| PK | st_id         |
|    | st_buy_price  |
|    | st_sell_price |

### Pharmacy

|    |            |
|----|------------|
| PK | ph_id      |
|    | ph_address |
|    | ph_name    |
|    | ph_phone   |

### Income

|   |         |
|---|---------|
|   | in_id   |
|   | in_date |

### Outcome

|   |          |
|---|----------|
|   | out_id   |
|   | out_date |

## Reduced Relation

This diagram does not include relations (which has [0/1] or[1/1] etc.) remove them and distribute the primary keys as foreign keys.

Reduced relations are eliminated and according to elimination law which is ​"*if there is an association like [1,1] or [0,1] remove the relation between these two tables and distribute attributes of relation to tables as foreign keys*".

* *dc_id*, *st_id*​ are inserted into **​DRUG** ​table as foreign keys
* *ds_id*, *drg_id​* are inserted into **​SUPPLIERS** ​table as foreign key.
* *inv_id*, *in_id*, *out_id* ​are inserted as foreign keys and *​in_date*, *out_date* are inserted as attributes to **​STOCK**​ table.
* *ph_id* ​is inserted into **​INVENTORY** ​table as foreign key.
* *ph_id* ​is inserted into **​INCOME** ​and ​**OUTCOME** ​tables as foreign keys.

> Thus, the relations after reducing can be illustrated as below

![alt text](https://github.com/brkyvrkn/PharmacyDB/blob/master/images/Reduced_RD.png "Reduced Relational Diagram")

## Authors

Berkay Vurkan, berkayvurkan@yahoo.com

[Said Alır](https://github.com/Al-Said),

[Mert Çalış](https://github.com/mertcalis),

[Doğukan Gök](https://github.com/dgkngk)

## License

PharmacyDB is available under the MIT license. See the LICENSE file for more info.
