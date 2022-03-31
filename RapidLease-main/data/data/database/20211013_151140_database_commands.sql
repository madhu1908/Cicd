ALTER TABLE "rapidlease$workorder" ADD "schedule_startdate" TIMESTAMP NULL;
ALTER TABLE "rapidlease$workorder" ADD "schedule_enddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('33dbbdda-8455-47cc-83a5-4e1eb57a4a9d', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'Schedule_StartDate', 
'schedule_startdate', 
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
 VALUES ('7b7aed4c-8211-434f-a7aa-900ea19bef4f', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'Schedule_EndDate', 
'schedule_enddate', 
20, 
0, 
'', 
false);
ALTER TABLE "rapidlease$vendor" ADD "category_1" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e84ede7a-079b-4a2a-be7a-72794e1cdaaf', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'Category_1', 
'category_1', 
30, 
200, 
'', 
false);
ALTER TABLE "assets_and_maintenance$quotations" DROP COLUMN "actual_amount";
ALTER TABLE "assets_and_maintenance$quotations" DROP COLUMN "actual_quantity";
ALTER TABLE "assets_and_maintenance$quotations" DROP COLUMN "unit";
ALTER TABLE "assets_and_maintenance$quotations" DROP COLUMN "actual_sellingprice";
ALTER TABLE "assets_and_maintenance$quotations" ADD "service_type" VARCHAR_IGNORECASE(17) NULL;
ALTER TABLE "assets_and_maintenance$quotations" ADD "unit_0f_measure" VARCHAR_IGNORECASE(9) NULL;
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '138e4b74-1151-438a-8e79-8a641335ee5e';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'bdb7059e-df68-4240-b2ec-0af2e85029ff';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'fa24b045-ae3c-49fd-85de-08fb9d5fe751';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
"attribute_name" = 'Unit_0f_Measure', 
"column_name" = 'unit_0f_measure', 
"type" = 40, 
"length" = 9, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '28b5f619-43b3-4f92-9abd-82eac032846f';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('6f21db4d-9d0f-4d07-9d19-bb8cf552bec9', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Service_Type', 
'service_type', 
40, 
17, 
'', 
false);
CREATE TABLE "rapidlease$property_unit" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$property_unit_rapidlease$unitid" UNIQUE ("rapidlease$unitid"),
	CONSTRAINT "uniq_rapidlease$property_unit_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_unit_rapidlease$unit_rapidlease$property" ON "rapidlease$property_unit" ("rapidlease$unitid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b737490b-5f45-4b0a-bf8c-8597772762ba', 
'RapidLease.Property_Unit', 
'rapidlease$property_unit', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$propertyid', 
'rapidlease$unitid', 
'idx_rapidlease$property_unit_rapidlease$unit_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_unit_rapidlease$unitid', 
'b737490b-5f45-4b0a-bf8c-8597772762ba', 
'1306348f-17ac-3c96-b660-a4807375e4a4');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_unit_rapidlease$propertyid', 
'b737490b-5f45-4b0a-bf8c-8597772762ba', 
'c5b30734-fa58-3742-83eb-407d5a928052');
CREATE TABLE "assets_and_maintenance$quotations_vendor" (
	"assets_and_maintenance$quotationsid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$quotationsid","rapidlease$vendorid"),
	CONSTRAINT "uniq_assets_and_maintenance$quotations_vendor_assets_and_maintenance$quotationsid" UNIQUE ("assets_and_maintenance$quotationsid"));
CREATE INDEX "idx_assets_and_maintenance$quotations_vendor_rapidlease$vendor_assets_and_maintenance$quotations" ON "assets_and_maintenance$quotations_vendor" ("rapidlease$vendorid" ASC,"assets_and_maintenance$quotationsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('f5819445-ccaf-401e-a88c-90c80511515e', 
'Assets_and_Maintenance.Quotations_Vendor', 
'assets_and_maintenance$quotations_vendor', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'assets_and_maintenance$quotationsid', 
'rapidlease$vendorid', 
'idx_assets_and_maintenance$quotations_vendor_rapidlease$vendor_assets_and_maintenance$quotations');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$quotations_vendor_assets_and_maintenance$quotationsid', 
'f5819445-ccaf-401e-a88c-90c80511515e', 
'706a32fe-d4cf-341c-86e9-eb8726f740e2');
CREATE TABLE "assets_and_maintenance$typeofwork" (
	"id" BIGINT NOT NULL,
	"typeofwork" VARCHAR_IGNORECASE(200) NULL,
	"typeofwork_id" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('a2247b2a-6f52-49cc-b68e-5797d3892798', 
'Assets_and_Maintenance.TypeOfWork', 
'assets_and_maintenance$typeofwork', 
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
 VALUES ('28d9e6ec-9600-4de1-a10a-5bb57bcb3be3', 
'a2247b2a-6f52-49cc-b68e-5797d3892798', 
'TypeOfWork', 
'typeofwork', 
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
 VALUES ('3d3c3975-b48c-4dbb-9fe0-e6a7e396d836', 
'a2247b2a-6f52-49cc-b68e-5797d3892798', 
'TypeOfWork_ID', 
'typeofwork_id', 
3, 
0, 
'', 
false);
CREATE TABLE "assets_and_maintenance$typeofwork_workorder" (
	"assets_and_maintenance$typeofworkid" BIGINT NOT NULL,
	"rapidlease$workorderid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$typeofworkid","rapidlease$workorderid"),
	CONSTRAINT "uniq_assets_and_maintenance$typeofwork_workorder_assets_and_maintenance$typeofworkid" UNIQUE ("assets_and_maintenance$typeofworkid"));
CREATE INDEX "idx_assets_and_maintenance$typeofwork_workorder_rapidlease$workorder_assets_and_maintenance$typeofwork" ON "assets_and_maintenance$typeofwork_workorder" ("rapidlease$workorderid" ASC,"assets_and_maintenance$typeofworkid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('28da039a-5731-4bd9-8e11-cdca56452194', 
'Assets_and_Maintenance.TypeOfWork_WorkOrder', 
'assets_and_maintenance$typeofwork_workorder', 
'a2247b2a-6f52-49cc-b68e-5797d3892798', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'assets_and_maintenance$typeofworkid', 
'rapidlease$workorderid', 
'idx_assets_and_maintenance$typeofwork_workorder_rapidlease$workorder_assets_and_maintenance$typeofwork');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$typeofwork_workorder_assets_and_maintenance$typeofworkid', 
'28da039a-5731-4bd9-8e11-cdca56452194', 
'61ea8e00-9ce7-31f1-8d47-19b1ca695664');
CREATE TABLE "assets_and_maintenance$typeofproblem" (
	"id" BIGINT NOT NULL,
	"typeofproblem_id" VARCHAR_IGNORECASE(200) NULL,
	"isdefault" BOOLEAN NULL,
	"typeofproblem" VARCHAR_IGNORECASE(200) NULL,
	"typeofservice_id" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('82b07bf2-d563-41ae-9f67-a562211f1271', 
'Assets_and_Maintenance.TypeOfProblem', 
'assets_and_maintenance$typeofproblem', 
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
 VALUES ('a167edf4-8f41-44c1-9119-8e99c3544df0', 
'82b07bf2-d563-41ae-9f67-a562211f1271', 
'TypeOfProblem_ID', 
'typeofproblem_id', 
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
 VALUES ('3bf76390-5569-4d7c-a35e-5f12e7573977', 
'82b07bf2-d563-41ae-9f67-a562211f1271', 
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
 VALUES ('5e06fcb9-a2b2-4c7b-8b1b-dc676e668a92', 
'82b07bf2-d563-41ae-9f67-a562211f1271', 
'TypeOfProblem', 
'typeofproblem', 
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
 VALUES ('4fc3ca2c-4aa4-454e-ac67-62a90d159500', 
'82b07bf2-d563-41ae-9f67-a562211f1271', 
'TypeOfService_ID', 
'typeofservice_id', 
30, 
200, 
'', 
false);
CREATE TABLE "assets_and_maintenance$typeofproblem_typeofservice" (
	"assets_and_maintenance$typeofproblemid" BIGINT NOT NULL,
	"assets_and_maintenance$typeofserviceid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$typeofproblemid","assets_and_maintenance$typeofserviceid"),
	CONSTRAINT "uniq_assets_and_maintenance$typeofproblem_typeofservice_assets_and_maintenance$typeofproblemid" UNIQUE ("assets_and_maintenance$typeofproblemid"));
CREATE INDEX "idx_assets_and_maintenance$typeofproblem_typeofservice_assets_and_maintenance$typeofservice_assets_and_maintenance$typeofproblem" ON "assets_and_maintenance$typeofproblem_typeofservice" ("assets_and_maintenance$typeofserviceid" ASC,"assets_and_maintenance$typeofproblemid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('9e96a5b0-9f06-4ee0-8bba-2564fab547a1', 
'Assets_and_Maintenance.TypeOfProblem_TypeOfService', 
'assets_and_maintenance$typeofproblem_typeofservice', 
'82b07bf2-d563-41ae-9f67-a562211f1271', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
'assets_and_maintenance$typeofproblemid', 
'assets_and_maintenance$typeofserviceid', 
'idx_assets_and_maintenance$typeofproblem_typeofservice_assets_and_maintenance$typeofservice_assets_and_maintenance$typeofproblem');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$typeofproblem_typeofservice_assets_and_maintenance$typeofproblemid', 
'9e96a5b0-9f06-4ee0-8bba-2564fab547a1', 
'5050c731-c1cc-341c-9a14-bbeafb734f16');
CREATE TABLE "rapidlease$workorder_asset" (
	"rapidlease$workorderid" BIGINT NOT NULL,
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$workorderid","assets_and_maintenance$assetid"),
	CONSTRAINT "uniq_rapidlease$workorder_asset_rapidlease$workorderid" UNIQUE ("rapidlease$workorderid"));
CREATE INDEX "idx_rapidlease$workorder_asset_assets_and_maintenance$asset_rapidlease$workorder" ON "rapidlease$workorder_asset" ("assets_and_maintenance$assetid" ASC,"rapidlease$workorderid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('860e1197-58ac-4071-8e32-4750f009f65b', 
'RapidLease.WorkOrder_Asset', 
'rapidlease$workorder_asset', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'rapidlease$workorderid', 
'assets_and_maintenance$assetid', 
'idx_rapidlease$workorder_asset_assets_and_maintenance$asset_rapidlease$workorder');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$workorder_asset_rapidlease$workorderid', 
'860e1197-58ac-4071-8e32-4750f009f65b', 
'9c2d1f20-7070-3fe1-a206-6aa93892afbd');
CREATE TABLE "assets_and_maintenance$typeofservice" (
	"id" BIGINT NOT NULL,
	"isdefault" BOOLEAN NULL,
	"typeofservice_id" INT NULL,
	"typeofwork_id" INT NULL,
	"typeofservice" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('e70446af-b947-4eed-9ba2-47cfbd723651', 
'Assets_and_Maintenance.TypeOfService', 
'assets_and_maintenance$typeofservice', 
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
 VALUES ('746df31a-8e95-47bc-bf18-572cb09b7d12', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
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
 VALUES ('2a794bd5-af23-48ca-9f57-f535089ae51a', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
'TypeOfService_ID', 
'typeofservice_id', 
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
 VALUES ('0fae1948-10f8-48c8-9dbf-e6190c44efdb', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
'TypeOfWork_ID', 
'typeofwork_id', 
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
 VALUES ('3bd27c4a-a441-4c3f-bf08-6fa6c4bb18bb', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
'TypeOfService', 
'typeofservice', 
30, 
200, 
'', 
false);
CREATE TABLE "assets_and_maintenance$typeofservice_typeofwork" (
	"assets_and_maintenance$typeofserviceid" BIGINT NOT NULL,
	"assets_and_maintenance$typeofworkid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$typeofserviceid","assets_and_maintenance$typeofworkid"),
	CONSTRAINT "uniq_assets_and_maintenance$typeofservice_typeofwork_assets_and_maintenance$typeofserviceid" UNIQUE ("assets_and_maintenance$typeofserviceid"));
CREATE INDEX "idx_assets_and_maintenance$typeofservice_typeofwork_assets_and_maintenance$typeofwork_assets_and_maintenance$typeofservice" ON "assets_and_maintenance$typeofservice_typeofwork" ("assets_and_maintenance$typeofworkid" ASC,"assets_and_maintenance$typeofserviceid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('6dad2564-ea13-4b43-8e50-434b21ca5ffc', 
'Assets_and_Maintenance.TypeOfService_TypeOfWork', 
'assets_and_maintenance$typeofservice_typeofwork', 
'e70446af-b947-4eed-9ba2-47cfbd723651', 
'a2247b2a-6f52-49cc-b68e-5797d3892798', 
'assets_and_maintenance$typeofserviceid', 
'assets_and_maintenance$typeofworkid', 
'idx_assets_and_maintenance$typeofservice_typeofwork_assets_and_maintenance$typeofwork_assets_and_maintenance$typeofservice');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$typeofservice_typeofwork_assets_and_maintenance$typeofserviceid', 
'6dad2564-ea13-4b43-8e50-434b21ca5ffc', 
'513a8863-4e40-3be6-9d22-5f1da9b5424b');
CREATE TABLE "rapidlease$unit_lease" (
	"rapidlease$unitid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$unitid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$unit_lease_rapidlease$leaseid" UNIQUE ("rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$unit_lease_rapidlease$unitid" UNIQUE ("rapidlease$unitid"));
CREATE INDEX "idx_rapidlease$unit_lease_rapidlease$lease_rapidlease$unit" ON "rapidlease$unit_lease" ("rapidlease$leaseid" ASC,"rapidlease$unitid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('dcb5675b-d1a0-4bd2-842b-2712379e6f00', 
'RapidLease.Unit_Lease', 
'rapidlease$unit_lease', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$unitid', 
'rapidlease$leaseid', 
'idx_rapidlease$unit_lease_rapidlease$lease_rapidlease$unit');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$unit_lease_rapidlease$leaseid', 
'dcb5675b-d1a0-4bd2-842b-2712379e6f00', 
'f82b76ab-0010-3e66-a6ba-85f342918857');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$unit_lease_rapidlease$unitid', 
'dcb5675b-d1a0-4bd2-842b-2712379e6f00', 
'51f54442-a8a3-35b3-94e9-bb49a661105b');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211013 15:11:40';
