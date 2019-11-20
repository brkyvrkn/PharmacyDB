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

INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (1,1,1);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (2,3,1);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (3,2,1);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (4,5,1);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (5,1,2);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (6,3,2);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (7,2,3);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (8,5,3);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (9,4,4);
INSERT INTO SUPPLIERS (supp_id, supp_ds_id, supp_drg_id) VALUES (10,1,4);