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
ALTER TABLE "financials$account_balance" ADD "updated" BOOLEAN NULL;
UPDATE "financials$account_balance"
 SET "updated" = true;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0964798e-f0e8-4941-8b3b-57d27d347dc3', 
'6b904e64-7e68-4237-b555-ed52ad42aff9', 
'Updated', 
'updated', 
10, 
0, 
'true', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211116 10:03:03';
