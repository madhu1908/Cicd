ALTER TABLE "rapidlease$lease" ADD "proposed_security_deposit" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$lease"
 SET "proposed_security_deposit" = 0;
ALTER TABLE "rapidlease$lease" ADD "additional_security_deposit" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$lease"
 SET "additional_security_deposit" = 0;
ALTER TABLE "rapidlease$lease" ADD "memo1" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$lease" ADD "month1" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$lease"
 SET "month1" = 0;
ALTER TABLE "rapidlease$lease" ADD "month2" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$lease"
 SET "month2" = 0;
ALTER TABLE "rapidlease$lease" ADD "security_reason" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$lease" ADD "total_deposit_amount" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$lease"
 SET "total_deposit_amount" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b808e652-1d85-4dea-a7e5-e93cecccdfad', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Additional_Security_Deposit', 
'additional_security_deposit', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('defeef8c-1f7d-432d-800c-dc4c644311cc', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Proposed_security_Deposit', 
'proposed_security_deposit', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('8d036181-7c49-4e10-9c34-9870d6ff3a36', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Security_Reason', 
'security_reason', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('8f3f06d8-8602-4ac6-9f73-448eb5a9bc00', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'month2', 
'month2', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b4e7a012-f330-4297-9d7d-5b7852c1a975', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Month1', 
'month1', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('171444ec-97cc-43f3-80d0-eed28425bfc7', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Total_deposit_amount', 
'total_deposit_amount', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3c13b22b-39c7-4843-a5a5-19db068339d0', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Memo1', 
'memo1', 
30, 
200, 
'', 
false);
ALTER TABLE "rapidlease$monthly_charges" ADD "perday" DECIMAL(28, 8) NULL;
UPDATE "rapidlease$monthly_charges"
 SET "perday" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('1beaed47-8189-407a-928b-51e2952da8f4', 
'34afd6f7-b7fb-43f4-a1fb-b44fc00e449d', 
'perDay', 
'perday', 
5, 
0, 
'0', 
false);
ALTER TABLE "rapidlease$invoice" ADD "pay_date" TIMESTAMP NULL;
ALTER TABLE "rapidlease$invoice" ADD "pay_status" VARCHAR_IGNORECASE(7) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('2f79de44-712a-41de-ac84-eb9c9c4231f1', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'Pay_Date', 
'pay_date', 
20, 
0, 
'', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('6c73394f-ed30-4b8d-9b1e-75cf6310a77e', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'Pay_Status', 
'pay_status', 
40, 
7, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211116 13:28:36';
