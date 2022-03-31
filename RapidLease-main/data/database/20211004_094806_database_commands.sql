ALTER TABLE "rapidlease$association" ADD "ownership_unit" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$association"
 SET "ownership_unit" = '0';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b1c02078-72da-4030-8ab9-c25b425e9c9e', 
'0843f999-396a-4ab3-9bfb-2014673bdfe2', 
'Ownership_Unit', 
'ownership_unit', 
30, 
200, 
'0', 
false);
ALTER TABLE "rapidlease$unit" ADD "unit_owners" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3fb54806-9be5-4900-a6e8-4a73493bf224', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'Unit_Owners', 
'unit_owners', 
30, 
200, 
'', 
false);
ALTER TABLE "rapidlease$lease" ADD "createddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('993fbe2f-a3c3-31ff-8e8e-6ebc9f32ad2e', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
ALTER TABLE "rapidlease$workorder" ADD "isvisible" BOOLEAN NULL;
UPDATE "rapidlease$workorder"
 SET "isvisible" = false;
ALTER TABLE "rapidlease$workorder" ADD "createdtime" TIMESTAMP NULL;
ALTER TABLE "rapidlease$workorder" ADD "updatedtime" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('842b4ff9-291c-4c9a-8aff-2e3bb7c57a87', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'updatedTime', 
'updatedtime', 
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
 VALUES ('0caf90e3-b844-4792-a74f-68928958449d', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'createdtime', 
'createdtime', 
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
 VALUES ('31e576c8-f213-4968-a3ef-58edcb20c989', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'IsVisible', 
'isvisible', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$tenant" ADD "country" VARCHAR_IGNORECASE(44) NULL;
ALTER TABLE "rapidlease$tenant" ADD "city" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$tenant" ADD "moveout_date" TIMESTAMP NULL;
ALTER TABLE "rapidlease$tenant" ADD "streetadress" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$tenant" ADD "postalcode" INT NULL;
ALTER TABLE "rapidlease$tenant" ADD "state" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$tenant" ADD "movein_date" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('e86e34a0-6fd9-4f32-9c63-596d6cbcf66e', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'StreetAdress', 
'streetadress', 
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
 VALUES ('7fd68cda-c691-490d-87d4-86e425d23a3c', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'country', 
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
 VALUES ('6e420c2c-c17f-40c6-8852-95990c2d72d5', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'MoveOut_Date', 
'moveout_date', 
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
 VALUES ('449164c1-7e2b-445b-b253-04ad863664ed', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
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
 VALUES ('bb5fcdf8-da04-4eea-9f17-5829a6074d80', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'MoveIn_Date', 
'movein_date', 
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
 VALUES ('5430ea98-a870-4ab3-8abf-8eda5ff016fe', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
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
 VALUES ('f296531a-438d-45bc-b6da-98857e6bde82', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'Postalcode', 
'postalcode', 
3, 
0, 
'', 
false);
ALTER TABLE "rapidlease$ownership_accounts" ADD "country" VARCHAR_IGNORECASE(44) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "e_name" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "comments" VARCHAR_IGNORECASE(2147483647) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "city" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "firstname" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "e_phoneno" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "phonenumber" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "e_mail" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "postalcode" INT NULL;
UPDATE "rapidlease$ownership_accounts"
 SET "postalcode" = 0;
ALTER TABLE "rapidlease$ownership_accounts" ADD "state" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "streetaddress" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "dob" TIMESTAMP NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "laastname" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "rellationshipto" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "rapidlease$ownership_accounts" ADD "email" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('3957f3fb-f525-49c5-94bf-46ea12505da4', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'RellationshipTo', 
'rellationshipto', 
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
 VALUES ('0cf58c2a-fc6f-4e8b-b7f4-f0302f7cef6a', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'Email', 
'email', 
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
 VALUES ('ebb1bfe3-157c-4e9c-b68c-f28b9bdaea55', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'FirstName', 
'firstname', 
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
 VALUES ('f29e5900-0c36-4bde-a68a-4df07dafff88', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'Comments', 
'comments', 
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
 VALUES ('69a66d4d-9892-4bb7-8310-2e623c445f0e', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
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
 VALUES ('503419b7-7e59-4040-9cdd-ef6a59623dce', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'E_PhoneNo', 
'e_phoneno', 
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
 VALUES ('5de220b7-7f12-4836-9d6d-e386adf6a7d7', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
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
 VALUES ('df869714-201b-445f-88a3-32d541e0b756', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
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
 VALUES ('07f7df0b-314b-4d6f-bf57-2174866d7620', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'DOB', 
'dob', 
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
 VALUES ('92fd3422-86e3-4909-be4b-e89d7ddd1029', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'Postalcode', 
'postalcode', 
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
 VALUES ('1a03da23-9f41-4318-9f4a-bafe1232c3a4', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'PhoneNumber', 
'phonenumber', 
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
 VALUES ('cacdd482-a2bb-411a-8100-a13a4f2d6560', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
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
 VALUES ('f643db6f-987d-4878-a8b9-5b856fc09407', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'E_Name', 
'e_name', 
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
 VALUES ('e1371e83-4ce1-4fea-9913-aa7ef41363c5', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'LaastName', 
'laastname', 
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
 VALUES ('5cd96ea1-62ee-43ba-b683-0bdd00207d5a', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'E_mail', 
'e_mail', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidlease$property_history" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$historyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$historyid"),
	CONSTRAINT "uniq_rapidlease$property_history_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_history_rapidlease$history_rapidlease$property" ON "rapidlease$property_history" ("rapidlease$historyid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('41c0273a-546b-49b9-b9ee-34ab283c8259', 
'RapidLease.Property_HISTORY', 
'rapidlease$property_history', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'rapidlease$propertyid', 
'rapidlease$historyid', 
'idx_rapidlease$property_history_rapidlease$history_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_history_rapidlease$propertyid', 
'41c0273a-546b-49b9-b9ee-34ab283c8259', 
'2c9b35ad-a121-3a22-936d-f32e271a8ca2');
CREATE TABLE "rapidlease$property_lease" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$property_lease_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_lease_rapidlease$lease_rapidlease$property" ON "rapidlease$property_lease" ("rapidlease$leaseid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('35f4b641-4eb5-44f1-983d-cdead652d9fc', 
'RapidLease.Property_Lease', 
'rapidlease$property_lease', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$propertyid', 
'rapidlease$leaseid', 
'idx_rapidlease$property_lease_rapidlease$lease_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_lease_rapidlease$propertyid', 
'35f4b641-4eb5-44f1-983d-cdead652d9fc', 
'63bed605-b2cb-3ceb-99ea-6a0b4ffd3944');
CREATE TABLE "rapidlease$property_tenant" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$tenantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$property_tenant_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_tenant_rapidlease$tenant_rapidlease$property" ON "rapidlease$property_tenant" ("rapidlease$tenantid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8085f1c4-6ca1-4f39-877b-357a7177cd9f', 
'RapidLease.Property_Tenant', 
'rapidlease$property_tenant', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'rapidlease$propertyid', 
'rapidlease$tenantid', 
'idx_rapidlease$property_tenant_rapidlease$tenant_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_tenant_rapidlease$propertyid', 
'8085f1c4-6ca1-4f39-877b-357a7177cd9f', 
'd943adc1-1dc7-3399-8b2c-42cf31f6e491');
CREATE TABLE "rapidlease$property_task" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$taskid"),
	CONSTRAINT "uniq_rapidlease$property_task_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_task_rapidlease$task_rapidlease$property" ON "rapidlease$property_task" ("rapidlease$taskid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3d5bed61-6866-4936-a4ec-2526d1d0b297', 
'RapidLease.Property_Task', 
'rapidlease$property_task', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'rapidlease$propertyid', 
'rapidlease$taskid', 
'idx_rapidlease$property_task_rapidlease$task_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_task_rapidlease$propertyid', 
'3d5bed61-6866-4936-a4ec-2526d1d0b297', 
'41c0b327-f1d2-3743-b862-420c00fafa8a');
CREATE TABLE "rapidlease$eventtype" (
	"id" BIGINT NOT NULL,
	"changeddate" TIMESTAMP NULL,
	"createddate" TIMESTAMP NULL,
	"system$owner" BIGINT NULL,
	"system$changedby" BIGINT NULL,
	PRIMARY KEY("id"));
CREATE INDEX "idx_rapidlease$eventtype_system$owner" ON "rapidlease$eventtype" ("system$owner" ASC,"id" ASC);
CREATE INDEX "idx_rapidlease$eventtype_system$changedby" ON "rapidlease$eventtype" ("system$changedby" ASC,"id" ASC);
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'RapidLease.EventType', 
'rapidlease$eventtype', 
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
 VALUES ('83d0f05e-4030-3d08-823b-7fbfa283aab0', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
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
 VALUES ('fc8ea0e0-767d-31fe-a472-aa914bae65b8', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('a54b480d-e90e-3e4d-9abc-b7dd7a56e7df', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'idx_rapidlease$eventtype_system$owner');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('a54b480d-e90e-3e4d-9abc-b7dd7a56e7df', 
'6871ece7-82ea-3a17-8770-60146fbd98e4', 
false, 
0);
INSERT INTO "mendixsystem$index" ("id", 
"table_id", 
"index_name")
 VALUES ('60db7d70-232a-34d8-a54c-697f8f126e23', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'idx_rapidlease$eventtype_system$changedby');
INSERT INTO "mendixsystem$index_column" ("index_id", 
"column_id", 
"sort_order", 
"ordinal")
 VALUES ('60db7d70-232a-34d8-a54c-697f8f126e23', 
'ce03d4e9-7ab1-3163-b1d4-b38d3af3f60d', 
false, 
0);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name")
 VALUES ('6871ece7-82ea-3a17-8770-60146fbd98e4', 
'System.owner', 
'system$owner', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name")
 VALUES ('ce03d4e9-7ab1-3163-b1d4-b38d3af3f60d', 
'System.changedBy', 
'system$changedby', 
'7f2981a5-62c5-4bb1-8403-533cf05d3f6d', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
CREATE TABLE "rapidlease$history" (
	"id" BIGINT NOT NULL,
	"updatedby" VARCHAR_IGNORECASE(200) NULL,
	"details" VARCHAR_IGNORECASE(2147483647) NULL,
	"eventtype" VARCHAR_IGNORECASE(20) NULL,
	"tenants" VARCHAR_IGNORECASE(200) NULL,
	"units" VARCHAR_IGNORECASE(200) NULL,
	"referenceno" INT NULL,
	"date" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'RapidLease.HISTORY', 
'rapidlease$history', 
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
 VALUES ('95b70079-45b4-456f-972c-99ca42ba0b99', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'UpdatedBy', 
'updatedby', 
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
 VALUES ('0c87f575-38ef-422d-a551-2222eda214ee', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'Details', 
'details', 
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
 VALUES ('0f2aa04b-822f-482a-ac52-c8ebb57cdaa2', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'EventType', 
'eventtype', 
40, 
20, 
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
 VALUES ('bc8ef095-ac42-47fe-8bc3-3eab7b9118ac', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'Tenants', 
'tenants', 
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
 VALUES ('67eec55c-122c-4477-a8fa-23322a5c8b1f', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'units', 
'units', 
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
 VALUES ('148a6426-cff8-41a4-9ad7-f193a9c94b21', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'ReferenceNo', 
'referenceno', 
3, 
0, 
'1', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fa6e2e26-f0f8-4487-9b46-1a6d412aa7e2', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'Date', 
'date', 
20, 
0, 
'', 
false);
CREATE TABLE "rapidlease$history_tenant" (
	"rapidlease$historyid" BIGINT NOT NULL,
	"rapidlease$tenantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$historyid","rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$history_tenant_rapidlease$historyid" UNIQUE ("rapidlease$historyid"));
CREATE INDEX "idx_rapidlease$history_tenant_rapidlease$tenant_rapidlease$history" ON "rapidlease$history_tenant" ("rapidlease$tenantid" ASC,"rapidlease$historyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e1c59433-f6b6-4f04-9458-68ec597d8441', 
'RapidLease.HISTORY_Tenant', 
'rapidlease$history_tenant', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'rapidlease$historyid', 
'rapidlease$tenantid', 
'idx_rapidlease$history_tenant_rapidlease$tenant_rapidlease$history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$history_tenant_rapidlease$historyid', 
'e1c59433-f6b6-4f04-9458-68ec597d8441', 
'6caeca26-fecf-3449-ba26-65774a8029fe');
CREATE TABLE "rapidlease$history_lease" (
	"rapidlease$historyid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$historyid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$history_lease_rapidlease$historyid" UNIQUE ("rapidlease$historyid"));
CREATE INDEX "idx_rapidlease$history_lease_rapidlease$lease_rapidlease$history" ON "rapidlease$history_lease" ("rapidlease$leaseid" ASC,"rapidlease$historyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('9590abef-4a72-4a34-af34-4dc3002f766e', 
'RapidLease.HISTORY_Lease', 
'rapidlease$history_lease', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$historyid', 
'rapidlease$leaseid', 
'idx_rapidlease$history_lease_rapidlease$lease_rapidlease$history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$history_lease_rapidlease$historyid', 
'9590abef-4a72-4a34-af34-4dc3002f766e', 
'6ce4b3ac-4c15-394c-b4fe-b87a73729a1c');
CREATE TABLE "rapidlease$history_property" (
	"rapidlease$historyid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$historyid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$history_property_rapidlease$historyid" UNIQUE ("rapidlease$historyid"));
CREATE INDEX "idx_rapidlease$history_property_rapidlease$property_rapidlease$history" ON "rapidlease$history_property" ("rapidlease$propertyid" ASC,"rapidlease$historyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8e96ce9b-56c5-4bcd-868d-a0ec4f8ea82b', 
'RapidLease.HISTORY_Property', 
'rapidlease$history_property', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$historyid', 
'rapidlease$propertyid', 
'idx_rapidlease$history_property_rapidlease$property_rapidlease$history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$history_property_rapidlease$historyid', 
'8e96ce9b-56c5-4bcd-868d-a0ec4f8ea82b', 
'bc96fd51-6e53-3927-bdc2-be1d891cb0be');
CREATE TABLE "rapidlease$history_propertygroup" (
	"rapidlease$historyid" BIGINT NOT NULL,
	"rapidlease$propertygroupid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$historyid","rapidlease$propertygroupid"),
	CONSTRAINT "uniq_rapidlease$history_propertygroup_rapidlease$historyid" UNIQUE ("rapidlease$historyid"));
CREATE INDEX "idx_rapidlease$history_propertygroup_rapidlease$propertygroup_rapidlease$history" ON "rapidlease$history_propertygroup" ("rapidlease$propertygroupid" ASC,"rapidlease$historyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('998da33e-e53d-43cb-9c9c-4d3f3c9bbf5a', 
'RapidLease.HISTORY_PropertyGroup', 
'rapidlease$history_propertygroup', 
'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
'e646c648-eced-4284-86aa-a23082f724c6', 
'rapidlease$historyid', 
'rapidlease$propertygroupid', 
'idx_rapidlease$history_propertygroup_rapidlease$propertygroup_rapidlease$history');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$history_propertygroup_rapidlease$historyid', 
'998da33e-e53d-43cb-9c9c-4d3f3c9bbf5a', 
'44f0537d-d504-3d6b-83cd-b5bde003f22b');
CREATE TABLE "rapidlease$associationunit_tenant" (
	"rapidlease$unitid" BIGINT NOT NULL,
	"rapidlease$tenantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$unitid","rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$associationunit_tenant_rapidlease$tenantid" UNIQUE ("rapidlease$tenantid"),
	CONSTRAINT "uniq_rapidlease$associationunit_tenant_rapidlease$unitid" UNIQUE ("rapidlease$unitid"));
CREATE INDEX "idx_rapidlease$associationunit_tenant_rapidlease$tenant_rapidlease$unit" ON "rapidlease$associationunit_tenant" ("rapidlease$tenantid" ASC,"rapidlease$unitid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('684ecad3-43e1-43fe-8517-efbfa468e881', 
'RapidLease.AssociationUnit_Tenant', 
'rapidlease$associationunit_tenant', 
'136f45c2-dcf8-4fed-b3ec-30fcb63c03eb', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'rapidlease$unitid', 
'rapidlease$tenantid', 
'idx_rapidlease$associationunit_tenant_rapidlease$tenant_rapidlease$unit');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$associationunit_tenant_rapidlease$tenantid', 
'684ecad3-43e1-43fe-8517-efbfa468e881', 
'101126c3-4850-3212-b69c-f6f69463c80a');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$associationunit_tenant_rapidlease$unitid', 
'684ecad3-43e1-43fe-8517-efbfa468e881', 
'eb8a5c90-6c0d-3d1c-9598-124344378762');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211004 09:48:06';
