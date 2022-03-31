ALTER TABLE "rapidcommunication$attachments" RENAME TO "8587da330d2a42189520fc7690bc2d08";
ALTER TABLE "rapidcommunication$attachments_communitydiscussions" DROP CONSTRAINT "uniq_rapidcommunication$attachments_communitydiscussions_rapidcommunication$attachmentsid";
DROP INDEX "idx_rapidcommunication$attachments_communitydiscussions_rapidcommunication$communitydiscussions_rapidcommunication$attachments";
ALTER TABLE "rapidcommunication$attachments_communitydiscussions" RENAME TO "5782e7a9a782462b999dcb9eca6f1212";
ALTER TABLE "rapidcommunication$announcement" ADD "changeddate" TIMESTAMP NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "createddate" TIMESTAMP NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "sent" TIMESTAMP NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "title" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "property_access" VARCHAR_IGNORECASE(21) NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "system$changedby" BIGINT NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "sender" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "system$owner" BIGINT NULL;
ALTER TABLE "rapidcommunication$announcement" ADD "property" VARCHAR_IGNORECASE(200) NULL;
CREATE INDEX "idx_rapidcommunication$announcement_system$changedby" ON "rapidcommunication$announcement" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_rapidcommunication$announcement_system$owner" ON "rapidcommunication$announcement" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('a297b803-75f0-44c8-8293-df08a968eaaa', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'title', 
'title', 
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
 VALUES ('803c8ec6-177f-4e0e-a363-7f6d38c8e1c4', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'sent', 
'sent', 
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
 VALUES ('3845fba4-0096-4885-b476-8b927ac8108e', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'property_access', 
'property_access', 
40, 
21, 
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
 VALUES ('08b68bb8-e2ad-316f-8771-7c2e652112eb', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'changedDate', 
'changeddate', 
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
 VALUES ('d988c2ce-9edc-3e7d-ae5f-93242deea87f', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'createdDate', 
'createddate', 
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
 VALUES ('efe8a455-da87-400c-a333-b00dfbfe0b32', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'sender', 
'sender', 
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
 VALUES ('3d1f9f71-81f2-4b2c-bbdf-1e6f4a9b45ca', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'property', 
'property', 
30, 
200, 
'', 
false);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name")
 VALUES ('4c939ce3-bd7a-3012-a88b-133d3c91af5a', 
'System.changedBy', 
'system$changedby', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name")
 VALUES ('9c180193-9541-3637-8e9b-ca0906911399', 
'System.owner', 
'system$owner', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('b78f9545-92da-3bbd-b748-3c2f751d4dd2', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'idx_rapidcommunication$announcement_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('b78f9545-92da-3bbd-b748-3c2f751d4dd2', 
'4c939ce3-bd7a-3012-a88b-133d3c91af5a', 
false, 
0);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('58810102-0268-32a0-bae6-8786fb92c4e8', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'idx_rapidcommunication$announcement_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('58810102-0268-32a0-bae6-8786fb92c4e8', 
'9c180193-9541-3637-8e9b-ca0906911399', 
false, 
0);
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'c8a9e710-e291-4836-9910-e4339173395f';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'c8a9e710-e291-4836-9910-e4339173395f';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'c8a9e710-e291-4836-9910-e4339173395f');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'c8a9e710-e291-4836-9910-e4339173395f';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'c8a9e710-e291-4836-9910-e4339173395f';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '0f6f65ae-1352-44e0-8ddf-3b96f7b80a5c';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidcommunication$attachments_communitydiscussions_rapidcommunication$attachmentsid' AND "column_id" = '4da51ef0-462a-33db-8cc9-69ebb4abbaf4';
ALTER TABLE "rapidcommunication$communication" ALTER COLUMN "category" SET DATA TYPE VARCHAR_IGNORECASE(200);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
"attribute_name" = 'Category', 
"column_name" = 'category', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '242d9ae9-7163-4995-a3cf-05f1775e5f3f';
CREATE TABLE "rapidlease$property_announcement" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidcommunication$announcementid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidcommunication$announcementid"));
CREATE INDEX "idx_rapidlease$property_announcement_rapidcommunication$announcement_rapidlease$property" ON "rapidlease$property_announcement" ("rapidcommunication$announcementid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('09f15a4d-0e9f-43a1-81d9-f88d50dd5674', 
'RapidLease.Property_Announcement', 
'rapidlease$property_announcement', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'rapidlease$propertyid', 
'rapidcommunication$announcementid', 
'idx_rapidlease$property_announcement_rapidcommunication$announcement_rapidlease$property');
CREATE TABLE "rapidcommunication$communication_cfiles" (
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	"rapidcommunication$cfilesid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communicationid","rapidcommunication$cfilesid"),
	CONSTRAINT "uniq_rapidcommunication$communication_cfiles_rapidcommunication$communicationid" UNIQUE ("rapidcommunication$communicationid"));
CREATE INDEX "idx_rapidcommunication$communication_cfiles_rapidcommunication$cfiles_rapidcommunication$communication" ON "rapidcommunication$communication_cfiles" ("rapidcommunication$cfilesid" ASC,"rapidcommunication$communicationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('c4822a42-0b5b-41d0-ae1b-fbcde6d725ee', 
'RapidCommunication.Communication_CFiles', 
'rapidcommunication$communication_cfiles', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'rapidcommunication$communicationid', 
'rapidcommunication$cfilesid', 
'idx_rapidcommunication$communication_cfiles_rapidcommunication$cfiles_rapidcommunication$communication');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communication_cfiles_rapidcommunication$communicationid', 
'c4822a42-0b5b-41d0-ae1b-fbcde6d725ee', 
'e7427644-4d9c-3832-9a3a-e921fb7f6e14');
CREATE TABLE "rapidcommunication$communication_categories" (
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	"rapidcommunication$categoriesid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communicationid","rapidcommunication$categoriesid"));
CREATE INDEX "idx_rapidcommunication$communication_categories_rapidcommunication$categories_rapidcommunication$communication" ON "rapidcommunication$communication_categories" ("rapidcommunication$categoriesid" ASC,"rapidcommunication$communicationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('9cb0d7d6-d973-4d7b-9586-6567946bb1f5', 
'RapidCommunication.Communication_Categories', 
'rapidcommunication$communication_categories', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'081540be-9752-41fc-9db6-1a7c623aa13a', 
'rapidcommunication$communicationid', 
'rapidcommunication$categoriesid', 
'idx_rapidcommunication$communication_categories_rapidcommunication$categories_rapidcommunication$communication');
CREATE TABLE "rapidcommunication$users" (
	"id" BIGINT NOT NULL,
	"status" VARCHAR_IGNORECASE(18) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('41212f10-8e41-4307-bdc5-36a4f00c969e', 
'RapidCommunication.Users', 
'rapidcommunication$users', 
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
 VALUES ('7ab26684-8a9b-4284-85d2-c2594878bc08', 
'41212f10-8e41-4307-bdc5-36a4f00c969e', 
'Status', 
'status', 
40, 
18, 
'', 
false);
CREATE TABLE "rapidlease$tenant_announcement" (
	"rapidlease$tenantid" BIGINT NOT NULL,
	"rapidcommunication$announcementid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$tenantid","rapidcommunication$announcementid"));
CREATE INDEX "idx_rapidlease$tenant_announcement_rapidcommunication$announcement_rapidlease$tenant" ON "rapidlease$tenant_announcement" ("rapidcommunication$announcementid" ASC,"rapidlease$tenantid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('27cda4d4-5fdf-4e33-b938-2b8e1e1ae69b', 
'RapidLease.Tenant_Announcement', 
'rapidlease$tenant_announcement', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'rapidlease$tenantid', 
'rapidcommunication$announcementid', 
'idx_rapidlease$tenant_announcement_rapidcommunication$announcement_rapidlease$tenant');
CREATE TABLE "rapidlease$event_type" (
	"id" BIGINT NOT NULL,
	"event_for" VARCHAR_IGNORECASE(200) NULL,
	"event_name" VARCHAR_IGNORECASE(200) NULL,
	"default_comment" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('1e60367f-4aa0-48e8-b752-f9f85531977c', 
'RapidLease.Event_type', 
'rapidlease$event_type', 
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
 VALUES ('d3e11e0e-0ecb-4c7c-a01a-3911f339ded3', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'Event_For', 
'event_for', 
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
 VALUES ('8112ec7b-046d-4e47-b853-a3c27b7ba6c5', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'Event_Name', 
'event_name', 
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
 VALUES ('b8461858-7e2f-4b61-aeef-2cab63389d8f', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'Default_Comment', 
'default_comment', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidlease$event_type_history" (
	"rapidlease$event_typeid" BIGINT NOT NULL,
	"rapidlease$historyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$event_typeid","rapidlease$historyid"),
	CONSTRAINT "uniq_rapidlease$event_type_history_rapidlease$historyid" UNIQUE ("rapidlease$historyid"),
	CONSTRAINT "uniq_rapidlease$event_type_history_rapidlease$event_typeid" UNIQUE ("rapidlease$event_typeid"));
CREATE INDEX "idx_rapidlease$event_type_history_rapidlease$history_rapidlease$event_type" ON "rapidlease$event_type_history" ("rapidlease$historyid" ASC,"rapidlease$event_typeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('48bf7f86-49bf-4e16-b725-ab18c58148c1', 
'RapidLease.Event_type_HISTORY', 
'rapidlease$event_type_history', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'rapidlease$event_typeid', 
'rapidlease$historyid', 
'idx_rapidlease$event_type_history_rapidlease$history_rapidlease$event_type');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_history_rapidlease$historyid', 
'48bf7f86-49bf-4e16-b725-ab18c58148c1', 
'5e488767-8925-337b-af09-1777f4ea43a2');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_history_rapidlease$event_typeid', 
'48bf7f86-49bf-4e16-b725-ab18c58148c1', 
'e908b011-2573-3987-8134-e1bdef1dd361');
CREATE TABLE "rapidlease$event_type_property" (
	"rapidlease$event_typeid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$event_typeid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$event_type_property_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$event_type_property_rapidlease$event_typeid" UNIQUE ("rapidlease$event_typeid"));
CREATE INDEX "idx_rapidlease$event_type_property_rapidlease$property_rapidlease$event_type" ON "rapidlease$event_type_property" ("rapidlease$propertyid" ASC,"rapidlease$event_typeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('a1770a0d-ef80-494b-ae21-91100b25e2d6', 
'RapidLease.Event_type_Property', 
'rapidlease$event_type_property', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$event_typeid', 
'rapidlease$propertyid', 
'idx_rapidlease$event_type_property_rapidlease$property_rapidlease$event_type');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_property_rapidlease$propertyid', 
'a1770a0d-ef80-494b-ae21-91100b25e2d6', 
'1e4cd37c-05d6-3ba1-9cc4-517ed0f633a5');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_property_rapidlease$event_typeid', 
'a1770a0d-ef80-494b-ae21-91100b25e2d6', 
'731614c6-a09c-3d8a-89e0-f6104586a41f');
CREATE TABLE "rapidlease$event_type_listing" (
	"rapidlease$event_typeid" BIGINT NOT NULL,
	"rapidlease$listingid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$event_typeid","rapidlease$listingid"),
	CONSTRAINT "uniq_rapidlease$event_type_listing_rapidlease$listingid" UNIQUE ("rapidlease$listingid"),
	CONSTRAINT "uniq_rapidlease$event_type_listing_rapidlease$event_typeid" UNIQUE ("rapidlease$event_typeid"));
CREATE INDEX "idx_rapidlease$event_type_listing_rapidlease$listing_rapidlease$event_type" ON "rapidlease$event_type_listing" ("rapidlease$listingid" ASC,"rapidlease$event_typeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('a981d150-66f6-4dfd-97d9-45f0ccb083af', 
'RapidLease.Event_type_Listing', 
'rapidlease$event_type_listing', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'rapidlease$event_typeid', 
'rapidlease$listingid', 
'idx_rapidlease$event_type_listing_rapidlease$listing_rapidlease$event_type');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_listing_rapidlease$listingid', 
'a981d150-66f6-4dfd-97d9-45f0ccb083af', 
'619dc796-da08-3e87-9777-ebdd7d3a58d7');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_listing_rapidlease$event_typeid', 
'a981d150-66f6-4dfd-97d9-45f0ccb083af', 
'73ddcbe4-3c25-3b5a-b6b0-453090099edc');
CREATE TABLE "rapidlease$event_type_unit" (
	"rapidlease$event_typeid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$event_typeid","rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$event_type_unit_rapidlease$unitid" UNIQUE ("rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$event_type_unit_rapidlease$event_typeid" UNIQUE ("rapidlease$event_typeid"));
CREATE INDEX "idx_rapidlease$event_type_unit_rapidlease$unit_rapidlease$event_type" ON "rapidlease$event_type_unit" ("rapidlease$unitid" ASC,"rapidlease$event_typeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4a106586-fff9-4e99-ab49-e2aedb0de8c8', 
'RapidLease.Event_type_Unit', 
'rapidlease$event_type_unit', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$event_typeid', 
'rapidlease$unitid', 
'idx_rapidlease$event_type_unit_rapidlease$unit_rapidlease$event_type');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_unit_rapidlease$unitid', 
'4a106586-fff9-4e99-ab49-e2aedb0de8c8', 
'52821e99-0f0e-3334-81d3-feae98c21fd3');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_unit_rapidlease$event_typeid', 
'4a106586-fff9-4e99-ab49-e2aedb0de8c8', 
'1b2e473d-fcfa-3cac-9b1a-21df118a4abc');
CREATE TABLE "rapidlease$event_type_lease" (
	"rapidlease$event_typeid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$event_typeid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$event_type_lease_rapidlease$leaseid" UNIQUE ("rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$event_type_lease_rapidlease$event_typeid" UNIQUE ("rapidlease$event_typeid"));
CREATE INDEX "idx_rapidlease$event_type_lease_rapidlease$lease_rapidlease$event_type" ON "rapidlease$event_type_lease" ("rapidlease$leaseid" ASC,"rapidlease$event_typeid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('f2cace5d-4fdc-4f1e-b9d1-95ab9f7fc918', 
'RapidLease.Event_type_Lease', 
'rapidlease$event_type_lease', 
'1e60367f-4aa0-48e8-b752-f9f85531977c', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$event_typeid', 
'rapidlease$leaseid', 
'idx_rapidlease$event_type_lease_rapidlease$lease_rapidlease$event_type');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_lease_rapidlease$leaseid', 
'f2cace5d-4fdc-4f1e-b9d1-95ab9f7fc918', 
'e1866374-d38c-3a01-ae1f-c351fe53bb07');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$event_type_lease_rapidlease$event_typeid', 
'f2cace5d-4fdc-4f1e-b9d1-95ab9f7fc918', 
'8c1172f9-c507-358c-895a-4b563fbac3d0');
CREATE TABLE "rapidcommunication$categories" (
	"id" BIGINT NOT NULL,
	"category" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('081540be-9752-41fc-9db6-1a7c623aa13a', 
'RapidCommunication.Categories', 
'rapidcommunication$categories', 
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
 VALUES ('328db3d3-684f-4082-8700-79e96fb7fb58', 
'081540be-9752-41fc-9db6-1a7c623aa13a', 
'Category', 
'category', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$categories_communication" (
	"rapidcommunication$categoriesid" BIGINT NOT NULL,
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$categoriesid","rapidcommunication$communicationid"),
	CONSTRAINT "uniq_rapidcommunication$categories_communication_rapidcommunication$categoriesid" UNIQUE ("rapidcommunication$categoriesid"));
CREATE INDEX "idx_rapidcommunication$categories_communication_rapidcommunication$communication_rapidcommunication$categories" ON "rapidcommunication$categories_communication" ("rapidcommunication$communicationid" ASC,"rapidcommunication$categoriesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d998d1cc-e77e-4726-b553-f51102f4c15e', 
'RapidCommunication.Categories_Communication', 
'rapidcommunication$categories_communication', 
'081540be-9752-41fc-9db6-1a7c623aa13a', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'rapidcommunication$categoriesid', 
'rapidcommunication$communicationid', 
'idx_rapidcommunication$categories_communication_rapidcommunication$communication_rapidcommunication$categories');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$categories_communication_rapidcommunication$categoriesid', 
'd998d1cc-e77e-4726-b553-f51102f4c15e', 
'5ebd9dbc-7682-3cc9-a4cd-15fd45a47666');
CREATE TABLE "rapidcommunication$cfiles_categories" (
	"rapidcommunication$cfilesid" BIGINT NOT NULL,
	"rapidcommunication$categoriesid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$cfilesid","rapidcommunication$categoriesid"));
CREATE INDEX "idx_rapidcommunication$cfiles_categories_rapidcommunication$categories_rapidcommunication$cfiles" ON "rapidcommunication$cfiles_categories" ("rapidcommunication$categoriesid" ASC,"rapidcommunication$cfilesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3581462e-ee5b-49d8-9f9f-f0cd00144589', 
'RapidCommunication.CFiles_Categories', 
'rapidcommunication$cfiles_categories', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'081540be-9752-41fc-9db6-1a7c623aa13a', 
'rapidcommunication$cfilesid', 
'rapidcommunication$categoriesid', 
'idx_rapidcommunication$cfiles_categories_rapidcommunication$categories_rapidcommunication$cfiles');
DELETE FROM "system$filedocument" 
 WHERE "id" IN (SELECT "id"
 FROM "8587da330d2a42189520fc7690bc2d08");
DROP TABLE "8587da330d2a42189520fc7690bc2d08";
DROP TABLE "5782e7a9a782462b999dcb9eca6f1212";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211006 19:21:01';
