ALTER TABLE "rapidlease$unit_amenities" DROP CONSTRAINT "uniq_rapidlease$unit_amenities_rapidlease$amenitiesid";
DROP INDEX "idx_rapidlease$unit_amenities_rapidlease$lease_rapidlease$amenities";
ALTER TABLE "rapidlease$unit_amenities" RENAME TO "568723e72f0e485d913f6d5f4e61004e";
ALTER TABLE "rapidlease$lease_unit" DROP CONSTRAINT "uniq_rapidlease$lease_unit_rapidlease$unitid";
ALTER TABLE "rapidlease$comment_unit" DROP CONSTRAINT "uniq_rapidlease$comment_unit_rapidlease$commentid";
ALTER TABLE "rapidlease$comment_unit" DROP CONSTRAINT "uniq_rapidlease$comment_unit_rapidlease$unitid";
DROP INDEX "idx_rapidlease$comment_unit_rapidlease$unit_rapidlease$comment";
ALTER TABLE "rapidlease$comment_unit" RENAME TO "67e6f15712d6482eb4ed871b3573c531";
ALTER TABLE "rapidlease$task_property" DROP CONSTRAINT "uniq_rapidlease$task_property_rapidlease$propertyid";
ALTER TABLE "rapidlease$entity" RENAME TO "rapidlease$meterreading";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '2e04ab30-d2aa-4493-a768-4d471795e54c';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$unit_amenities_rapidlease$amenitiesid' AND "column_id" = '4313ef6e-07be-30e9-9b6a-7a0eee2d4224';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '1ae41165-e98d-41a4-a817-96e5e8b16546', 
"attribute_name" = 'Signed', 
"column_name" = 'signed', 
"type" = 10, 
"length" = 0, 
"default_value" = 'false', 
"is_auto_number" = false
 WHERE "id" = '45fd78c7-4daf-48f5-9740-bad0baea6609';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$lease_unit_rapidlease$unitid' AND "column_id" = '2929eeac-a4a5-342a-9393-0c7e1bff127e';
ALTER TABLE "rapidlease$workorder" ADD "entry_notes" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e1aac6b6-ec5c-47cb-aced-ecbb8430c7a8', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'Entry_notes', 
'entry_notes', 
30, 
200, 
'', 
false);
ALTER TABLE "rapidlease$meterreading" ADD "chargescreated" BOOLEAN NULL;
UPDATE "rapidlease$meterreading"
 SET "chargescreated" = false;
ALTER TABLE "rapidlease$meterreading" ADD "usage" BIGINT NULL;
UPDATE "rapidlease$meterreading"
 SET "usage" = 0;
ALTER TABLE "rapidlease$meterreading" ADD "metertype" VARCHAR_IGNORECASE(8) NULL;
ALTER TABLE "rapidlease$meterreading" ADD "readingdate" TIMESTAMP NULL;
ALTER TABLE "rapidlease$meterreading" ADD "value" BIGINT NULL;
UPDATE "rapidlease$meterreading"
 SET "value" = 0;
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'RapidLease.MeterReading', 
"table_name" = 'rapidlease$meterreading', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '372476db-e202-46bf-9b4f-f04ed799f5bd';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e2521834-483a-4ca4-b6a1-77262a64276d', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'ChargesCreated', 
'chargescreated', 
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
 VALUES ('b5386873-aff4-436f-a4eb-3be49dbd383a', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'Usage', 
'usage', 
4, 
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
 VALUES ('a3e4251c-fd90-4728-be29-87a481a88c11', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'MeterType', 
'metertype', 
40, 
8, 
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
 VALUES ('c15116a9-6fc8-4380-9be9-b1cf9d3204da', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'ReadingDate', 
'readingdate', 
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
 VALUES ('15ed0f88-0255-4ce4-aa9b-f9a61098217c', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'Value', 
'value', 
4, 
0, 
'0', 
false);
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'aba261e7-d81c-4203-a38b-eeeccf7d7b41';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$comment_unit_rapidlease$commentid' AND "column_id" = '56f30547-c711-341d-b824-a87f99b80684';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$comment_unit_rapidlease$unitid' AND "column_id" = 'b8e4d95c-6298-3d1e-8711-91922c6d352b';
ALTER TABLE "rapidlease$files" ALTER COLUMN "categorey" RENAME TO "category";
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '8a00b945-01a1-4583-9b91-391e475587cc', 
"attribute_name" = 'Category', 
"column_name" = 'category', 
"type" = 40, 
"length" = 14, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '1223fed0-7696-4930-bcdc-d6eca115ab47';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$task_property_rapidlease$propertyid' AND "column_id" = 'c5b4052c-92c5-3e33-8bdd-5e6b8d1b0bd1';
CREATE TABLE "rapidcommunication$communication" (
	"id" BIGINT NOT NULL,
	"zip" INT NULL,
	"publicsite" BOOLEAN NULL,
	"street3" VARCHAR_IGNORECASE(200) NULL,
	"opt3" BOOLEAN NULL,
	"branding" VARCHAR_IGNORECASE(4) NULL,
	"publicsiteurl" VARCHAR_IGNORECASE(200) NULL,
	"isavailablelogo" BOOLEAN NULL,
	"city" VARCHAR_IGNORECASE(200) NULL,
	"emailaddress" VARCHAR_IGNORECASE(200) NULL,
	"linktext" VARCHAR_IGNORECASE(200) NULL,
	"signinoptions" VARCHAR_IGNORECASE(102) NULL,
	"streetaddress" VARCHAR_IGNORECASE(200) NULL,
	"linkurl" VARCHAR_IGNORECASE(200) NULL,
	"phone" INT NULL,
	"state" VARCHAR_IGNORECASE(200) NULL,
	"country" VARCHAR_IGNORECASE(44) NULL,
	"contactinfo" BOOLEAN NULL,
	"opt2" BOOLEAN NULL,
	"opt1" BOOLEAN NULL,
	"street2" VARCHAR_IGNORECASE(200) NULL,
	"fax" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'RapidCommunication.Communication', 
'rapidcommunication$communication', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('98fb4cac-79af-4e74-b2af-093a9882f69e', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Zip', 
'zip', 
3, 
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
 VALUES ('936ea57b-1a26-482a-97dd-2ff142a7f348', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'publicsite', 
'publicsite', 
10, 
0, 
'true', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('6fc0ab8e-f862-47ed-a15b-a67b5b56d036', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'street3', 
'street3', 
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
 VALUES ('01d7e289-784e-49ce-bd68-92ee9d351621', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'OPT3', 
'opt3', 
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
 VALUES ('c422f23d-fb18-4515-be4e-813c971a8726', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'branding', 
'branding', 
40, 
4, 
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
 VALUES ('5c04980e-bdd2-497c-b195-eaa58b684d37', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'publicSiteURL', 
'publicsiteurl', 
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
 VALUES ('84e232c4-2799-47e0-897c-be7ea9412de9', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'isAvailableLogo', 
'isavailablelogo', 
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
 VALUES ('c1f6467d-4163-41d9-91cf-0eb8573028a3', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'City', 
'city', 
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
 VALUES ('63a4fffe-57be-4028-803b-41a4285127e4', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'EmailAddress', 
'emailaddress', 
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
 VALUES ('0de7c663-f68d-4ec7-99a6-8a24ec72b86b', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'LinkText', 
'linktext', 
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
 VALUES ('950c56e0-37ab-4934-8894-7e05dbd3c38f', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'SignInOptions', 
'signinoptions', 
40, 
102, 
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
 VALUES ('9f41610e-1052-4ebc-8d5e-218254dd3659', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'StreetAddress', 
'streetaddress', 
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
 VALUES ('36b7525d-52f4-453e-8de1-760d0dc9c530', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'LinkURL', 
'linkurl', 
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
 VALUES ('eb30d89d-e899-41ec-95ca-9ff51d220c3b', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Phone', 
'phone', 
3, 
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
 VALUES ('ef48c73a-5c6f-4f3c-aead-20900cf9bb68', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'State', 
'state', 
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
 VALUES ('a77ff3e2-bbc6-4718-a0e8-e5a148080a0f', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Country', 
'country', 
40, 
44, 
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
 VALUES ('c21ec151-82f4-4519-8aac-46b2c5b29383', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'ContactInfo', 
'contactinfo', 
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
 VALUES ('f85e7057-2b80-4cac-9bf9-b8b927793acf', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'OPT2', 
'opt2', 
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
 VALUES ('8d767a1a-fcd4-4a91-a05f-15d73f0f5d18', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'OPT1', 
'opt1', 
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
 VALUES ('a257f533-8dea-4b10-8eb9-d15d7e109f3c', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'street2', 
'street2', 
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
 VALUES ('0f131d5a-e9a7-401b-a467-cba2dc4ce9c5', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Fax', 
'fax', 
3, 
0, 
'', 
false);
CREATE TABLE "rapidcommunication$communication_image" (
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	"rapidlease$imageid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communicationid","rapidlease$imageid"),
	CONSTRAINT "uniq_rapidcommunication$communication_image_rapidlease$imageid" UNIQUE ("rapidlease$imageid"),
	CONSTRAINT "uniq_rapidcommunication$communication_image_rapidcommunication$communicationid" UNIQUE ("rapidcommunication$communicationid"));
CREATE INDEX "idx_rapidcommunication$communication_image_rapidlease$image_rapidcommunication$communication" ON "rapidcommunication$communication_image" ("rapidlease$imageid" ASC,"rapidcommunication$communicationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('ff6be041-480d-43e7-a9ad-0132b77a5e6a', 
'RapidCommunication.Communication_Image', 
'rapidcommunication$communication_image', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'b51f111a-8290-4091-8f64-c50afcac5471', 
'rapidcommunication$communicationid', 
'rapidlease$imageid', 
'idx_rapidcommunication$communication_image_rapidlease$image_rapidcommunication$communication');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communication_image_rapidlease$imageid', 
'ff6be041-480d-43e7-a9ad-0132b77a5e6a', 
'4260ddca-470c-3cdc-b888-c3f2e231d415');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communication_image_rapidcommunication$communicationid', 
'ff6be041-480d-43e7-a9ad-0132b77a5e6a', 
'c178f38f-2f21-3a20-b2ce-dda82886829c');
CREATE TABLE "rapidcommunication$communication_profile" (
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	"rapidlease$profileid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communicationid","rapidlease$profileid"),
	CONSTRAINT "uniq_rapidcommunication$communication_profile_rapidcommunication$communicationid" UNIQUE ("rapidcommunication$communicationid"));
CREATE INDEX "idx_rapidcommunication$communication_profile_rapidlease$profile_rapidcommunication$communication" ON "rapidcommunication$communication_profile" ("rapidlease$profileid" ASC,"rapidcommunication$communicationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('ad96112f-92fb-464f-a976-8649c0889ec7', 
'RapidCommunication.Communication_Profile', 
'rapidcommunication$communication_profile', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'abd5f430-d399-44c8-9f64-4d87391a81c5', 
'rapidcommunication$communicationid', 
'rapidlease$profileid', 
'idx_rapidcommunication$communication_profile_rapidlease$profile_rapidcommunication$communication');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communication_profile_rapidcommunication$communicationid', 
'ad96112f-92fb-464f-a976-8649c0889ec7', 
'3997bec0-2b75-3d7c-b93b-fc623063166a');
CREATE TABLE "rapidlease$notes_lease" (
	"rapidlease$notesid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$notesid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$notes_lease_rapidlease$notesid" UNIQUE ("rapidlease$notesid"));
CREATE INDEX "idx_rapidlease$notes_lease_rapidlease$lease_rapidlease$notes" ON "rapidlease$notes_lease" ("rapidlease$leaseid" ASC,"rapidlease$notesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e1847415-55a1-400c-bbc1-75e930f79858', 
'RapidLease.Notes_Lease', 
'rapidlease$notes_lease', 
'af28e914-60de-4916-bc79-119cd1be1226', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$notesid', 
'rapidlease$leaseid', 
'idx_rapidlease$notes_lease_rapidlease$lease_rapidlease$notes');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$notes_lease_rapidlease$notesid', 
'e1847415-55a1-400c-bbc1-75e930f79858', 
'1d9c7c11-3e84-3b05-9cae-04337ed8d44c');
CREATE TABLE "rapidlease$meterreadingperunit" (
	"id" BIGINT NOT NULL,
	"usage" INT NULL,
	"value" INT NULL,
	"priorvalue" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('20de045b-e430-4118-8886-91e984f4994f', 
'RapidLease.MeterReadingPerUnit', 
'rapidlease$meterreadingperunit', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c6b87c5a-9b3d-4b3f-aa19-1e312b79d03c', 
'20de045b-e430-4118-8886-91e984f4994f', 
'Usage', 
'usage', 
3, 
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
 VALUES ('75362b8d-abd7-4e69-b1cb-70734214a791', 
'20de045b-e430-4118-8886-91e984f4994f', 
'Value', 
'value', 
3, 
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
 VALUES ('eccec855-eb83-47ed-89a7-1b8f9aa15506', 
'20de045b-e430-4118-8886-91e984f4994f', 
'PriorValue', 
'priorvalue', 
3, 
0, 
'0', 
false);
CREATE TABLE "rapidlease$meterreadingperunit_meterreading" (
	"rapidlease$meterreadingperunitid" BIGINT NOT NULL,
	"rapidlease$meterreadingid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$meterreadingperunitid","rapidlease$meterreadingid"),
	CONSTRAINT "uniq_rapidlease$meterreadingperunit_meterreading_rapidlease$meterreadingperunitid" UNIQUE ("rapidlease$meterreadingperunitid"));
CREATE INDEX "idx_rapidlease$meterreadingperunit_meterreading_rapidlease$meterreading_rapidlease$meterreadingperunit" ON "rapidlease$meterreadingperunit_meterreading" ("rapidlease$meterreadingid" ASC,"rapidlease$meterreadingperunitid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('df83d3b5-eb64-44c0-8c05-f2a9d849320b', 
'RapidLease.MeterReadingPerUnit_MeterReading', 
'rapidlease$meterreadingperunit_meterreading', 
'20de045b-e430-4118-8886-91e984f4994f', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'rapidlease$meterreadingperunitid', 
'rapidlease$meterreadingid', 
'idx_rapidlease$meterreadingperunit_meterreading_rapidlease$meterreading_rapidlease$meterreadingperunit');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$meterreadingperunit_meterreading_rapidlease$meterreadingperunitid', 
'df83d3b5-eb64-44c0-8c05-f2a9d849320b', 
'552b700a-ac19-3daf-b297-11aa54dde01f');
CREATE TABLE "rapidlease$meterreadingperunit_unit" (
	"rapidlease$meterreadingperunitid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$meterreadingperunitid","rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$meterreadingperunit_unit_rapidlease$meterreadingperunitid" UNIQUE ("rapidlease$meterreadingperunitid"));
CREATE INDEX "idx_rapidlease$meterreadingperunit_unit_rapidlease$unit_rapidlease$meterreadingperunit" ON "rapidlease$meterreadingperunit_unit" ("rapidlease$unitid" ASC,"rapidlease$meterreadingperunitid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e4d36846-cf33-4c7a-bc26-81c70f5a4f18', 
'RapidLease.MeterReadingPerUnit_Unit', 
'rapidlease$meterreadingperunit_unit', 
'20de045b-e430-4118-8886-91e984f4994f', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$meterreadingperunitid', 
'rapidlease$unitid', 
'idx_rapidlease$meterreadingperunit_unit_rapidlease$unit_rapidlease$meterreadingperunit');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$meterreadingperunit_unit_rapidlease$meterreadingperunitid', 
'e4d36846-cf33-4c7a-bc26-81c70f5a4f18', 
'97e1cd9c-06d9-33d2-bef2-bc00e4c7c633');
CREATE TABLE "rapidlease$workorder_tenant" (
	"rapidlease$workorderid" BIGINT NOT NULL,
	"rapidlease$tenantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$workorderid","rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$workorder_tenant_rapidlease$workorderid" UNIQUE ("rapidlease$workorderid"));
CREATE INDEX "idx_rapidlease$workorder_tenant_rapidlease$tenant_rapidlease$workorder" ON "rapidlease$workorder_tenant" ("rapidlease$tenantid" ASC,"rapidlease$workorderid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('1b1b7098-1e45-4c6a-9be5-de8494c35270', 
'RapidLease.WorkOrder_Tenant', 
'rapidlease$workorder_tenant', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'rapidlease$workorderid', 
'rapidlease$tenantid', 
'idx_rapidlease$workorder_tenant_rapidlease$tenant_rapidlease$workorder');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$workorder_tenant_rapidlease$workorderid', 
'1b1b7098-1e45-4c6a-9be5-de8494c35270', 
'f3d886f9-7d25-34a8-b779-a497ece207d7');
CREATE TABLE "rapidlease$meterreading_property" (
	"rapidlease$meterreadingid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$meterreadingid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$meterreading_property_rapidlease$meterreadingid" UNIQUE ("rapidlease$meterreadingid"));
CREATE INDEX "idx_rapidlease$meterreading_property_rapidlease$property_rapidlease$meterreading" ON "rapidlease$meterreading_property" ("rapidlease$propertyid" ASC,"rapidlease$meterreadingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('56fde86b-e3e8-4c8f-a2df-bd4551e88ada', 
'RapidLease.MeterReading_Property', 
'rapidlease$meterreading_property', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$meterreadingid', 
'rapidlease$propertyid', 
'idx_rapidlease$meterreading_property_rapidlease$property_rapidlease$meterreading');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$meterreading_property_rapidlease$meterreadingid', 
'56fde86b-e3e8-4c8f-a2df-bd4551e88ada', 
'22dced91-811e-3e32-82c5-5d3747d6aada');
CREATE TABLE "rapidlease$comment_lease" (
	"rapidlease$commentid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$commentid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$comment_lease_rapidlease$leaseid" UNIQUE ("rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$comment_lease_rapidlease$commentid" UNIQUE ("rapidlease$commentid"));
CREATE INDEX "idx_rapidlease$comment_lease_rapidlease$lease_rapidlease$comment" ON "rapidlease$comment_lease" ("rapidlease$leaseid" ASC,"rapidlease$commentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('149be273-4ac0-4f1b-b9f1-0705b3ea6603', 
'RapidLease.Comment_Lease', 
'rapidlease$comment_lease', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$commentid', 
'rapidlease$leaseid', 
'idx_rapidlease$comment_lease_rapidlease$lease_rapidlease$comment');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$comment_lease_rapidlease$leaseid', 
'149be273-4ac0-4f1b-b9f1-0705b3ea6603', 
'c95ff553-ad28-37ac-8248-b12d75b8c633');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$comment_lease_rapidlease$commentid', 
'149be273-4ac0-4f1b-b9f1-0705b3ea6603', 
'e4a57246-fa3d-3808-a962-5a27c7169de4');
CREATE TABLE "rapidlease$amenities_unit" (
	"rapidlease$amenitiesid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$amenitiesid","rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$amenities_unit_rapidlease$amenitiesid" UNIQUE ("rapidlease$amenitiesid"));
CREATE INDEX "idx_rapidlease$amenities_unit_rapidlease$unit_rapidlease$amenities" ON "rapidlease$amenities_unit" ("rapidlease$unitid" ASC,"rapidlease$amenitiesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b38991aa-39de-40d6-bb14-dbeb1441f8c3', 
'RapidLease.Amenities_Unit', 
'rapidlease$amenities_unit', 
'1076ee08-cf8a-4e20-b7c7-8692ea7ae21b', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$amenitiesid', 
'rapidlease$unitid', 
'idx_rapidlease$amenities_unit_rapidlease$unit_rapidlease$amenities');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$amenities_unit_rapidlease$amenitiesid', 
'b38991aa-39de-40d6-bb14-dbeb1441f8c3', 
'f9bd8828-7457-320c-ad03-2ebb881aa5d9');
CREATE TABLE "rapidcommunication$cfiles" (
	"id" BIGINT NOT NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	"flag" BOOLEAN NULL,
	"title" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('7c932aab-4703-459c-b23b-88d808af1657', 
'RapidCommunication.CFiles', 
'rapidcommunication$cfiles', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d14b75c9-b3a5-4201-9e9a-b9f57c4c35ca', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'Description', 
'description', 
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
 VALUES ('5704b3e5-2353-40d6-bcdb-e190ad80b749', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'flag', 
'flag', 
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
 VALUES ('ee51d8e6-3220-4a9c-890a-e2f0c1777307', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'Title', 
'title', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$cfiles_communication" (
	"rapidcommunication$cfilesid" BIGINT NOT NULL,
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$cfilesid","rapidcommunication$communicationid"),
	CONSTRAINT "uniq_rapidcommunication$cfiles_communication_rapidcommunication$cfilesid" UNIQUE ("rapidcommunication$cfilesid"));
CREATE INDEX "idx_rapidcommunication$cfiles_communication_rapidcommunication$communication_rapidcommunication$cfiles" ON "rapidcommunication$cfiles_communication" ("rapidcommunication$communicationid" ASC,"rapidcommunication$cfilesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8799328f-176a-4cdc-a185-a922613bf536', 
'RapidCommunication.CFiles_Communication', 
'rapidcommunication$cfiles_communication', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'rapidcommunication$cfilesid', 
'rapidcommunication$communicationid', 
'idx_rapidcommunication$cfiles_communication_rapidcommunication$communication_rapidcommunication$cfiles');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$cfiles_communication_rapidcommunication$cfilesid', 
'8799328f-176a-4cdc-a185-a922613bf536', 
'165c141d-c337-35c8-8ef0-3d8b89ffef7a');
CREATE TABLE "rapidlease$listing" (
	"id" BIGINT NOT NULL,
	"deposit" INT NULL,
	"islisted" BOOLEAN NULL,
	"availabledate" TIMESTAMP NULL,
	"rent" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'RapidLease.Listing', 
'rapidlease$listing', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('31782a3c-6b0a-4377-85f5-af2b5f21f239', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'Deposit', 
'deposit', 
3, 
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
 VALUES ('bd15a95e-345a-4a72-8114-200058fd8219', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'IsListed', 
'islisted', 
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
 VALUES ('e6c66531-f64f-4b52-960e-c511a0ebc624', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'AvailableDate', 
'availabledate', 
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
 VALUES ('076c7180-0981-449f-ba56-e81866c0e1c9', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'Rent', 
'rent', 
3, 
0, 
'0', 
false);
CREATE TABLE "rapidlease$listing_unit" (
	"rapidlease$listingid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$listingid","rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$listing_unit_rapidlease$unitid" UNIQUE ("rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$listing_unit_rapidlease$listingid" UNIQUE ("rapidlease$listingid"));
CREATE INDEX "idx_rapidlease$listing_unit_rapidlease$unit_rapidlease$listing" ON "rapidlease$listing_unit" ("rapidlease$unitid" ASC,"rapidlease$listingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e3ce814d-0626-4a90-9982-67e7ba75ac13', 
'RapidLease.Listing_Unit', 
'rapidlease$listing_unit', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$listingid', 
'rapidlease$unitid', 
'idx_rapidlease$listing_unit_rapidlease$unit_rapidlease$listing');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$listing_unit_rapidlease$unitid', 
'e3ce814d-0626-4a90-9982-67e7ba75ac13', 
'e33d6c23-39fa-30b7-9bab-91c7e958d6b9');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$listing_unit_rapidlease$listingid', 
'e3ce814d-0626-4a90-9982-67e7ba75ac13', 
'a088d3d5-73f4-35f4-bfdc-9f5ad052d394');
CREATE TABLE "rapidlease$offer" (
	"id" BIGINT NOT NULL,
	"leasetype" VARCHAR_IGNORECASE(24) NULL,
	"enddate" TIMESTAMP NULL,
	"rent" DECIMAL(28, 8) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'RapidLease.Offer', 
'rapidlease$offer', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('97f5a48a-00c6-4345-bc65-8c34cf14d6aa', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'LeaseType', 
'leasetype', 
40, 
24, 
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
 VALUES ('cfc027bc-6851-4afa-b44c-708916ac226f', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'EndDate', 
'enddate', 
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
 VALUES ('ea2f188e-29ad-4afb-8e6d-e27c267bd2e5', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'Rent', 
'rent', 
5, 
0, 
'0', 
false);
CREATE TABLE "rapidlease$offer_lease" (
	"rapidlease$offerid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$offerid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$offer_lease_rapidlease$offerid" UNIQUE ("rapidlease$offerid"));
CREATE INDEX "idx_rapidlease$offer_lease_rapidlease$lease_rapidlease$offer" ON "rapidlease$offer_lease" ("rapidlease$leaseid" ASC,"rapidlease$offerid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('ebc9403e-9bc2-421e-a7f8-ecc59cae3d50', 
'RapidLease.Offer_Lease', 
'rapidlease$offer_lease', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$offerid', 
'rapidlease$leaseid', 
'idx_rapidlease$offer_lease_rapidlease$lease_rapidlease$offer');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$offer_lease_rapidlease$offerid', 
'ebc9403e-9bc2-421e-a7f8-ecc59cae3d50', 
'e457088c-b23f-3ac7-a54f-772a7589ee21');
DROP TABLE "568723e72f0e485d913f6d5f4e61004e";
DROP TABLE "67e6f15712d6482eb4ed871b3573c531";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211004 16:02:16';
