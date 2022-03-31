ALTER TABLE "rapidlease$units" DROP CONSTRAINT "uniq_rapidlease$units_rapidlease$unitid";
DROP INDEX "idx_rapidlease$units_rapidlease$property_rapidlease$unit";
ALTER TABLE "rapidlease$units" RENAME TO "rapidlease$units_property";
ALTER TABLE "rapidlease$unit" ADD "islisted" BOOLEAN NULL;
UPDATE "rapidlease$unit"
 SET "islisted" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('16f58a56-a695-4ff4-b8e3-c43ee77eecb7', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'IsListed', 
'islisted', 
10, 
0, 
'false', 
false);
CREATE INDEX "idx_rapidlease$units_property_rapidlease$property_rapidlease$unit" ON "rapidlease$units_property" ("rapidlease$propertyid" ASC,"rapidlease$unitid" ASC);
ALTER TABLE "rapidlease$units_property" ADD CONSTRAINT "uniq_rapidlease$units_property_rapidlease$unitid" UNIQUE ("rapidlease$unitid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$units_rapidlease$unitid' AND "column_id" = '2f1786c5-c7cf-3a59-9838-c7cb8f97f7ad';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$units_property_rapidlease$unitid', 
'eef50ee3-f23f-4371-8156-5ba2491df293', 
'2f1786c5-c7cf-3a59-9838-c7cb8f97f7ad');
UPDATE "mendixsystem$association"
 SET "association_name" = 'RapidLease.Units_Property', 
"table_name" = 'rapidlease$units_property', 
"parent_entity_id" = '136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
"child_entity_id" = 'c181409a-fd0f-491d-8fae-d54b555deb83', 
"parent_column_name" = 'rapidlease$unitid', 
"child_column_name" = 'rapidlease$propertyid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_rapidlease$units_property_rapidlease$property_rapidlease$unit'
 WHERE "id" = 'eef50ee3-f23f-4371-8156-5ba2491df293';
ALTER TABLE "rapidlease$lease" ADD "renewed" BOOLEAN NULL;
UPDATE "rapidlease$lease"
 SET "renewed" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('04898f32-e62a-40b0-b117-36333dfddc29', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Renewed', 
'renewed', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$workorder" DROP COLUMN "due";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "status";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "createdtime";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "isvisible";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "subject";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "category";
ALTER TABLE "rapidlease$workorder" DROP COLUMN "priority";
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '0caf90e3-b844-4792-a74f-68928958449d';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '156b1118-5383-4046-8f90-c59e0050467b';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '31e576c8-f213-4968-a3ef-58edcb20c989';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '6ba78c38-7750-449a-b2eb-3a0e690128c3';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '6fcec7fd-1659-476f-97e6-68bd051a370e';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'e168c183-0a36-474a-83a2-cdda441d09b8';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'ec67a311-35e2-4994-b383-e2f554f4ef82';
ALTER TABLE "rapidlease$meterreading" ADD "priorvalue" INT NULL;
UPDATE "rapidlease$meterreading"
 SET "priorvalue" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('256378ac-6cea-4190-bd09-33b985377f00', 
'372476db-e202-46bf-9b4f-f04ed799f5bd', 
'PriorValue', 
'priorvalue', 
3, 
0, 
'0', 
false);
ALTER TABLE "rapidlease$task" ADD "isvisible" BOOLEAN NULL;
UPDATE "rapidlease$task"
 SET "isvisible" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('150be377-223c-4675-ba84-583028818aa3', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'IsVisible', 
'isvisible', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidcommunication$communication" ADD "propertyaccess" VARCHAR_IGNORECASE(21) NULL;
UPDATE "rapidcommunication$communication"
 SET "propertyaccess" = 'All_properties';
ALTER TABLE "rapidcommunication$communication" ADD "exisitingvendorcontact" BOOLEAN NULL;
UPDATE "rapidcommunication$communication"
 SET "exisitingvendorcontact" = false;
ALTER TABLE "rapidcommunication$communication" ADD "comments" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidcommunication$communication" ADD "website" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidcommunication$communication" ADD "category" VARCHAR_IGNORECASE(19) NULL;
ALTER TABLE "rapidcommunication$communication" ADD "name" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('242d9ae9-7163-4995-a3cf-05f1775e5f3f', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Category', 
'category', 
40, 
19, 
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
 VALUES ('a313849d-7583-4458-a4ca-76e62f62723b', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Name', 
'name', 
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
 VALUES ('10207610-9254-4115-94e7-37c801df36be', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'ExisitingVendorContact', 
'exisitingvendorcontact', 
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
 VALUES ('95178942-d05b-42ef-a8ea-01999c09b148', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'website', 
'website', 
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
 VALUES ('63d17346-a346-4e5b-82b4-1b0ca0504754', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'Comments', 
'comments', 
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
 VALUES ('b3aa6132-b7d0-4e55-bbb8-ad482d423b5f', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'PropertyAccess', 
'propertyaccess', 
40, 
21, 
'All_properties', 
false);
CREATE TABLE "rapidlease$property_communication" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidcommunication$communicationid"));
CREATE INDEX "idx_rapidlease$property_communication_rapidcommunication$communication_rapidlease$property" ON "rapidlease$property_communication" ("rapidcommunication$communicationid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('89ec7e73-24dd-45bb-877c-5075d200b86d', 
'RapidLease.Property_Communication', 
'rapidlease$property_communication', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'rapidlease$propertyid', 
'rapidcommunication$communicationid', 
'idx_rapidlease$property_communication_rapidcommunication$communication_rapidlease$property');
CREATE TABLE "rapidlease$listing_account" (
	"id" BIGINT NOT NULL,
	"isdefault" BOOLEAN NULL,
	"desc" VARCHAR_IGNORECASE(200) NULL,
	"emailid" VARCHAR_IGNORECASE(200) NULL,
	"phone" VARCHAR_IGNORECASE(200) NULL,
	"website" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'RapidLease.Listing_Account', 
'rapidlease$listing_account', 
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
 VALUES ('27fdeb3e-041c-44d2-aa0b-fbab224fd6a8', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'IsDefault', 
'isdefault', 
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
 VALUES ('c2f5233b-078d-4803-8942-22a058298d63', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'Desc', 
'desc', 
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
 VALUES ('1991ecbc-249d-4a55-beaf-489d3522d319', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'EmailID', 
'emailid', 
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
 VALUES ('79515ede-9040-40f2-aa34-057c49d00509', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'Phone', 
'phone', 
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
 VALUES ('67c60869-8999-442e-b39d-6a5e0cb8d723', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'Website', 
'website', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$communitydiscussions" (
	"id" BIGINT NOT NULL,
	"views" INT NULL,
	"description" VARCHAR_IGNORECASE(2147483647) NULL,
	"author" VARCHAR_IGNORECASE(200) NULL,
	"propertytype" VARCHAR_IGNORECASE(200) NULL,
	"count" INT NULL,
	"topic" VARCHAR_IGNORECASE(200) NULL,
	"lastpost" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('76ddbeee-7ffa-431b-918f-558faee204d7', 
'RapidCommunication.CommunityDiscussions', 
'rapidcommunication$communitydiscussions', 
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
 VALUES ('8a51d6e7-f909-4638-95af-77bb61064406', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'Views', 
'views', 
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
 VALUES ('056dc0e0-dbba-4a5d-912d-086c71ca323b', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'Description', 
'description', 
30, 
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
 VALUES ('043e8758-5835-4451-8100-2d5142e1d18e', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'Author', 
'author', 
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
 VALUES ('10a134f3-a2ae-4963-9576-5676097d40c4', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'PropertyType', 
'propertytype', 
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
 VALUES ('9a0d1f37-56ac-40bf-93b4-e23125be23ea', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'Count', 
'count', 
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
 VALUES ('a6297542-e1ae-4eb2-ba66-d31157da4efe', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'Topic', 
'topic', 
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
 VALUES ('03b46b7a-1c5d-438d-b993-cda02ef1b952', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'LastPost', 
'lastpost', 
20, 
0, 
'', 
false);
CREATE TABLE "rapidlease$task_image" (
	"rapidlease$taskid" BIGINT NOT NULL,
	"rapidlease$imageid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$taskid","rapidlease$imageid"),
	CONSTRAINT "uniq_rapidlease$task_image_rapidlease$taskid" UNIQUE ("rapidlease$taskid"));
CREATE INDEX "idx_rapidlease$task_image_rapidlease$image_rapidlease$task" ON "rapidlease$task_image" ("rapidlease$imageid" ASC,"rapidlease$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('7db4a5fc-5384-4e5e-8cd1-85013afdba09', 
'RapidLease.Task_Image', 
'rapidlease$task_image', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'b51f111a-8290-4091-8f64-c50afcac5471', 
'rapidlease$taskid', 
'rapidlease$imageid', 
'idx_rapidlease$task_image_rapidlease$image_rapidlease$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_image_rapidlease$taskid', 
'7db4a5fc-5384-4e5e-8cd1-85013afdba09', 
'5f424673-4855-361c-abd2-ef14f609832b');
CREATE TABLE "rapidlease$task_tenant" (
	"rapidlease$taskid" BIGINT NOT NULL,
	"rapidlease$tenantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$taskid","rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$task_tenant_rapidlease$taskid" UNIQUE ("rapidlease$taskid"));
CREATE INDEX "idx_rapidlease$task_tenant_rapidlease$tenant_rapidlease$task" ON "rapidlease$task_tenant" ("rapidlease$tenantid" ASC,"rapidlease$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('c61c2c58-bff6-47e1-812c-dcb630df5796', 
'RapidLease.Task_Tenant', 
'rapidlease$task_tenant', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'rapidlease$taskid', 
'rapidlease$tenantid', 
'idx_rapidlease$task_tenant_rapidlease$tenant_rapidlease$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_tenant_rapidlease$taskid', 
'c61c2c58-bff6-47e1-812c-dcb630df5796', 
'af1212a8-f8b3-36ed-a161-d4c55b57e52e');
CREATE TABLE "rapidlease$listing_listing_account" (
	"rapidlease$listingid" BIGINT NOT NULL,
	"rapidlease$listing_accountid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$listingid","rapidlease$listing_accountid"),
	CONSTRAINT "uniq_rapidlease$listing_listing_account_rapidlease$listing_accountid" UNIQUE ("rapidlease$listing_accountid"),
	CONSTRAINT "uniq_rapidlease$listing_listing_account_rapidlease$listingid" UNIQUE ("rapidlease$listingid"));
CREATE INDEX "idx_rapidlease$listing_listing_account_rapidlease$listing_account_rapidlease$listing" ON "rapidlease$listing_listing_account" ("rapidlease$listing_accountid" ASC,"rapidlease$listingid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b628b026-325d-4dbd-8960-ea071f229377', 
'RapidLease.Listing_Listing_Account', 
'rapidlease$listing_listing_account', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'57edaeb7-ccdd-48eb-ae86-3864303fb3ac', 
'rapidlease$listingid', 
'rapidlease$listing_accountid', 
'idx_rapidlease$listing_listing_account_rapidlease$listing_account_rapidlease$listing');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$listing_listing_account_rapidlease$listing_accountid', 
'b628b026-325d-4dbd-8960-ea071f229377', 
'1975263a-8c2e-32f2-871b-a72bfd945a55');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$listing_listing_account_rapidlease$listingid', 
'b628b026-325d-4dbd-8960-ea071f229377', 
'f0af9afb-d619-3667-b892-8221531c1e79');
CREATE TABLE "rapidlease$count" (
	"id" BIGINT NOT NULL,
	"count" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('0e826f53-f209-4dce-a227-d388a7d86f0b', 
'RapidLease.Count', 
'rapidlease$count', 
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
 VALUES ('e6539772-9ed8-45db-9841-73c01d15ab82', 
'0e826f53-f209-4dce-a227-d388a7d86f0b', 
'Count', 
'count', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211006 12:04:18';
