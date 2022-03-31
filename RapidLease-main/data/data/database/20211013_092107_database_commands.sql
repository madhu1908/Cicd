ALTER TABLE "rapidlease$lease" ADD "lease_count" INT NULL;
UPDATE "rapidlease$lease"
 SET "lease_count" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c5bade91-e362-462c-b78e-41cfc603b2f5', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'Lease_Count', 
'lease_count', 
3, 
0, 
'0', 
false);
ALTER TABLE "rapidlease$applicant" ALTER COLUMN "zipcode" RENAME TO "a1c346bbe97b4c8295c8ecb6c9a6fb6a";
ALTER TABLE "rapidlease$applicant" ADD "zipcode" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$applicant"
 SET "zipcode" = CAST("a1c346bbe97b4c8295c8ecb6c9a6fb6a" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$applicant" DROP COLUMN "a1c346bbe97b4c8295c8ecb6c9a6fb6a";
ALTER TABLE "rapidlease$applicant" ALTER COLUMN "applicant_phone" RENAME TO "9fad457809864415bb164cc1f5901a06";
ALTER TABLE "rapidlease$applicant" ADD "applicant_phone" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$applicant"
 SET "applicant_phone" = CAST("9fad457809864415bb164cc1f5901a06" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$applicant" DROP COLUMN "9fad457809864415bb164cc1f5901a06";
ALTER TABLE "rapidlease$applicant" ADD "curr_value" INT NULL;
UPDATE "rapidlease$applicant"
 SET "curr_value" = 0;
ALTER TABLE "rapidlease$applicant" ADD "min_value" INT NULL;
UPDATE "rapidlease$applicant"
 SET "min_value" = 0;
ALTER TABLE "rapidlease$applicant" ADD "max_value" INT NULL;
UPDATE "rapidlease$applicant"
 SET "max_value" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('0a09aa10-0703-4d44-9221-4915a2af19be', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'Curr_value', 
'curr_value', 
3, 
0, 
'0', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '48d456c7-32a0-4fea-9f50-481cae2e5762', 
"attribute_name" = 'Applicant_Phone', 
"column_name" = 'applicant_phone', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '70ffe262-c170-41c3-9797-4f40c1d9cd2d';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '48d456c7-32a0-4fea-9f50-481cae2e5762', 
"attribute_name" = 'ZipCode', 
"column_name" = 'zipcode', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '3daba632-72b1-47df-8eca-6b639849f331';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('f6308025-6238-45ba-a495-4cd99b2e6953', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'min_value', 
'min_value', 
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
 VALUES ('48919e49-30c9-4379-9ddb-42b9d6d4bc23', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'max_value', 
'max_value', 
3, 
0, 
'0', 
false);
ALTER TABLE "rapidlease$rental" ALTER COLUMN "zipcode" RENAME TO "3d22c4b2ecca421c96b0d7f0a46bad45";
ALTER TABLE "rapidlease$rental" ADD "zipcode" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$rental"
 SET "zipcode" = CAST("3d22c4b2ecca421c96b0d7f0a46bad45" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$rental" DROP COLUMN "3d22c4b2ecca421c96b0d7f0a46bad45";
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '54532636-6ef5-4ee7-8dc2-d12c98f9f103', 
"attribute_name" = 'ZipCode', 
"column_name" = 'zipcode', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '6c33c23d-2deb-4a23-9b72-5f05fb467c79';
ALTER TABLE "rapidcommunication$announcement" ADD "body" VARCHAR_IGNORECASE(2147483647) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('875790ca-de73-4479-8e33-2494201c6150', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Body', 
'body', 
30, 
0, 
'', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'fafb5819-5604-4f08-b1d9-e576a1be1523', 
"attribute_name" = 'Is_Physical_Equipment', 
"column_name" = 'is_physical_equipment', 
"type" = 10, 
"length" = 0, 
"default_value" = 'false', 
"is_auto_number" = false
 WHERE "id" = '62364ff7-ed0f-49c5-a8ed-d0569664746d';
CREATE TABLE "dynamicform$boolean_" (
	"id" BIGINT NOT NULL,
	"value" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('fa9499f0-42af-4872-942a-ed08511e5502', 
'DynamicForm.Boolean_', 
'dynamicform$boolean_', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
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
 VALUES ('b0964f68-cb01-44db-8f1b-d297afb4e7f1', 
'fa9499f0-42af-4872-942a-ed08511e5502', 
'Value', 
'value', 
10, 
0, 
'false', 
false);
CREATE TABLE "dynamicform$multilinestring" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(2147483647) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('c6043bed-9891-44c0-8a93-dd821618e547', 
'DynamicForm.MultiLineString', 
'dynamicform$multilinestring', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
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
 VALUES ('3049494d-fd32-4e7f-9803-14f1b68f20ea', 
'c6043bed-9891-44c0-8a93-dd821618e547', 
'Value', 
'value', 
30, 
0, 
'', 
false);
CREATE TABLE "dynamicform$singlelinestring" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('41c391d8-24a4-471e-a535-c5dadd1928a8', 
'DynamicForm.SingleLineString', 
'dynamicform$singlelinestring', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
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
 VALUES ('0c7515e1-505b-403e-ab8f-bcdb49852127', 
'41c391d8-24a4-471e-a535-c5dadd1928a8', 
'Value', 
'value', 
30, 
200, 
'', 
false);
CREATE TABLE "dynamicform$section" (
	"id" BIGINT NOT NULL,
	"elementtype" VARCHAR_IGNORECASE(16) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('b4bdaf6b-62db-4dd6-9b93-f5d1c8951457', 
'DynamicForm.Section', 
'dynamicform$section', 
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
 VALUES ('705a4339-42d7-4066-9ad0-adaadeb521d6', 
'b4bdaf6b-62db-4dd6-9b93-f5d1c8951457', 
'ElementType', 
'elementtype', 
40, 
16, 
'', 
false);
CREATE TABLE "dynamicform$section_form" (
	"dynamicform$sectionid" BIGINT NOT NULL,
	"dynamicform$formid" BIGINT NOT NULL,
	PRIMARY KEY("dynamicform$sectionid","dynamicform$formid"),
	CONSTRAINT "uniq_dynamicform$section_form_dynamicform$sectionid" UNIQUE ("dynamicform$sectionid"));
CREATE INDEX "idx_dynamicform$section_form_dynamicform$form_dynamicform$section" ON "dynamicform$section_form" ("dynamicform$formid" ASC,"dynamicform$sectionid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('0ce0402a-85e7-48da-8df0-9f23d4c6a1f2', 
'DynamicForm.Section_Form', 
'dynamicform$section_form', 
'b4bdaf6b-62db-4dd6-9b93-f5d1c8951457', 
'eacb69b3-d260-4a4a-b3e6-c94a9f885ed5', 
'dynamicform$sectionid', 
'dynamicform$formid', 
'idx_dynamicform$section_form_dynamicform$form_dynamicform$section');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_dynamicform$section_form_dynamicform$sectionid', 
'0ce0402a-85e7-48da-8df0-9f23d4c6a1f2', 
'02f6ee01-de3a-32cb-ad9e-0fa9a97947da');
CREATE TABLE "rapidlease$dont_use" (
	"rapidlease$tenantid" BIGINT NOT NULL,
	"rapidlease$applicantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$tenantid","rapidlease$applicantid"),
	CONSTRAINT "uniq_rapidlease$dont_use_rapidlease$applicantid" UNIQUE ("rapidlease$applicantid"),
	CONSTRAINT "uniq_rapidlease$dont_use_rapidlease$tenantid" UNIQUE ("rapidlease$tenantid"));
CREATE INDEX "idx_rapidlease$dont_use_rapidlease$applicant_rapidlease$tenant" ON "rapidlease$dont_use" ("rapidlease$applicantid" ASC,"rapidlease$tenantid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('254c6532-4728-4d23-9136-023bbd5af02e', 
'RapidLease.Dont_Use', 
'rapidlease$dont_use', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'rapidlease$tenantid', 
'rapidlease$applicantid', 
'idx_rapidlease$dont_use_rapidlease$applicant_rapidlease$tenant');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$dont_use_rapidlease$applicantid', 
'254c6532-4728-4d23-9136-023bbd5af02e', 
'8793c355-da4d-3106-8436-dd4ca357bc92');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$dont_use_rapidlease$tenantid', 
'254c6532-4728-4d23-9136-023bbd5af02e', 
'33ea28e4-0b57-3d98-b25f-d97f1591a022');
CREATE TABLE "rapidlease$cosigner_run" (
	"id" BIGINT NOT NULL,
	"cosigner_email" VARCHAR_IGNORECASE(200) NULL,
	"cosigner_lastname" VARCHAR_IGNORECASE(200) NULL,
	"fee" DECIMAL(28, 8) NULL,
	"cosigner_firstname" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('d93a7575-cb84-4a8d-8747-010e814327f4', 
'RapidLease.cosigner_Run', 
'rapidlease$cosigner_run', 
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
 VALUES ('7ae8a8e4-8165-4384-aa81-b11da3181d4a', 
'd93a7575-cb84-4a8d-8747-010e814327f4', 
'Cosigner_Email', 
'cosigner_email', 
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
 VALUES ('7b33735d-2458-4527-acba-39138c73928a', 
'd93a7575-cb84-4a8d-8747-010e814327f4', 
'Cosigner_LastName', 
'cosigner_lastname', 
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
 VALUES ('1e8b656b-9aa5-406a-933a-814f44cc99b6', 
'd93a7575-cb84-4a8d-8747-010e814327f4', 
'Fee', 
'fee', 
5, 
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
 VALUES ('44fb66b4-51ef-4210-8e47-6be0b4f7a9d0', 
'd93a7575-cb84-4a8d-8747-010e814327f4', 
'Cosigner_FirstName', 
'cosigner_firstname', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidlease$cosigner_run_runcredit" (
	"rapidlease$cosigner_runid" BIGINT NOT NULL,
	"rapidlease$runcreditid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$cosigner_runid","rapidlease$runcreditid"),
	CONSTRAINT "uniq_rapidlease$cosigner_run_runcredit_rapidlease$cosigner_runid" UNIQUE ("rapidlease$cosigner_runid"));
CREATE INDEX "idx_rapidlease$cosigner_run_runcredit_rapidlease$runcredit_rapidlease$cosigner_run" ON "rapidlease$cosigner_run_runcredit" ("rapidlease$runcreditid" ASC,"rapidlease$cosigner_runid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('49953009-07e3-4f3f-9843-2af117bed25b', 
'RapidLease.cosigner_Run_RunCredit', 
'rapidlease$cosigner_run_runcredit', 
'd93a7575-cb84-4a8d-8747-010e814327f4', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'rapidlease$cosigner_runid', 
'rapidlease$runcreditid', 
'idx_rapidlease$cosigner_run_runcredit_rapidlease$runcredit_rapidlease$cosigner_run');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$cosigner_run_runcredit_rapidlease$cosigner_runid', 
'49953009-07e3-4f3f-9843-2af117bed25b', 
'b8535316-6615-30aa-b982-9fa0b324848d');
CREATE TABLE "dynamicform$dateandtime" (
	"id" BIGINT NOT NULL,
	"value" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('c634fbaf-6653-4e96-908b-e7e5f04f6c7d', 
'DynamicForm.DateAndTime', 
'dynamicform$dateandtime', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
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
 VALUES ('f894af85-2b83-44b3-b5b0-8562501bd3da', 
'c634fbaf-6653-4e96-908b-e7e5f04f6c7d', 
'Value', 
'value', 
20, 
0, 
'', 
false);
CREATE TABLE "dynamicform$number" (
	"id" BIGINT NOT NULL,
	"value" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('29acaefc-5b0b-47c0-8026-109eaaaa1255', 
'DynamicForm.Number', 
'dynamicform$number', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
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
 VALUES ('3a3f3b68-7fab-4cb7-bcbe-0800e58d5c96', 
'29acaefc-5b0b-47c0-8026-109eaaaa1255', 
'Value', 
'value', 
30, 
200, 
'', 
false);
CREATE TABLE "dynamicform$form" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('eacb69b3-d260-4a4a-b3e6-c94a9f885ed5', 
'DynamicForm.Form', 
'dynamicform$form', 
false, 
false);
CREATE TABLE "rapidlease$runcredit" (
	"id" BIGINT NOT NULL,
	"total_fee" DECIMAL(28, 8) NULL,
	"deposit_amount" DECIMAL(28, 8) NULL,
	"lease_terms" INT NULL,
	"rent" DECIMAL(28, 8) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'RapidLease.RunCredit', 
'rapidlease$runcredit', 
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
 VALUES ('14ca4465-1ecb-41a7-a8d2-780d2d090e39', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'Total_Fee', 
'total_fee', 
5, 
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
 VALUES ('c1c029b6-5be7-46b0-8256-ce06c0617960', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'Deposit_Amount', 
'deposit_amount', 
5, 
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
 VALUES ('5b266f9b-ec33-4202-bf5d-5f25d73083ed', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'lease_terms', 
'lease_terms', 
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
 VALUES ('dcd94b4c-2258-4cb1-8a14-f0c39cecd058', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'Rent', 
'rent', 
5, 
0, 
'0', 
false);
CREATE TABLE "rapidlease$runcredit_property" (
	"rapidlease$runcreditid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$runcreditid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$runcredit_property_rapidlease$runcreditid" UNIQUE ("rapidlease$runcreditid"));
CREATE INDEX "idx_rapidlease$runcredit_property_rapidlease$property_rapidlease$runcredit" ON "rapidlease$runcredit_property" ("rapidlease$propertyid" ASC,"rapidlease$runcreditid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3a96e336-2ecf-4bc7-99d6-ef8dffed0dc2', 
'RapidLease.RunCredit_Property', 
'rapidlease$runcredit_property', 
'bc7ee01d-ddaf-41f1-a931-4de1b17abfad', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$runcreditid', 
'rapidlease$propertyid', 
'idx_rapidlease$runcredit_property_rapidlease$property_rapidlease$runcredit');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$runcredit_property_rapidlease$runcreditid', 
'3a96e336-2ecf-4bc7-99d6-ef8dffed0dc2', 
'2deeba33-74e7-3364-a947-e2809a6b79df');
CREATE TABLE "assets_and_maintenance$asset_unit" (
	"assets_and_maintenance$assetid" BIGINT NOT NULL,
	"rapidlease$unitid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$assetid","rapidlease$unitid"),
	CONSTRAINT "uniq_assets_and_maintenance$asset_unit_assets_and_maintenance$assetid" UNIQUE ("assets_and_maintenance$assetid"));
CREATE INDEX "idx_assets_and_maintenance$asset_unit_rapidlease$unit_assets_and_maintenance$asset" ON "assets_and_maintenance$asset_unit" ("rapidlease$unitid" ASC,"assets_and_maintenance$assetid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('bc9903fc-b8c1-4b27-9d93-1a97f14241e9', 
'Assets_and_Maintenance.Asset_Unit', 
'assets_and_maintenance$asset_unit', 
'fafb5819-5604-4f08-b1d9-e576a1be1523', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'assets_and_maintenance$assetid', 
'rapidlease$unitid', 
'idx_assets_and_maintenance$asset_unit_rapidlease$unit_assets_and_maintenance$asset');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$asset_unit_assets_and_maintenance$assetid', 
'bc9903fc-b8c1-4b27-9d93-1a97f14241e9', 
'a40eb4d3-c2a5-3858-be55-0700fd03f064');
CREATE TABLE "dynamicform$element" (
	"id" BIGINT NOT NULL,
	"nameofattribute" VARCHAR_IGNORECASE(200) NULL,
	"submetaobjectname" VARCHAR_IGNORECASE(255) NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_dynamicform$element_submetaobjectname_asc" ON "dynamicform$element" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
'DynamicForm.Element', 
'dynamicform$element', 
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
 VALUES ('ada8d49a-c54b-461f-bdcb-208bb498995b', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
'NameOfAttribute', 
'nameofattribute', 
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
 VALUES ('29de0db9-4dad-3711-8987-33fb1cb5ee64', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'DynamicForm.Element', 
false);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('7a40e368-5c15-338b-9450-8213c796da2a', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
'idx_dynamicform$element_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('7a40e368-5c15-338b-9450-8213c796da2a', 
'29de0db9-4dad-3711-8987-33fb1cb5ee64', 
false, 
0);
CREATE TABLE "dynamicform$element_section" (
	"dynamicform$elementid" BIGINT NOT NULL,
	"dynamicform$sectionid" BIGINT NOT NULL,
	PRIMARY KEY("dynamicform$elementid","dynamicform$sectionid"),
	CONSTRAINT "uniq_dynamicform$element_section_dynamicform$elementid" UNIQUE ("dynamicform$elementid"));
CREATE INDEX "idx_dynamicform$element_section_dynamicform$section_dynamicform$element" ON "dynamicform$element_section" ("dynamicform$sectionid" ASC,"dynamicform$elementid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('5983c0e9-e1a5-41ed-874b-ca425226375c', 
'DynamicForm.Element_Section', 
'dynamicform$element_section', 
'6e65c881-e5fd-4c23-a44c-da465a4d4a38', 
'b4bdaf6b-62db-4dd6-9b93-f5d1c8951457', 
'dynamicform$elementid', 
'dynamicform$sectionid', 
'idx_dynamicform$element_section_dynamicform$section_dynamicform$element');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_dynamicform$element_section_dynamicform$elementid', 
'5983c0e9-e1a5-41ed-874b-ca425226375c', 
'5833217a-237d-31aa-9f2a-7c207e4e2a38');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211013 09:21:07';
