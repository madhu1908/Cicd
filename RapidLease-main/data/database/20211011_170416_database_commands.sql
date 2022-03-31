ALTER TABLE "rapidlease$tenant" ADD "notice_given_date" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('5be61787-84b9-4f07-a220-ec50ee54bf0a', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'notice_given_date', 
'notice_given_date', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211011 17:04:16';
