--show all drug companies
select DC_ID,
       DC_NAME,
       DC_ADDRESS
from "DRUG_COMP" a;

--show all drug suppliers
select DS_ID,
       DS_NAME,
       DS_ADDRESS
from "DRUG_SUPP" a;

--show all drugs and their producers
select DRG_ID,
       DRG_NAME,
       DRG_TYPE,
       (select "DC_NAME" from "DRUG_COMP" x where x."DC_ID" = a."DC_ID") "DC_NAME"
from "DRUG" a;

--show all drugs and their suppliers*
select a.DRG_ID,
       a.DRG_NAME,
       a.DRG_TYPE,
       b.DS_NAME
from "DRUG" a,"DRUG_SUPP" B,"SUPPLIERS" c 
where ((c.DRG_ID = a.DRG_ID) and (c.DS_ID =b.DS_ID));

--show all employees and the pharmacies they work in
select EMP_ID,
       EMP_NAME,
       EMP_PHONE,
       EMP_SAL,
       (select "PH_NAME" from "PHARMACY" x where x."PH_ID" = a."PH_ID") "PH_NAME"
from "EMPLOYEE" a;

--show all incomes and which pharmacy they are from
select IN_ID,
       IN_DATE,
       (select "PH_NAME" from "PHARMACY" x where x."PH_ID" = a."PH_ID") "PH_NAME"
from "INCOME" a;

-- show all inventories and the pharmacies they are in
select INV_ID,
       (select "PH_NAME" from "PHARMACY" x where x."PH_ID" = a."PH_ID") "PH_NAME"
from "INVENTORY" a;

--show all outcomes and which pharmacy they are from
select OUT_ID,
       OUT_DATE,
       (select "PH_NAME" from "PHARMACY" x where x."PH_ID" = a."PH_ID") "PH_NAME"
from "OUTCOME" a;

--show pharmacy info
select PH_ID,
       PH_NAME,
       PH_ADDRESS,
       PH_PHONE
from "PHARMACY" a;

-- show all of stocked drugs and their names
select ST_ID,
       ST_BUY_PRICE,
       ST_EXPIRE,
       ST_SELL_PRICE,
       INV_ID,
       (select "DRG_NAME" from "DRUG" x where x."DRG_ID" = a."DRG_ID") "DRG_NAME"
from "STOCK" a;
