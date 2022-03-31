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
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211116 12:16:34';
