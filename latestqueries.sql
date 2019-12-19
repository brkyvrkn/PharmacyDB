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
                                  
                                 
--show average, minimum, maximum selling prices and total sales income
select AVG(ST_SELL_PRICE)"AVERAGE SELLING PRICE",MIN(ST_SELL_PRICE)"MINIMUM SELLING PRICE",
       MAX(ST_SELL_PRICE)"MAXIMUM SELLING PRICE",SUM(ST_SELL_PRICE)"TOTAL SALES INCOME"
from STOCK

--show average, minimum, maximum buying prices and total buyinngs outcome
select AVG(ST_BUY_PRICE)"AVERAGE BUYING PRICE",MIN(ST_BUY_PRICE)"MINIMUM BUYING PRICE",
       MAX(ST_BUY_PRICE)"MAXIMUM BUYING PRICE",SUM(ST_BUY_PRICE)"TOTAL BUYINGS OUTCOME"
from STOCK

--drugs with lowest sale price
select a.DRG_ID,
       b.DRG_NAME
from "STOCK" a,"DRUG"b where (select MIN(ST_SELL_PRICE) from stock ) = a.ST_SELL_PRICE and a.DRG_ID=b.DRG_ID

--drugs with highest sale price
select a.DRG_ID,
       b.DRG_NAME
from "STOCK" a,"DRUG"b where (select MAX(ST_SELL_PRICE) from stock ) = a.ST_SELL_PRICE and a.DRG_ID=b.DRG_ID

-- show the specific drug #x's suppliers
select a.DRG_ID,
       a.DRG_NAME,
       a.DRG_TYPE,
       b.DS_NAME
from "DRUG" a,"DRUG_SUPP" B,"SUPPLIERS" c 
where (a.DRG_ID = #X and(c.DRG_ID = a.DRG_ID) and (c.DS_ID =b.DS_ID));

--show how much suppliers every drug has
select C.DRG_ID,
       count(c.DS_ID)
from "DRUG" a,"DRUG_SUPP" B,"SUPPLIERS" c 
where (c.DRG_ID = a.DRG_ID) and (c.DS_ID =b.DS_ID)
group by a.DRG_ID
order by c.DRG_ID;                                  

--2.ekleme
--show how much sales the pharmacies accumulated between 2019 and 2020, dates can be changed.
select ph.PH_ID,sum(st.ST_SELL_PRICE)"TOTAL SOLD SUM",sum(st.ST_SELL_PRICE)/12"AVERAGE MONTHLY INCOME", count(st.ST_ID)"SOLD STOCK COUNT"
from "PHARMACY" ph,"INCOME" i,"STOCK" st
where ph.PH_ID = i.PH_ID and i.IN_ID=st.IN_ID and (i.IN_DATE between '01-01-2019' and '01-01-2020')
group by ph.PH_ID

--show how much shipments pharmacies took between 2019 and 2020, dates can be changed.
select ph.PH_ID,sum(st.ST_BUY_PRICE)"TOTAL BOUGHT SUM",sum(st.ST_BUY_PRICE)/12"AVERAGE MONTHLY OUTCOME", count(st.ST_ID)"BOUGHT STOCK COUNT"
from "PHARMACY" ph,"OUTCOME" o,"STOCK" st
where ph.PH_ID = o.PH_ID and o.OUT_ID=st.OUT_ID and (o.OUT_DATE between '01-01-2019' and '01-01-2020')
group by ph.PH_ID

--show how many drugs can be sold(not expired ones), and how much money can be accumulated from their sale for each pharmacy
select ph.PH_ID, count(st.ST_ID), sum(st.ST_SELL_PRICE)
from "PHARMACY" ph,"INVENTORY" inv,"STOCK" st
where ph.PH_ID = inv.PH_ID and inv.INV_ID=st.INV_ID and (st.ST_EXPIRE>SYSDATE)
group by ph.PH_ID

--show how many stock are in each inventory of each pharmacy
select ph.PH_ID,inv.INV_ID,count(st.ST_ID) "TOTAL STOCK COUNT"
from "PHARMACY" ph,"INVENTORY" inv, "STOCK" st
where (ph.PH_ID=inv.PH_ID and inv.INV_ID=st.INV_ID)
group by ph.PH_ID,inv.INV_ID
order by ph.PH_ID
                                                   

--show how much sales the pharmacies accumulated between 2019 and 2020 per stock, dates can be changed.
select ph.PH_ID,sum(st.ST_SELL_PRICE)/ count(st.ST_ID)
from "PHARMACY" ph,"INCOME" i,"STOCK" st
where ph.PH_ID = i.PH_ID and i.IN_ID=st.IN_ID and (i.IN_DATE between '01-01-2019' and '01-01-2020')
group by ph.PH_ID
                                                   
--show how much buyment the pharmacies accumulated between 2019 and 2020 per stock, dates can be changed.
select ph.PH_ID,sum(st.ST_SELL_PRICE)/ count(st.ST_ID)
from "PHARMACY" ph,"OUTCOME" O,"STOCK" st
where ph.PH_ID = o.PH_ID and o.IN_ID=st.OUT_ID and (o.OUT_DATE between '01-01-2019' and '01-01-2020')
group by ph.PH_ID
                                                   
--show how many stocks are there per drug
select drg.DRG_ID,COUNT(st.ST_ID)
from "DRUG" drg, "STOCK" st
where  drg.DRG_ID = st.DRG_ID
group by drg.DRG_ID
order by drg.DRG_ID

--3.ekleme
--shows how many sales are there per drug
select drg.DRG_ID,COUNT(st.IN_ID)
from "DRUG" drg, "STOCK" st
where drg.DRG_ID = st.DRG_ID
group by drg.DRG_ID
order by drg.DRG_ID

--shows how many individual drugs in stock
select drg.DRG_ID,COUNT(st.OUT_ID)
from "DRUG" drg, "STOCK" st
where drg.DRG_ID = st.DRG_ID
group by drg.DRG_ID
order by drg.DRG_ID

--shows how many individual drugs in inventory
select inv.INV_ID,COUNT(st.OUT_ID)
from "INVENTORY" inv, "STOCK" st
where inv.INV_ID = st.INV_ID
group by inv.INV_ID
order by inv.INV_ID

 --4.ekleme
 --show which drugs the pharmacies has
select ph.PH_ID,inv.INV_ID,drg.DRG_ID,drg.DRG_NAME
from "DRUG" drg, "STOCK" st, "INVENTORY" inv, "PHARMACY" ph
where ph.PH_ID = inv.PH_ID and st.INV_ID=inv.INV_ID and st.DRG_ID = drg.DRG_ID
order by ph.PH_ID

--how much drug has been purchased from each drug company
select dc.DC_ID, COUNT(o.OUT_ID)
from "DRUG" drg, "STOCK" st, "OUTCOME" o, "DRUG_COMP" dc
where dc.DC_ID = drg.DC_ID and drg.DRG_ID = st.DRG_ID and st.OUT_ID = o.OUT_ID
group by dc.DC_ID
order by dc.DC_ID

--how much drug has been sold  from each drug company
select dc.DC_ID, COUNT(inc.IN_ID)
from "DRUG" drg, "STOCK" st, "INCOME" inc, "DRUG_COMP" dc
where dc.DC_ID = drg.DC_ID and drg.DRG_ID = st.DRG_ID and st.IN_ID = inc.IN_ID
group by dc.DC_ID
order by dc.DC_ID

--how much drug has been purchased from each drug supplier
select ds.DS_ID, COUNT(o.OUT_ID)
from "DRUG" drg, "STOCK" st, "OUTCOME" O, "DRUG_SUPP" ds, "SUPPLIERS" sp
where ds.DS_ID = sp.DS_ID and sp.DRG_ID = drg.DRG_ID and drg.DRG_ID = st.DRG_ID and st.OUT_ID = o.OUT_ID
group by ds.DS_ID
order by ds.DS_ID

--how much drug has been sold from each drug supplier
select ds.DS_ID, COUNT(inc.IN_ID)
from "DRUG" drg, "STOCK" st, "INCOME" inc, "DRUG_SUPP" ds, "SUPPLIERS" sp
where ds.DS_ID = sp.DS_ID and sp.DRG_ID = drg.DRG_ID and drg.DRG_ID = st.DRG_ID and st.IN_ID = inc.IN_ID
group by ds.DS_ID
order by ds.DS_ID

--how much drug has been purchased from each drug company between a date interval
select dc.DC_ID, COUNT(o.OUT_ID)
from "DRUG" drg, "STOCK" st, "OUTCOME" o, "DRUG_COMP" dc
where dc.DC_ID = drg.DC_ID and drg.DRG_ID = st.DRG_ID and st.OUT_ID = o.OUT_ID and (o.OUT_DATE between '01-01-2019' and '01-01-2020')
group by dc.DC_ID
order by dc.DC_ID

--how much drug has been sold  from each drug company between a date interval
select dc.DC_ID, COUNT(inc.IN_ID)
from "DRUG" drg, "STOCK" st, "INCOME" inc, "DRUG_COMP" dc
where dc.DC_ID = drg.DC_ID and drg.DRG_ID = st.DRG_ID and st.IN_ID = inc.IN_ID and (inc.IN_DATE between '01-01-2019' and '01-01-2020')
group by dc.DC_ID
order by dc.DC_ID

--how much drug has been purchased from each drug supplier between a date interval
select ds.DS_ID, COUNT(o.OUT_ID)
from "DRUG" drg, "STOCK" st, "OUTCOME" O, "DRUG_SUPP" ds, "SUPPLIERS" sp
where ds.DS_ID = sp.DS_ID and sp.DRG_ID = drg.DRG_ID and drg.DRG_ID = st.DRG_ID and st.OUT_ID = o.OUT_ID and (inc.IN_DATE between '01-01-2019' and '01-01-2020')
group by ds.DS_ID
order by ds.DS_ID

--how much drug has been sold from each drug supplier between a date interval
select ds.DS_ID, COUNT(inc.IN_ID)
from "DRUG" drg, "STOCK" st, "INCOME" inc, "DRUG_SUPP" ds, "SUPPLIERS" sp
where ds.DS_ID = sp.DS_ID and sp.DRG_ID = drg.DRG_ID and drg.DRG_ID = st.DRG_ID and st.IN_ID = inc.IN_ID and (inc.IN_DATE between '01-01-2019' and '01-01-2020')
group by ds.DS_ID
order by ds.DS_ID                                                  
