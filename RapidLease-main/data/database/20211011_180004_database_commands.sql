ALTER TABLE "rapidlease$lease" ADD "comment_enum" VARCHAR_IGNORECASE(9) NULL;
ALTER TABLE "rapidlease$lease" ADD "moveout_status" VARCHAR_IGNORECASE(15) NULL;
ALTER TABLE "rapidlease$lease" ADD "move_out" BOOLEAN NULL;
UPDATE "rapidlease$lease"
 SET "move_out" = false;
ALTER TABLE "rapidlease$lease" ADD "moveout_comment" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('1b6694fa-b46b-43bc-a656-6765d8f6ba92', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'comment_enum', 
'comment_enum', 
40, 
9, 
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
 VALUES ('53262d55-8c1d-432b-a666-256c702a22a4', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'MoveOut_status', 
'moveout_status', 
40, 
15, 
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
 VALUES ('f96c890c-a226-489b-9a70-3348d9a606df', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Move_out', 
'move_out', 
10, 
0, 
'false', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('44682608-4854-4cd5-90f5-76198d9e90dd', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'moveout_comment', 
'moveout_comment', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211011 18:00:04';
