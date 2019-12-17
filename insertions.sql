
-- 2 Pharmacies
INSERT INTO PHARMACY VALUES(1, 'Sifa', 'Unlu Sk. No.6', '2322547685');
INSERT INTO PHARMACY VALUES(2, 'Hayat', 'Mithatpasa Cd. No.279','2323553535');

-- 3 Inventories
-- Two of them is connected to the first pharmacy
-- and the last one is connected to the second pharmacy
INSERT INTO INVENTORY VALUES(1, 1);
INSERT INTO INVENTORY VALUES(2, 1);
INSERT INTO INVENTORY VALUES(3, 2);

-- 15 Incomes
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (1, TO_DATE('05-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (2, TO_DATE('30-MAY-2019', 'dd-mon-yyyy'), 2);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (3, TO_DATE('09-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (4, TO_DATE('12-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (5, TO_DATE('23-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (6, TO_DATE('10-APR-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (7, TO_DATE('23-APR-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (8, TO_DATE('19-MAY-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (9, TO_DATE('19-MAY-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (10, TO_DATE('29-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (11, TO_DATE('12-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (12, TO_DATE('06-SEP-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (13, TO_DATE('02-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (14, TO_DATE('06-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO INCOME(in_id, in_date, ph_id) VALUES (15, TO_DATE('13-DEC-2019', 'dd-mon-yyyy'), 1);

-- 50 Outcomes
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (1, TO_DATE('13-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (2, TO_DATE('10-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (3, TO_DATE('01-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (4, TO_DATE('05-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (5, TO_DATE('30-DEC-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (6, TO_DATE('03-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (7, TO_DATE('11-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (8, TO_DATE('24-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (9, TO_DATE('30-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (10, TO_DATE('30-NOV-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (11, TO_DATE('03-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (12, TO_DATE('08-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (13, TO_DATE('12-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (14, TO_DATE('12-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (15, TO_DATE('13-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (16, TO_DATE('18-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (17, TO_DATE('21-OCT-2019', 'dd-mon-yyyy'), 1);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (18, TO_DATE('24-OCT-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (19, TO_DATE('25-OCT-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (20, TO_DATE('08-SEP-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (21, TO_DATE('15-SEP-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (22, TO_DATE('20-SEP-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (23, TO_DATE('22-SEP-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (24, TO_DATE('27-SEP-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (25, TO_DATE('03-JUN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (26, TO_DATE('18-JUN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (27, TO_DATE('20-JUN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (28, TO_DATE('20-JUN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (29, TO_DATE('25-JUN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (30, TO_DATE('10-MAY-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (31, TO_DATE('13-MAY-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (32, TO_DATE('15-MAY-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (33, TO_DATE('20-MAY-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (34, TO_DATE('12-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (35, TO_DATE('13-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (36, TO_DATE('19-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (37, TO_DATE('20-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (38, TO_DATE('23-APR-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (39, TO_DATE('05-FEB-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (40, TO_DATE('09-FEB-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (41, TO_DATE('16-FEB-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (42, TO_DATE('24-FEB-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (43, TO_DATE('16-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (44, TO_DATE('16-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (45, TO_DATE('20-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (46, TO_DATE('22-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (47, TO_DATE('23-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (48, TO_DATE('25-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (49, TO_DATE('26-JAN-2019', 'dd-mon-yyyy'), 2);
INSERT INTO OUTCOME(OUT_ID, OUT_DATE, PH_ID) VALUES (50, TO_DATE('29-JAN-2019', 'dd-mon-yyyy'), 2);

-- EMPLOYEE
-- 6 employees three of them connected to first
-- ID, NAME, PHONE, SAL, PH_ID
INSERT INTO EMPLOYEE VALUES(1, 'SAID ALIR', '+905505500', 3000, 1);
INSERT INTO EMPLOYEE VALUES(1, 'MERT CALIS', '+905500055', 3000, 1);
INSERT INTO EMPLOYEE VALUES(1, 'BERKAY VURKAN', '+905502500', 5000, 1);
INSERT INTO EMPLOYEE VALUES(1, 'DOGUKAN GOK', '+905505530', 3000, 2);
INSERT INTO EMPLOYEE VALUES(1, 'ZUHAL ERTEN', '+905505515', 2000, 2);
INSERT INTO EMPLOYEE VALUES(1, 'NURI ZIYA GUN', '+905305500', 3500, 2);

INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (1, 'Pfizer', 'Pfizer Türkiye, Ortaköy 34347 İstanbul - Türkiye');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (2, 'Bayer', 'UNKNOWN');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (3, 'Roche', 'Foundation Medicine, Inc. 150 Second Street Cambridge MA 02141');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (4, 'Abbvie', 'USA');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (5, 'JOHNSON&JOHNSON', 'New Brunswick, New Jersey, USA');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (6, 'Sanofi', 'Paris/France');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (7, 'MERCK', 'NEW JERSEY/USA');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (8, 'NOVARTIS', 'BASEL/SWITZERLAND');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (9, 'GILEAD', 'CALIFORNIA/USA');
INSERT INTO DRUG_COMP (dc_id, dc_name, dc_address) VALUES (10, 'AMGEN', 'CALIFORNIA/USA');

INSERT INTO DRUG_SUPP (ds_id, ds_name, ds_address) VALUES (1, 'SELCUK ECZA DEPOSU', 'Buca Organize Sanayi Bölgesi/Konak/İzmir');
INSERT INTO DRUG_SUPP (ds_id, ds_name, ds_address) VALUES (2, 'DILEK ECZA DEPOSU', 'Karşıyaka/İzmir');
INSERT INTO DRUG_SUPP (ds_id, ds_name, ds_address) VALUES (3, 'EDAK ECZA DEPOSU', 'Balçova/İzmir');
INSERT INTO DRUG_SUPP (ds_id, ds_name, ds_address) VALUES (4, 'FARUK ECZA DEPOSU', 'Tepecik/İzmir');
INSERT INTO DRUG_SUPP (ds_id, ds_name, ds_address) VALUES (5, 'GUNDAN ECZA DEPOSU', 'Gunaltay/Konak/İzmir');


INSERT INTO SUPPLIERS VALUES (1,1,1);
INSERT INTO SUPPLIERS VALUES (2,2,1);
INSERT INTO SUPPLIERS VALUES (3,3,1);
INSERT INTO SUPPLIERS VALUES (4,4,1);
INSERT INTO SUPPLIERS VALUES (5,5,2);
INSERT INTO SUPPLIERS VALUES (6,1,2);
INSERT INTO SUPPLIERS VALUES (7,2,3);
INSERT INTO SUPPLIERS VALUES (8,3,3);
INSERT INTO SUPPLIERS VALUES (9,4,4);
INSERT INTO SUPPLIERS VALUES (10,5,4);
INSERT INTO SUPPLIERS VALUES (11,1,5);
INSERT INTO SUPPLIERS VALUES (12,2,6);
INSERT INTO SUPPLIERS VALUES (13,3,7);
INSERT INTO SUPPLIERS VALUES (14,4,8);
INSERT INTO SUPPLIERS VALUES (15,5,9);
INSERT INTO SUPPLIERS VALUES (16,1,10);
INSERT INTO SUPPLIERS VALUES (17,2,11);
INSERT INTO SUPPLIERS VALUES (18,3,12);
INSERT INTO SUPPLIERS VALUES (19,4,13);
INSERT INTO SUPPLIERS VALUES (20,5,14);
INSERT INTO SUPPLIERS VALUES (21,1,15);
INSERT INTO SUPPLIERS VALUES (22,2,16);
INSERT INTO SUPPLIERS VALUES (23,3,17);
INSERT INTO SUPPLIERS VALUES (24,4,18);
INSERT INTO SUPPLIERS VALUES (25,5,19);
INSERT INTO SUPPLIERS VALUES (26,1,20);
INSERT INTO SUPPLIERS VALUES (27,2,21);
INSERT INTO SUPPLIERS VALUES (28,3,22);
INSERT INTO SUPPLIERS VALUES (29,4,23);
INSERT INTO SUPPLIERS VALUES (30,5,24);
INSERT INTO SUPPLIERS VALUES (31,1,25);
INSERT INTO SUPPLIERS VALUES (32,2,26);
INSERT INTO SUPPLIERS VALUES (33,3,27);
INSERT INTO SUPPLIERS VALUES (34,4,28);
INSERT INTO SUPPLIERS VALUES (35,5,29);
INSERT INTO SUPPLIERS VALUES (36,1,30);
INSERT INTO SUPPLIERS VALUES (37,2,30);
INSERT INTO SUPPLIERS VALUES (38,3,15);
INSERT INTO SUPPLIERS VALUES (39,4,22);
INSERT INTO SUPPLIERS VALUES (40,5,23);
INSERT INTO SUPPLIERS VALUES (41,1,41);
INSERT INTO SUPPLIERS VALUES (42,2,31);
INSERT INTO SUPPLIERS VALUES (43,3,21);
INSERT INTO SUPPLIERS VALUES (44,4,22);
INSERT INTO SUPPLIERS VALUES (45,5,32);
INSERT INTO SUPPLIERS VALUES (46,1,2);
INSERT INTO SUPPLIERS VALUES (47,2,3);
INSERT INTO SUPPLIERS VALUES (48,3,3);
INSERT INTO SUPPLIERS VALUES (49,4,4);
INSERT INTO SUPPLIERS VALUES (50,5,4);