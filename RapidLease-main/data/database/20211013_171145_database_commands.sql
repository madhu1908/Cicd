ALTER TABLE "rapidlease$task_unit" DROP CONSTRAINT "uniq_rapidlease$task_unit_rapidlease$unitid";
ALTER TABLE "assets_and_maintenance$typeofproblem" DROP COLUMN "typeofproblem_id";
ALTER TABLE "assets_and_maintenance$typeofproblem" DROP COLUMN "typeofservice_id";
ALTER TABLE "assets_and_maintenance$typeofproblem" ADD "typeofproblem_id" INT NULL;
ALTER TABLE "assets_and_maintenance$typeofproblem" ADD "typeofservice_id" INT NULL;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '82b07bf2-d563-41ae-9f67-a562211f1271', 
"attribute_name" = 'TypeOfProblem_ID', 
"column_name" = 'typeofproblem_id', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'a167edf4-8f41-44c1-9119-8e99c3544df0';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '82b07bf2-d563-41ae-9f67-a562211f1271', 
"attribute_name" = 'TypeOfService_ID', 
"column_name" = 'typeofservice_id', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '4fc3ca2c-4aa4-454e-ac67-62a90d159500';
ALTER TABLE "financials$bankaccount" ADD "balance" BIGINT NULL;
UPDATE "financials$bankaccount"
 SET "balance" = 0;
ALTER TABLE "financials$bankaccount" ADD "bank_information" VARCHAR_IGNORECASE(2147483647) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('868e7769-90fb-4161-b98e-d2e53e8773d7', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Bank_Information', 
'bank_information', 
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
 VALUES ('458e8ea3-269f-48f8-b226-e54e3301a40f', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Balance', 
'balance', 
4, 
0, 
'0', 
false);
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$task_unit_rapidlease$unitid' AND "column_id" = '159229c4-9616-38a1-b939-d2a545a84845';
CREATE TABLE "assets_and_maintenance$workorder_history_task" (
	"assets_and_maintenance$workorder_historyid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$workorder_historyid","rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$workorder_history_task_rapidlease$taskid" UNIQUE ("rapidlease$taskid"),
	CONSTRAINT "uniq_assets_and_maintenance$workorder_history_task_assets_and_maintenance$workorder_historyid" UNIQUE ("assets_and_maintenance$workorder_historyid"));
CREATE INDEX "idx_assets_and_maintenance$workorder_history_task_rapidlease$task_assets_and_maintenance$workorder_history" ON "assets_and_maintenance$workorder_history_task" ("rapidlease$taskid" ASC,"assets_and_maintenance$workorder_historyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('120f9aac-2dbb-423e-bf9a-078bf20bcb33', 
'Assets_and_Maintenance.WorkOrder_History_Task', 
'assets_and_maintenance$workorder_history_task', 
'e7326229-3dd5-46ee-80f6-4bcfa056bef8', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'assets_and_maintenance$workorder_historyid', 
'rapidlease$taskid', 
'idx_assets_and_maintenance$workorder_history_task_rapidlease$task_assets_and_maintenance$workorder_history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$workorder_history_task_rapidlease$taskid', 
'120f9aac-2dbb-423e-bf9a-078bf20bcb33', 
'c1f9382a-93dd-3585-9df5-7773b8872d5f');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$workorder_history_task_assets_and_maintenance$workorder_historyid', 
'120f9aac-2dbb-423e-bf9a-078bf20bcb33', 
'50ec1169-f229-3748-8772-fe4c1a28dc17');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211013 17:11:45';
