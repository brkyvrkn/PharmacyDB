
# Abstract

People may sometimes become weak due to external or internal influences, and have the potential to be ill in all seasons due to malnutrition. At this point, it is important to be able to diagnose and treat people correctly. People need medicines to overcome these diseases. The organizations responsible for the sale of these drugs also unite under the roof of the pharmacy. A pharmacy must have some basic features that can respond to patients' wishes, and at the same time, they need some programs that contain records of all relevant information to respond quickly and systematically.

# Introduction


## Berkay

1. Drug
2. Prescription

### Drug

![alt text](./images/oracle.png "Drug Schema")

|     | Drug              |
|-----|-------------------|
| PK  | __drg_id__        |
|     | drg_name          |
|     | drg_type          |
| FK1 | drg_comp_id       |
|     | drg_selling_price |
|     | drg_buying_price  |
|     | drg_gov_support   |
|     | drg_expire        |



### Prescription


|     | Prescription    |
|-----|-----------------|
| PK  | __pre_id__      |
|     | pre_date        |
|     | pre_type        |
| FK1 | pt_id           |
| FK2 | dr_id           |

## Doğukan

3. Patient

Doctors and Patients in a pharmacy database doesn’t seem really necessary. Prescriptions would suffice. But for example searching for some particular doctor’s prescriptions would be more efficient, if we can first find the doctor then it had the prescriptions that they issued instead of searching all the prescriptions in the database. But this would need a new solution to the tables as the current tables couldn’t be of use in that situation.




### Patient
Doesn’t need to hold prescripts or doctors because those will be more than once. They would need their own tables.

|    |    Patient  |
|----|-------------|
| PK | __pt_id__   |
|    | pt_name     |
|    | pt_surname  |
|    | pt_contact  |
|    | pt_birthdate|
