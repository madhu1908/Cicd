ALTER TABLE "rapidlease$files_task_attachments" DROP CONSTRAINT "uniq_rapidlease$files_task_attachments_rapidlease$filesid";
ALTER TABLE "rapidlease$property_vendor" DROP CONSTRAINT "uniq_rapidlease$property_vendor_rapidlease$propertyid";
ALTER TABLE "rapidlease$comment" ADD "system$changedby" BIGINT NULL;
ALTER TABLE "rapidlease$comment" ADD "subject" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$comment" ADD "created_date" TIMESTAMP NULL;
ALTER TABLE "rapidlease$comment" ADD "system$owner" BIGINT NULL;
ALTER TABLE "rapidlease$comment" ADD "created_by" VARCHAR_IGNORECASE(200) NULL;
CREATE INDEX "idx_rapidlease$comment_system$changedby" ON "rapidlease$comment" ("system$changedby" ASC,"id" ASC);
CREATE INDEX "idx_rapidlease$comment_system$owner" ON "rapidlease$comment" ("system$owner" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('67e3bbe7-00e3-4ab4-bf23-3d5d6575cfa9', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'Created_by', 
'created_by', 
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
 VALUES ('3cb28760-2b16-4c78-95ad-397cbcbe35cc', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'Created_date', 
'created_date', 
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
 VALUES ('ccaaafe1-62e2-4e0d-8208-fd52b43bc99f', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'Subject', 
'subject', 
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
 VALUES ('53556709-7088-3df0-b95d-6dd418b5f507', 
'System.changedBy', 
'system$changedby', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
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
 VALUES ('2d035c8b-e1f9-3812-9072-312927a93cc0', 
'System.owner', 
'system$owner', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('85616df1-a132-38c7-b443-41c63387d3ae', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'idx_rapidlease$comment_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('85616df1-a132-38c7-b443-41c63387d3ae', 
'53556709-7088-3df0-b95d-6dd418b5f507', 
false, 
0);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('7e053699-183a-304b-90bc-4e846bc99288', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'idx_rapidlease$comment_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('7e053699-183a-304b-90bc-4e846bc99288', 
'2d035c8b-e1f9-3812-9072-312927a93cc0', 
false, 
0);
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$files_task_attachments_rapidlease$filesid' AND "column_id" = '13d6a72d-04dd-3a93-9109-e0eed91795e9';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$property_vendor_rapidlease$propertyid' AND "column_id" = '5e22179f-691a-33e0-a125-3d66b2ce0b8f';
CREATE TABLE "assets_and_maintenance$quotations" (
	"id" BIGINT NOT NULL,
	"actual_sellingprice" INT NULL,
	"est_amount" INT NULL,
	"changeddate" TIMESTAMP NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	"createddate" TIMESTAMP NULL,
	"number" INT NULL,
	"est_sellingprice" INT NULL,
	"est_quantity" INT NULL,
	"actual_quantity" INT NULL,
	"actual_amount" INT NULL,
	"unit" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Assets_and_Maintenance.Quotations', 
'assets_and_maintenance$quotations', 
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
 VALUES ('138e4b74-1151-438a-8e79-8a641335ee5e', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Actual_SellingPrice', 
'actual_sellingprice', 
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
 VALUES ('07202996-d668-49c4-bc67-e8c9121b76ad', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Est_Amount', 
'est_amount', 
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
 VALUES ('eaefc6cb-9137-3aee-9e23-2416f0879458', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
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
 VALUES ('4ac0086c-2e16-411d-99d8-f51a7c255225', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
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
 VALUES ('9ecc051d-eef3-30a3-be7f-2e657394fee0', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
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
 VALUES ('51eaafd1-4833-4658-807c-e6a6021ffe13', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Number', 
'number', 
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
 VALUES ('e5efb793-9795-4f4b-8d84-69d17dd0fc7f', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Est_SellingPrice', 
'est_sellingprice', 
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
 VALUES ('7e7a9b2b-95f4-478a-aea3-d7944a0e9dce', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Est_Quantity', 
'est_quantity', 
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
 VALUES ('fa24b045-ae3c-49fd-85de-08fb9d5fe751', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Actual_Quantity', 
'actual_quantity', 
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
 VALUES ('bdb7059e-df68-4240-b2ec-0af2e85029ff', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Actual_amount', 
'actual_amount', 
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
 VALUES ('28b5f619-43b3-4f92-9abd-82eac032846f', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Unit', 
'unit', 
3, 
0, 
'', 
false);
CREATE TABLE "assets_and_maintenance$quotations_task" (
	"assets_and_maintenance$quotationsid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$quotationsid","rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$quotations_task_assets_and_maintenance$quotationsid" UNIQUE ("assets_and_maintenance$quotationsid"));
CREATE INDEX "idx_assets_and_maintenance$quotations_task_rapidlease$task_assets_and_maintenance$quotations" ON "assets_and_maintenance$quotations_task" ("rapidlease$taskid" ASC,"assets_and_maintenance$quotationsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4e901017-8372-4b42-acd5-ea284b5baab6', 
'Assets_and_Maintenance.Quotations_Task', 
'assets_and_maintenance$quotations_task', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'assets_and_maintenance$quotationsid', 
'rapidlease$taskid', 
'idx_assets_and_maintenance$quotations_task_rapidlease$task_assets_and_maintenance$quotations');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$quotations_task_assets_and_maintenance$quotationsid', 
'4e901017-8372-4b42-acd5-ea284b5baab6', 
'b8f196dc-5092-35d1-b42c-2a39e7e783db');
CREATE TABLE "assets_and_maintenance$equipment_type" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(1000) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('e09f8e79-d374-45da-bd93-5538ec5b0483', 
'Assets_and_Maintenance.Equipment_Type', 
'assets_and_maintenance$equipment_type', 
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
 VALUES ('eaf24f13-c80f-4fe7-a959-78520c693166', 
'e09f8e79-d374-45da-bd93-5538ec5b0483', 
'Name', 
'name', 
30, 
1000, 
'', 
false);
CREATE TABLE "rapidlease$comment_account" (
	"rapidlease$commentid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$commentid","administration$accountid"),
	CONSTRAINT "uniq_rapidlease$comment_account_rapidlease$commentid" UNIQUE ("rapidlease$commentid"));
CREATE INDEX "idx_rapidlease$comment_account_administration$account_rapidlease$comment" ON "rapidlease$comment_account" ("administration$accountid" ASC,"rapidlease$commentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('61b29b30-1df6-4da3-8a3b-01f711e47715', 
'RapidLease.Comment_Account', 
'rapidlease$comment_account', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'rapidlease$commentid', 
'administration$accountid', 
'idx_rapidlease$comment_account_administration$account_rapidlease$comment');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$comment_account_rapidlease$commentid', 
'61b29b30-1df6-4da3-8a3b-01f711e47715', 
'ddb09efb-ded6-366a-b4b3-e93fb9aac8f6');
CREATE TABLE "rapidlease$comment_vendor" (
	"rapidlease$commentid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$commentid","rapidlease$vendorid"),
	CONSTRAINT "uniq_rapidlease$comment_vendor_rapidlease$commentid" UNIQUE ("rapidlease$commentid"));
CREATE INDEX "idx_rapidlease$comment_vendor_rapidlease$vendor_rapidlease$comment" ON "rapidlease$comment_vendor" ("rapidlease$vendorid" ASC,"rapidlease$commentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d57935bb-b972-48b1-8c8e-cf3332c07257', 
'RapidLease.Comment_Vendor', 
'rapidlease$comment_vendor', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'rapidlease$commentid', 
'rapidlease$vendorid', 
'idx_rapidlease$comment_vendor_rapidlease$vendor_rapidlease$comment');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$comment_vendor_rapidlease$commentid', 
'd57935bb-b972-48b1-8c8e-cf3332c07257', 
'a6b8054b-de32-30aa-91fc-a3a6403f2480');
CREATE TABLE "rapidlease$comment_task" (
	"rapidlease$commentid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$commentid","rapidlease$taskid"),
	CONSTRAINT "uniq_rapidlease$comment_task_rapidlease$commentid" UNIQUE ("rapidlease$commentid"));
CREATE INDEX "idx_rapidlease$comment_task_rapidlease$task_rapidlease$comment" ON "rapidlease$comment_task" ("rapidlease$taskid" ASC,"rapidlease$commentid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('29cbeced-025d-4160-9afb-82e382270668', 
'RapidLease.Comment_Task', 
'rapidlease$comment_task', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'rapidlease$commentid', 
'rapidlease$taskid', 
'idx_rapidlease$comment_task_rapidlease$task_rapidlease$comment');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$comment_task_rapidlease$commentid', 
'29cbeced-025d-4160-9afb-82e382270668', 
'43289914-d767-31fd-aabe-2ee9ca7014ba');
CREATE TABLE "assets_and_maintenance$asset_equipment_type" (
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	"assets_and_maintenance$equipment_typeid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$assetid","assets_and_maintenance$equipment_typeid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_equipment_type_assets_and_maintenance$assetid" UNIQUE ("assets_and_maintenance$assetid"));
CREATE INDEX "idx_assets_and_maintenance$asset_equipment_type_assets_and_maintenance$equipment_type_assets_and_maintenance$asset" ON "assets_and_maintenance$asset_equipment_type" ("assets_and_maintenance$equipment_typeid" ASC,"assets_and_maintenance$assetid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('6f2f023f-0a4c-4fee-804a-72badd17ab0b', 
'Assets_and_Maintenance.Asset_Equipment_Type', 
'assets_and_maintenance$asset_equipment_type', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'e09f8e79-d374-45da-bd93-5538ec5b0483', 
'assets_and_maintenance$assetid', 
'assets_and_maintenance$equipment_typeid', 
'idx_assets_and_maintenance$asset_equipment_type_assets_and_maintenance$equipment_type_assets_and_maintenance$asset');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_equipment_type_assets_and_maintenance$assetid', 
'6f2f023f-0a4c-4fee-804a-72badd17ab0b', 
'4043ff5e-e8c5-38c9-9503-093b0e71f7fc');
CREATE TABLE "assets_and_maintenance$asset_property" (
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$assetid","rapidlease$propertyid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_property_assets_and_maintenance$assetid" UNIQUE ("assets_and_maintenance$assetid"));
CREATE INDEX "idx_assets_and_maintenance$asset_property_rapidlease$property_assets_and_maintenance$asset" ON "assets_and_maintenance$asset_property" ("rapidlease$propertyid" ASC,"assets_and_maintenance$assetid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('64b97acb-3013-41b8-a3e4-e03a42899501', 
'Assets_and_Maintenance.Asset_Property', 
'assets_and_maintenance$asset_property', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'assets_and_maintenance$assetid', 
'rapidlease$propertyid', 
'idx_assets_and_maintenance$asset_property_rapidlease$property_assets_and_maintenance$asset');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_property_assets_and_maintenance$assetid', 
'64b97acb-3013-41b8-a3e4-e03a42899501', 
'21b30605-b560-30e4-a5f7-1199f5ee0120');
CREATE TABLE "rapidlease$task_comment" (
	"rapidlease$taskid" BIGINT NOT NULL,
	"rapidlease$commentid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$taskid","rapidlease$commentid"),
	CONSTRAINT "uniq_rapidlease$task_comment_rapidlease$taskid" UNIQUE ("rapidlease$taskid"));
CREATE INDEX "idx_rapidlease$task_comment_rapidlease$comment_rapidlease$task" ON "rapidlease$task_comment" ("rapidlease$commentid" ASC,"rapidlease$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e21bc3b4-a9e4-49e7-8abc-6200da0e7dc6', 
'RapidLease.Task_Comment', 
'rapidlease$task_comment', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'5c666220-ff6b-4d79-a56d-47800b5ab245', 
'rapidlease$taskid', 
'rapidlease$commentid', 
'idx_rapidlease$task_comment_rapidlease$comment_rapidlease$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_comment_rapidlease$taskid', 
'e21bc3b4-a9e4-49e7-8abc-6200da0e7dc6', 
'ab7d67f4-5300-3a2f-a9da-0baea1b73129');
CREATE TABLE "rapidcommunication$emails_lease" (
	"rapidcommunication$emailsid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$emailsid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidcommunication$emails_lease_rapidcommunication$emailsid" UNIQUE ("rapidcommunication$emailsid"));
CREATE INDEX "idx_rapidcommunication$emails_lease_rapidlease$lease_rapidcommunication$emails" ON "rapidcommunication$emails_lease" ("rapidlease$leaseid" ASC,"rapidcommunication$emailsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e4555b9b-013f-4a5b-b1a0-3552c9d5a8d7', 
'RapidCommunication.Emails_Lease', 
'rapidcommunication$emails_lease', 
'611749e8-a1ae-4179-84a4-4df3291380c1', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidcommunication$emailsid', 
'rapidlease$leaseid', 
'idx_rapidcommunication$emails_lease_rapidlease$lease_rapidcommunication$emails');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$emails_lease_rapidcommunication$emailsid', 
'e4555b9b-013f-4a5b-b1a0-3552c9d5a8d7', 
'444fbe89-7553-3149-9e6c-5959967519fb');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211012 09:17:02';
