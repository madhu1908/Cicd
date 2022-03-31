ALTER TABLE "financials$glaccount" ADD "updated" BOOLEAN NULL;
UPDATE "financials$glaccount"
 SET "updated" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3f219ede-77a3-4400-b299-c57159003522', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'Updated', 
'updated', 
10, 
0, 
'false', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211117 15:00:32';
