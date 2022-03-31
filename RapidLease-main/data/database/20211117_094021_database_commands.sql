ALTER TABLE "financials$bankaccount" ADD "main" BOOLEAN NULL;
UPDATE "financials$bankaccount"
 SET "main" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('7c0280fe-0a5f-482a-ab75-466544311920', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Main', 
'main', 
10, 
0, 
'false', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211117 09:40:21';
