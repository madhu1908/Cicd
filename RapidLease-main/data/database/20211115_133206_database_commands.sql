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
"lastsyncdate" = '20211115 13:32:06';
