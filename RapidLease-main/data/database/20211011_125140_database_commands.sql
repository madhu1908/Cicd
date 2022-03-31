ALTER TABLE "rapidlease$lease" ADD "renewal_status" VARCHAR_IGNORECASE(22) NULL;
ALTER TABLE "rapidlease$lease" ADD "comment_renewal" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('ff20845b-85be-4c6c-9701-6b19aa8c559c', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'renewal_status', 
'renewal_status', 
40, 
22, 
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
 VALUES ('a0f9d881-f2d1-4f3b-800f-2fe666e9cf59', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'comment_renewal', 
'comment_renewal', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211011 12:51:40';
