
-- 2 Pharmacies
INSERT INTO PHARMACY VALUES(1, 'Sifa', 'Unlu Sk. No.6', '2322547685');
INSERT INTO PHARMACY VALUES(2, 'Hayat', 'Mithatpasa Cd. No.279','2323553535');

-- 3 Inventories
-- Two of them is connected to the first pharmacy
-- and the last one is connected to the second pharmacy
INSERT INTO INVENTORY VALUES(1, 1);
INSERT INTO INVENTORY VALUES(2, 1);
INSERT INTO INVENTORY VALUES(3, 2);

