ALTER TABLE "rapidlease$technician" ADD "craftsmanship" VARCHAR_IGNORECASE(10) NULL;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '281582ca-cd1d-4731-a73e-c65022febc64', 
"attribute_name" = 'Home_Phone', 
"column_name" = 'home_phone', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'c44077e0-6d15-4fdc-b6ee-8ae2d28f0eaa';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('5b83b245-a83f-483b-9dfa-2005810d854b', 
'281582ca-cd1d-4731-a73e-c65022febc64', 
'Craftsmanship', 
'craftsmanship', 
40, 
10, 
'', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '281582ca-cd1d-4731-a73e-c65022febc64', 
"attribute_name" = 'Salutation', 
"column_name" = 'salutation', 
"type" = 40, 
"length" = 4, 
"default_value" = 'Mr', 
"is_auto_number" = false
 WHERE "id" = '4c4ce5e1-2431-4dbd-8b6f-16ad547cde9c';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '281582ca-cd1d-4731-a73e-c65022febc64', 
"attribute_name" = 'Mobile', 
"column_name" = 'mobile', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'c57cdc73-deaf-4f43-8e91-b6c9ef4abcb4';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '281582ca-cd1d-4731-a73e-c65022febc64', 
"attribute_name" = 'Office_Phone', 
"column_name" = 'office_phone', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'b245e53c-2322-4df4-8c30-c8ab1ebc5ff2';
ALTER TABLE "rapidlease$invoice" ADD "memo" VARCHAR_IGNORECASE(200) NULL;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '48846d46-0572-498f-b05b-6fba6544c0cd', 
"attribute_name" = 'Invoice_Number', 
"column_name" = 'invoice_number', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'f103f61e-9945-4cbb-9d35-1f6be3d78502';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('688d84cc-c865-4c78-901f-e52e2f91dfa7', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'Memo', 
'memo', 
30, 
200, 
'', 
false);
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "phone" SET DATA TYPE BIGINT;
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'Phone', 
"column_name" = 'phone', 
"type" = 4, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '0f556349-2833-47e5-9632-863cb3eec91c';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'UEN_NRIC', 
"column_name" = 'uen_nric', 
"type" = 4, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '43222f7d-874f-4c6b-9b64-14cbce999281';
CREATE TABLE "rapidlease$invoice_property" (
	"rapidlease$invoiceid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$invoiceid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$invoice_property_rapidlease$invoiceid" UNIQUE ("rapidlease$invoiceid"));
CREATE INDEX "idx_rapidlease$invoice_property_rapidlease$property_rapidlease$invoice" ON "rapidlease$invoice_property" ("rapidlease$propertyid" ASC,"rapidlease$invoiceid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e7d6a864-dc07-4f37-bae2-a976067beb14', 
'RapidLease.Invoice_Property', 
'rapidlease$invoice_property', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$invoiceid', 
'rapidlease$propertyid', 
'idx_rapidlease$invoice_property_rapidlease$property_rapidlease$invoice');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$invoice_property_rapidlease$invoiceid', 
'e7d6a864-dc07-4f37-bae2-a976067beb14', 
'1a19e1a5-6102-3219-b973-a54471e859f7');
CREATE TABLE "rapidlease$invoice_level_" (
	"rapidlease$invoiceid" BIGINT NOT NULL,
	"rapidlease$level_id" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$invoiceid","rapidlease$level_id"),
	CONSTRAINT "uniq_rapidlease$invoice_level__rapidlease$invoiceid" UNIQUE ("rapidlease$invoiceid"));
CREATE INDEX "idx_rapidlease$invoice_level__rapidlease$level__rapidlease$invoice" ON "rapidlease$invoice_level_" ("rapidlease$level_id" ASC,"rapidlease$invoiceid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('60b95738-c237-48eb-8b83-ed2b3d6a9cdb', 
'RapidLease.Invoice_Level_', 
'rapidlease$invoice_level_', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'rapidlease$invoiceid', 
'rapidlease$level_id', 
'idx_rapidlease$invoice_level__rapidlease$level__rapidlease$invoice');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$invoice_level__rapidlease$invoiceid', 
'60b95738-c237-48eb-8b83-ed2b3d6a9cdb', 
'80b66a3d-12f5-3363-8659-497cac34be74');
CREATE TABLE "rapidlease$invoice_space" (
	"rapidlease$invoiceid" BIGINT NOT NULL,
	"rapidlease$spaceid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$invoiceid","rapidlease$spaceid"),
	CONSTRAINT "uniq_rapidlease$invoice_space_rapidlease$invoiceid" UNIQUE ("rapidlease$invoiceid"));
CREATE INDEX "idx_rapidlease$invoice_space_rapidlease$space_rapidlease$invoice" ON "rapidlease$invoice_space" ("rapidlease$spaceid" ASC,"rapidlease$invoiceid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d0da9493-58a1-4a90-8e84-4d5e77fb30d0', 
'RapidLease.Invoice_Space', 
'rapidlease$invoice_space', 
'48846d46-0572-498f-b05b-6fba6544c0cd', 
'0da32daa-e391-4acc-9d60-22fb8f8010d4', 
'rapidlease$invoiceid', 
'rapidlease$spaceid', 
'idx_rapidlease$invoice_space_rapidlease$space_rapidlease$invoice');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$invoice_space_rapidlease$invoiceid', 
'd0da9493-58a1-4a90-8e84-4d5e77fb30d0', 
'dccd1ea2-7ca0-3e9a-aeb7-4b87089951ae');
CREATE TABLE "assets_and_maintenance$quotations_technician" (
	"assets_and_maintenance$quotationsid" BIGINT NOT NULL,
	"rapidlease$technicianid" BIGINT NOT NULL,
	PRIMARY KEY("assets_and_maintenance$quotationsid","rapidlease$technicianid"),
	CONSTRAINT "uniq_assets_and_maintenance$quotations_technician_assets_and_maintenance$quotationsid" UNIQUE ("assets_and_maintenance$quotationsid"));
CREATE INDEX "idx_assets_and_maintenance$quotations_technician_rapidlease$technician_assets_and_maintenance$quotations" ON "assets_and_maintenance$quotations_technician" ("rapidlease$technicianid" ASC,"assets_and_maintenance$quotationsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('baf84dcb-1647-4335-9115-dc766bc75a18', 
'Assets_and_Maintenance.Quotations_Technician', 
'assets_and_maintenance$quotations_technician', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'281582ca-cd1d-4731-a73e-c65022febc64', 
'assets_and_maintenance$quotationsid', 
'rapidlease$technicianid', 
'idx_assets_and_maintenance$quotations_technician_rapidlease$technician_assets_and_maintenance$quotations');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_assets_and_maintenance$quotations_technician_assets_and_maintenance$quotationsid', 
'baf84dcb-1647-4335-9115-dc766bc75a18', 
'301d0be1-93cf-338e-b602-6d4b208c477a');
CREATE TABLE "rapidlease$vendorclassification" (
	"id" BIGINT NOT NULL,
	"number" INT NULL,
	"vendorclassification" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('9ccec575-96a7-4dce-b14e-f6c2c2bed0e1', 
'RapidLease.VendorClassification', 
'rapidlease$vendorclassification', 
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
 VALUES ('29a06096-be83-4ffa-ba42-23bd57a28be9', 
'9ccec575-96a7-4dce-b14e-f6c2c2bed0e1', 
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
 VALUES ('b2995660-30ce-4ec8-8b40-34f9a30a17fc', 
'9ccec575-96a7-4dce-b14e-f6c2c2bed0e1', 
'VendorClassification', 
'vendorclassification', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidlease$vendorclassification_vendor" (
	"rapidlease$vendorclassificationid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$vendorclassificationid","rapidlease$vendorid"));
CREATE INDEX "idx_rapidlease$vendorclassification_vendor_rapidlease$vendor_rapidlease$vendorclassification" ON "rapidlease$vendorclassification_vendor" ("rapidlease$vendorid" ASC,"rapidlease$vendorclassificationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('2f88b0a2-03ab-4fa6-9939-88812bbe6a9b', 
'RapidLease.VendorClassification_Vendor', 
'rapidlease$vendorclassification_vendor', 
'9ccec575-96a7-4dce-b14e-f6c2c2bed0e1', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'rapidlease$vendorclassificationid', 
'rapidlease$vendorid', 
'idx_rapidlease$vendorclassification_vendor_rapidlease$vendor_rapidlease$vendorclassification');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211117 16:57:20';
