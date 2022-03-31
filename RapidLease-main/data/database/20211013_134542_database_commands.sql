DROP INDEX "idx_rapidlease$applicant_checklist_2_rapidlease$checklist_rapidlease$applicant";
ALTER TABLE "rapidlease$applicant_checklist_2" RENAME TO "e4cb021997b3498d8b107bd48bbcc716";
ALTER TABLE "rapidcommunication$vendorportal" RENAME TO "76b0fc25ad2144889428db26e08f03dd";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'e687b2e9-168c-4ba4-8fc5-a69de086acd2';
ALTER TABLE "rapidlease$tenant" ADD "accountstatus" VARCHAR_IGNORECASE(30) NULL;
UPDATE "rapidlease$tenant"
 SET "accountstatus" = 'Account_created__no_email_sent';
ALTER TABLE "rapidlease$tenant" ADD "vendorportalwebsite" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$tenant"
 SET "vendorportalwebsite" = 'http://localhost:8082/login.html?profile=Responsive';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('7c1ce758-52b5-4a33-9275-9a26274891b7', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'AccountStatus', 
'accountstatus', 
40, 
30, 
'Account_created__no_email_sent', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('855d3476-6953-4ec8-a4c3-6ef683509576', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'VendorPortalWebsite', 
'vendorportalwebsite', 
30, 
200, 
'http://localhost:8082/login.html?profile=Responsive', 
false);
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'a145d2f2-6a66-45b3-bce5-cf1453658d5d';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'a145d2f2-6a66-45b3-bce5-cf1453658d5d';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'a145d2f2-6a66-45b3-bce5-cf1453658d5d');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'a145d2f2-6a66-45b3-bce5-cf1453658d5d';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'a145d2f2-6a66-45b3-bce5-cf1453658d5d';
ALTER TABLE "rapidlease$task" ADD "isvisible_quotations" BOOLEAN NULL;
UPDATE "rapidlease$task"
 SET "isvisible_quotations" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c3cc0d1f-a0af-4bd6-998e-08c002913874', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'IsVisible_Quotations', 
'isvisible_quotations', 
10, 
0, 
'false', 
false);
ALTER TABLE "assets_and_maintenance$quotations" ADD "isvisible" BOOLEAN NULL;
UPDATE "assets_and_maintenance$quotations"
 SET "isvisible" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('08927f01-ab1a-4d08-8854-4d4522c6097f', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'IsVisible', 
'isvisible', 
10, 
0, 
'false', 
false);
ALTER TABLE "assets_and_maintenance$quotations_task" ADD CONSTRAINT "uniq_assets_and_maintenance$quotations_task_rapidlease$taskid" UNIQUE ("rapidlease$taskid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$quotations_task_rapidlease$taskid', 
'4e901017-8372-4b42-acd5-ea284b5baab6', 
'375e0e9d-72a4-3f27-b1b7-2e339d7b1c12');
ALTER TABLE "assets_and_maintenance$asset" ADD "equipment_status" VARCHAR_IGNORECASE(8) NULL;
ALTER TABLE "assets_and_maintenance$asset" ALTER COLUMN "asset_number" SET DATA TYPE BIGINT;
CREATE SEQUENCE "assets_and_maintenance$asset_asset_number_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('10c74df1-39ea-4d4b-91a0-c0516d9d745e', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'Equipment_status', 
'equipment_status', 
40, 
8, 
'', 
false);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('81b92af8-d35a-41af-872d-a79d57453247', 
'assets_and_maintenance$asset_asset_number_mxseq', 
1, 
0);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'fafb5819-5604-4f08-b1d9-e576a1be1523', 
"attribute_name" = 'Asset_Number', 
"column_name" = 'asset_number', 
"type" = 0, 
"length" = 0, 
"default_value" = '1', 
"is_auto_number" = true
 WHERE "id" = '81b92af8-d35a-41af-872d-a79d57453247';
CREATE TABLE "assets_and_maintenance$checklist" (
	"id" BIGINT NOT NULL,
	"utilities" VARCHAR_IGNORECASE(200) NULL,
	"checklistid" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('bdcb816e-a613-4843-b000-c7c43d456a76', 
'Assets_and_Maintenance.Checklist', 
'assets_and_maintenance$checklist', 
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
 VALUES ('56b2d647-5474-416b-b07f-76e7b78fdf9c', 
'bdcb816e-a613-4843-b000-c7c43d456a76', 
'Utilities', 
'utilities', 
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
 VALUES ('94da92a2-2422-4ab4-802b-999160f44daf', 
'bdcb816e-a613-4843-b000-c7c43d456a76', 
'ChecklistID', 
'checklistid', 
30, 
200, 
'', 
false);
CREATE TABLE "assets_and_maintenance$checklist_quotations" (
	"assets_and_maintenance$checklistid" BIGINT NOT NULL,
	"assets_and_maintenance$quotationsid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$checklistid","assets_and_maintenance$quotationsid"),
	CONSTRAINT "uniq_assets_and_maintenance$checklist_quotations_assets_and_maintenance$quotationsid" UNIQUE ("assets_and_maintenance$quotationsid"),
	CONSTRAINT "uniq_assets_and_maintenance$checklist_quotations_assets_and_maintenance$checklistid" UNIQUE ("assets_and_maintenance$checklistid"));
CREATE INDEX "idx_assets_and_maintenance$checklist_quotations_assets_and_maintenance$quotations_assets_and_maintenance$checklist" ON "assets_and_maintenance$checklist_quotations" ("assets_and_maintenance$quotationsid" ASC,"assets_and_maintenance$checklistid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8d250cb2-19dc-4f41-bcfa-c856ee715b5f', 
'Assets_and_Maintenance.Checklist_Quotations', 
'assets_and_maintenance$checklist_quotations', 
'bdcb816e-a613-4843-b000-c7c43d456a76', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'assets_and_maintenance$checklistid', 
'assets_and_maintenance$quotationsid', 
'idx_assets_and_maintenance$checklist_quotations_assets_and_maintenance$quotations_assets_and_maintenance$checklist');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$checklist_quotations_assets_and_maintenance$quotationsid', 
'8d250cb2-19dc-4f41-bcfa-c856ee715b5f', 
'ddb7fa7c-fe6c-346b-9ce6-59b4925ddf6a');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$checklist_quotations_assets_and_maintenance$checklistid', 
'8d250cb2-19dc-4f41-bcfa-c856ee715b5f', 
'7882a8c1-244b-34c1-b502-eebd78092b00');
CREATE TABLE "assets_and_maintenance$repair_cost_maintenance_history" (
	"assets_and_maintenance$repair_costid" BIGINT NOT NULL,
	"assets_and_maintenance$maintenance_historyid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$repair_costid","assets_and_maintenance$maintenance_historyid"),
	CONSTRAINT "uniq_assets_and_maintenance$repair_cost_maintenance_history_assets_and_maintenance$repair_costid" UNIQUE ("assets_and_maintenance$repair_costid"));
CREATE INDEX "idx_assets_and_maintenance$repair_cost_maintenance_history" ON "assets_and_maintenance$repair_cost_maintenance_history" ("assets_and_maintenance$maintenance_historyid" ASC,"assets_and_maintenance$repair_costid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('339ee436-0190-4893-8de3-6435767e6e9a', 
'Assets_and_Maintenance.Repair_Cost_Maintenance_History', 
'assets_and_maintenance$repair_cost_maintenance_history', 
'8adbd30e-2104-46cb-9eb6-c7a1eaa8479b', 
'4d02c0d3-f29b-4ae2-b1dc-686901e11fd0', 
'assets_and_maintenance$repair_costid', 
'assets_and_maintenance$maintenance_historyid', 
'idx_assets_and_maintenance$repair_cost_maintenance_history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$repair_cost_maintenance_history_assets_and_maintenance$repair_costid', 
'339ee436-0190-4893-8de3-6435767e6e9a', 
'afb242b9-96f8-385b-adf5-c30448c75bff');
CREATE TABLE "assets_and_maintenance$asset_task_2" (
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$assetid","rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_task_2_assets_and_maintenance$assetid" UNIQUE ("assets_and_maintenance$assetid"));
CREATE INDEX "idx_assets_and_maintenance$asset_task_2_rapidlease$task_assets_and_maintenance$asset" ON "assets_and_maintenance$asset_task_2" ("rapidlease$taskid" ASC,"assets_and_maintenance$assetid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('de85d4be-71fa-4f09-b0dc-60e06d0ec4b8', 
'Assets_and_Maintenance.Asset_Task_2', 
'assets_and_maintenance$asset_task_2', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'assets_and_maintenance$assetid', 
'rapidlease$taskid', 
'idx_assets_and_maintenance$asset_task_2_rapidlease$task_assets_and_maintenance$asset');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_task_2_assets_and_maintenance$assetid', 
'de85d4be-71fa-4f09-b0dc-60e06d0ec4b8', 
'6e864bd9-0c19-3dc7-af01-dc0787032696');
CREATE TABLE "assets_and_maintenance$asset_task" (
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$assetid","rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_task_rapidlease$taskid" UNIQUE ("rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_task_assets_and_maintenance$assetid" UNIQUE ("assets_and_maintenance$assetid"));
CREATE INDEX "idx_assets_and_maintenance$asset_task_rapidlease$task_assets_and_maintenance$asset" ON "assets_and_maintenance$asset_task" ("rapidlease$taskid" ASC,"assets_and_maintenance$assetid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('69f2a617-d317-49eb-addd-ff15fefe53d5', 
'Assets_and_Maintenance.Asset_Task', 
'assets_and_maintenance$asset_task', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'assets_and_maintenance$assetid', 
'rapidlease$taskid', 
'idx_assets_and_maintenance$asset_task_rapidlease$task_assets_and_maintenance$asset');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_task_rapidlease$taskid', 
'69f2a617-d317-49eb-addd-ff15fefe53d5', 
'3634dda1-9c40-3e58-9241-90f662afe851');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_task_assets_and_maintenance$assetid', 
'69f2a617-d317-49eb-addd-ff15fefe53d5', 
'b6658c6c-15f9-30fb-b8b3-f81aafc6fd5a');
CREATE TABLE "rapidlease$task_checklist" (
	"rapidlease$taskid" BIGINT NOT NULL,
	"assets_and_maintenance$checklistid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$taskid","assets_and_maintenance$checklistid"),
	CONSTRAINT "uniq_rapidlease$task_checklist_assets_and_maintenance$checklistid" UNIQUE ("assets_and_maintenance$checklistid"),
	CONSTRAINT "uniq_rapidlease$task_checklist_rapidlease$taskid" UNIQUE ("rapidlease$taskid"));
CREATE INDEX "idx_rapidlease$task_checklist_assets_and_maintenance$checklist_rapidlease$task" ON "rapidlease$task_checklist" ("assets_and_maintenance$checklistid" ASC,"rapidlease$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('498ee34c-9a04-455d-b4ef-e670da34fe88', 
'RapidLease.Task_Checklist', 
'rapidlease$task_checklist', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'bdcb816e-a613-4843-b000-c7c43d456a76', 
'rapidlease$taskid', 
'assets_and_maintenance$checklistid', 
'idx_rapidlease$task_checklist_assets_and_maintenance$checklist_rapidlease$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_checklist_assets_and_maintenance$checklistid', 
'498ee34c-9a04-455d-b4ef-e670da34fe88', 
'47b69df6-bf45-398b-ae13-5282ab9afdfc');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_checklist_rapidlease$taskid', 
'498ee34c-9a04-455d-b4ef-e670da34fe88', 
'dffec46d-f946-3fce-94fd-1b6ab46e8f9e');
CREATE TABLE "dynamicform$filedata" (
	"id" BIGINT NOT NULL,
	"fileuploaded" BOOLEAN NULL,
	"filename" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('9770ff05-94ff-4bd3-81aa-83133f980c41', 
'DynamicForm.FileData', 
'dynamicform$filedata', 
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
 VALUES ('7d19590b-bfed-4f5c-a440-d76202e7a897', 
'9770ff05-94ff-4bd3-81aa-83133f980c41', 
'FIleUploaded', 
'fileuploaded', 
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
 VALUES ('5a3cf307-7248-4109-a985-c5c70c6953a5', 
'9770ff05-94ff-4bd3-81aa-83133f980c41', 
'FileName', 
'filename', 
30, 
200, 
'', 
false);
CREATE TABLE "dynamicform$file" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('826fec6f-ddd3-469c-aecf-d6a6f3ecfca3', 
'DynamicForm.File', 
'dynamicform$file', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
false, 
false);
CREATE TABLE "dynamicform$file_filedata" (
	"dynamicform$fileid" BIGINT NOT NULL,
	"dynamicform$filedataid" BIGINT NOT NULL,
	PRIMARY KEY("dynamicform$fileid","dynamicform$filedataid"),
	CONSTRAINT "uniq_dynamicform$file_filedata_dynamicform$filedataid" UNIQUE ("dynamicform$filedataid"),
	CONSTRAINT "uniq_dynamicform$file_filedata_dynamicform$fileid" UNIQUE ("dynamicform$fileid"));
CREATE INDEX "idx_dynamicform$file_filedata_dynamicform$filedata_dynamicform$file" ON "dynamicform$file_filedata" ("dynamicform$filedataid" ASC,"dynamicform$fileid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4b26f4ef-fec1-44ae-b148-59c459b5a9a1', 
'DynamicForm.File_FileData', 
'dynamicform$file_filedata', 
'826fec6f-ddd3-469c-aecf-d6a6f3ecfca3', 
'9770ff05-94ff-4bd3-81aa-83133f980c41', 
'dynamicform$fileid', 
'dynamicform$filedataid', 
'idx_dynamicform$file_filedata_dynamicform$filedata_dynamicform$file');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_dynamicform$file_filedata_dynamicform$filedataid', 
'4b26f4ef-fec1-44ae-b148-59c459b5a9a1', 
'ad8cdde5-3061-308a-9dae-dbef6ae1b58b');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_dynamicform$file_filedata_dynamicform$fileid', 
'4b26f4ef-fec1-44ae-b148-59c459b5a9a1', 
'843e7355-5e48-3e3e-8ba5-c43881dcfa53');
DROP TABLE "e4cb021997b3498d8b107bd48bbcc716";
DROP TABLE "76b0fc25ad2144889428db26e08f03dd";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211013 13:45:42';
