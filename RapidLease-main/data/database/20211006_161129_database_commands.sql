DROP INDEX "idx_rapidlease$task_system$changedby";
DROP INDEX "idx_rapidlease$task_system$owner";
ALTER TABLE "rapidlease$lease" ADD "existing_tenant" BOOLEAN NULL;
UPDATE "rapidlease$lease"
 SET "existing_tenant" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('2a6f95ad-4155-4d5d-ac24-c497bc661fd2', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Existing_Tenant', 
'existing_tenant', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$tenant" ADD "selected" BOOLEAN NULL;
UPDATE "rapidlease$tenant"
 SET "selected" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3484eb2e-0512-4bfb-8c7e-aa09897af233', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'Selected', 
'selected', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$task" ADD "notes" VARCHAR_IGNORECASE(2147483647) NULL;
ALTER TABLE "rapidlease$task" ADD "pets" VARCHAR_IGNORECASE(3) NULL;
ALTER TABLE "rapidlease$task" ADD "scheduling" VARCHAR_IGNORECASE(14) NULL;
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'b0d2d363-f924-39ca-859f-499b0eb121c9';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'b6123ceb-fb41-30b9-801a-5ae8ed6128f1';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '1f651c23-3d1d-3821-9ae5-1835d6c39cf9';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '29e82bed-e8c4-36f5-a376-f7de2908a0ef';
DELETE FROM "mendixsystem$index" 
 WHERE "id" = '552fe291-a9a4-317d-9f21-c81d6bff4218';
DELETE FROM "mendixsystem$index_column" 
 WHERE "index_id" = '552fe291-a9a4-317d-9f21-c81d6bff4218';
DELETE FROM "mendixsystem$index" 
 WHERE "id" = 'd6ad9c7f-1ce2-3faf-84ce-fc645919fbac';
DELETE FROM "mendixsystem$index_column" 
 WHERE "index_id" = 'd6ad9c7f-1ce2-3faf-84ce-fc645919fbac';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'RapidLease.Task', 
"table_name" = 'rapidlease$task', 
"superentity_id" = '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = 'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('8babb9f0-8cf6-4387-9005-e836fdfdadcb', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'Scheduling', 
'scheduling', 
40, 
14, 
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
 VALUES ('0c61e72e-720a-40d9-ac5e-7a19014c6e46', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'Pets', 
'pets', 
40, 
3, 
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
 VALUES ('99aa7d44-b370-49fe-83c9-50c6ca4fa946', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'Notes', 
'notes', 
30, 
0, 
'', 
false);
CREATE TABLE "rapidcommunication$communication_vendor" (
	"rapidcommunication$communicationid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communicationid","rapidlease$vendorid"),
	CONSTRAINT "uniq_rapidcommunication$communication_vendor_rapidcommunication$communicationid" UNIQUE ("rapidcommunication$communicationid"));
CREATE INDEX "idx_rapidcommunication$communication_vendor_rapidlease$vendor_rapidcommunication$communication" ON "rapidcommunication$communication_vendor" ("rapidlease$vendorid" ASC,"rapidcommunication$communicationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3c508148-7221-407b-9c4a-881ad7fcdefe', 
'RapidCommunication.Communication_Vendor', 
'rapidcommunication$communication_vendor', 
'de1b0c70-8412-409d-8fb9-e19d3ec00379', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'rapidcommunication$communicationid', 
'rapidlease$vendorid', 
'idx_rapidcommunication$communication_vendor_rapidlease$vendor_rapidcommunication$communication');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communication_vendor_rapidcommunication$communicationid', 
'3c508148-7221-407b-9c4a-881ad7fcdefe', 
'5081f609-1360-37fe-89b0-bd70a83b8640');
CREATE TABLE "rapidcommunication$communitydiscussions_property" (
	"rapidcommunication$communitydiscussionsid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communitydiscussionsid","rapidlease$propertyid"));
CREATE INDEX "idx_rapidcommunication$communitydiscussions_property_rapidlease$property_rapidcommunication$communitydiscussions" ON "rapidcommunication$communitydiscussions_property" ("rapidlease$propertyid" ASC,"rapidcommunication$communitydiscussionsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('c949df6c-2e18-4d51-be25-2b91b43b12a3', 
'RapidCommunication.CommunityDiscussions_Property', 
'rapidcommunication$communitydiscussions_property', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidcommunication$communitydiscussionsid', 
'rapidlease$propertyid', 
'idx_rapidcommunication$communitydiscussions_property_rapidlease$property_rapidcommunication$communitydiscussions');
CREATE TABLE "rapidcommunication$cfiles_communitydiscussions" (
	"rapidcommunication$cfilesid" BIGINT NOT NULL,
	"rapidcommunication$communitydiscussionsid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$cfilesid","rapidcommunication$communitydiscussionsid"),
	CONSTRAINT "uniq_rapidcommunication$cfiles_communitydiscussions_rapidcommunication$cfilesid" UNIQUE ("rapidcommunication$cfilesid"));
CREATE INDEX "idx_rapidcommunication$cfiles_communitydiscussions_rapidcommunication$communitydiscussions_rapidcommunication$cfiles" ON "rapidcommunication$cfiles_communitydiscussions" ("rapidcommunication$communitydiscussionsid" ASC,"rapidcommunication$cfilesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('bc03be9d-06bd-4c1a-af26-bdc87c29caf0', 
'RapidCommunication.CFiles_CommunityDiscussions', 
'rapidcommunication$cfiles_communitydiscussions', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'rapidcommunication$cfilesid', 
'rapidcommunication$communitydiscussionsid', 
'idx_rapidcommunication$cfiles_communitydiscussions_rapidcommunication$communitydiscussions_rapidcommunication$cfiles');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$cfiles_communitydiscussions_rapidcommunication$cfilesid', 
'bc03be9d-06bd-4c1a-af26-bdc87c29caf0', 
'9ba023e3-4972-3e18-afa7-d201fb34d342');
CREATE TABLE "rapidlease$selected_offer" (
	"rapidlease$offerid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$offerid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$selected_offer_rapidlease$leaseid" UNIQUE ("rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$selected_offer_rapidlease$offerid" UNIQUE ("rapidlease$offerid"));
CREATE INDEX "idx_rapidlease$selected_offer_rapidlease$lease_rapidlease$offer" ON "rapidlease$selected_offer" ("rapidlease$leaseid" ASC,"rapidlease$offerid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e257a6f1-0b0f-4eca-87dc-52c21ef31d22', 
'RapidLease.Selected_Offer', 
'rapidlease$selected_offer', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$offerid', 
'rapidlease$leaseid', 
'idx_rapidlease$selected_offer_rapidlease$lease_rapidlease$offer');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$selected_offer_rapidlease$leaseid', 
'e257a6f1-0b0f-4eca-87dc-52c21ef31d22', 
'5c6aeed2-305e-3e08-82e8-11d4d5057340');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$selected_offer_rapidlease$offerid', 
'e257a6f1-0b0f-4eca-87dc-52c21ef31d22', 
'ee84d695-c0b6-3f20-b7e0-763d1497237f');
INSERT INTO "system$filedocument" ("id", 
"submetaobjectname", 
"system$owner", 
"system$changedby", 
"createddate", 
"changeddate", 
"deleteafterdownload", 
"size", 
"hascontents", 
"fileid", 
"__filename__")
SELECT "id", 
'RapidLease.Task', 
"system$owner", 
"system$changedby", 
"createddate", 
"changeddate", 
false, 
-1, 
false, 
NEXT VALUE FOR "system$filedocument_fileid_mxseq", 
0
 FROM "rapidlease$task"
 ORDER BY "id" ASC;
ALTER TABLE "rapidlease$task" DROP COLUMN "system$owner";
ALTER TABLE "rapidlease$task" DROP COLUMN "changeddate";
ALTER TABLE "rapidlease$task" DROP COLUMN "createddate";
ALTER TABLE "rapidlease$task" DROP COLUMN "system$changedby";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211006 16:11:29';
