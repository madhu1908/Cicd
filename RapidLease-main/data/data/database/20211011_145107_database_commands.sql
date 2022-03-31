ALTER TABLE "rapidlease$notes" ADD "subject" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('b11f90e6-1371-4429-8407-d2e0ad266932', 
'af28e914-60de-4916-bc79-119cd1be1226', 
'Subject', 
'subject', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidlease$property_vendor" (
	"rapidlease$propertyid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$propertyid","rapidlease$vendorid"),
	CONSTRAINT "uniq_rapidlease$property_vendor_rapidlease$propertyid" UNIQUE ("rapidlease$propertyid"));
CREATE INDEX "idx_rapidlease$property_vendor_rapidlease$vendor_rapidlease$property" ON "rapidlease$property_vendor" ("rapidlease$vendorid" ASC,"rapidlease$propertyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('006d7426-a8ed-43c6-9feb-204dd2c2f335', 
'RapidLease.Property_Vendor', 
'rapidlease$property_vendor', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'rapidlease$propertyid', 
'rapidlease$vendorid', 
'idx_rapidlease$property_vendor_rapidlease$vendor_rapidlease$property');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$property_vendor_rapidlease$propertyid', 
'006d7426-a8ed-43c6-9feb-204dd2c2f335', 
'5e22179f-691a-33e0-a125-3d66b2ce0b8f');
CREATE TABLE "rapidlease$notes_task" (
	"rapidlease$notesid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$notesid","rapidlease$taskid"),
	CONSTRAINT "uniq_rapidlease$notes_task_rapidlease$taskid" UNIQUE ("rapidlease$taskid"),
	CONSTRAINT "uniq_rapidlease$notes_task_rapidlease$notesid" UNIQUE ("rapidlease$notesid"));
CREATE INDEX "idx_rapidlease$notes_task_rapidlease$task_rapidlease$notes" ON "rapidlease$notes_task" ("rapidlease$taskid" ASC,"rapidlease$notesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d5fa4d18-209e-4b52-9941-34c52144a0e3', 
'RapidLease.Notes_Task', 
'rapidlease$notes_task', 
'af28e914-60de-4916-bc79-119cd1be1226', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'rapidlease$notesid', 
'rapidlease$taskid', 
'idx_rapidlease$notes_task_rapidlease$task_rapidlease$notes');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$notes_task_rapidlease$taskid', 
'd5fa4d18-209e-4b52-9941-34c52144a0e3', 
'42f6f514-2593-3cbf-a5c4-7d105c2fee56');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$notes_task_rapidlease$notesid', 
'd5fa4d18-209e-4b52-9941-34c52144a0e3', 
'19974953-3b78-3928-9614-27da346a0b56');
CREATE TABLE "rapidlease$tenant_messages" (
	"rapidlease$tenantid" BIGINT NOT NULL,
	"rapidcommunication$messagesid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$tenantid","rapidcommunication$messagesid"));
CREATE INDEX "idx_rapidlease$tenant_messages_rapidcommunication$messages_rapidlease$tenant" ON "rapidlease$tenant_messages" ("rapidcommunication$messagesid" ASC,"rapidlease$tenantid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('ff58b9a5-ffd7-4ba2-9eb6-e35c2d90a8d9', 
'RapidLease.Tenant_Messages', 
'rapidlease$tenant_messages', 
'87efd93c-ed75-4353-9b4d-4f9b9d5fe230', 
'0af46ff7-fd3f-408c-b3de-8664095af222', 
'rapidlease$tenantid', 
'rapidcommunication$messagesid', 
'idx_rapidlease$tenant_messages_rapidcommunication$messages_rapidlease$tenant');
CREATE TABLE "rapidcommunication$messages" (
	"id" BIGINT NOT NULL,
	"message" VARCHAR_IGNORECASE(2147483647) NULL,
	"to" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('0af46ff7-fd3f-408c-b3de-8664095af222', 
'RapidCommunication.Messages', 
'rapidcommunication$messages', 
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
 VALUES ('98d6dde1-b345-4463-af6c-380acd6a49ad', 
'0af46ff7-fd3f-408c-b3de-8664095af222', 
'Message', 
'message', 
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
 VALUES ('3e4a2dbd-43ed-4676-8625-ae6995b6d71f', 
'0af46ff7-fd3f-408c-b3de-8664095af222', 
'To', 
'to', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$cfiles_messages" (
	"rapidcommunication$cfilesid" BIGINT NOT NULL,
	"rapidcommunication$messagesid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$cfilesid","rapidcommunication$messagesid"),
	CONSTRAINT "uniq_rapidcommunication$cfiles_messages_rapidcommunication$cfilesid" UNIQUE ("rapidcommunication$cfilesid"));
CREATE INDEX "idx_rapidcommunication$cfiles_messages_rapidcommunication$messages_rapidcommunication$cfiles" ON "rapidcommunication$cfiles_messages" ("rapidcommunication$messagesid" ASC,"rapidcommunication$cfilesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('705818eb-14fa-4586-9194-35bbd724512c', 
'RapidCommunication.CFiles_Messages', 
'rapidcommunication$cfiles_messages', 
'7c932aab-4703-459c-b23b-88d808af1657', 
'0af46ff7-fd3f-408c-b3de-8664095af222', 
'rapidcommunication$cfilesid', 
'rapidcommunication$messagesid', 
'idx_rapidcommunication$cfiles_messages_rapidcommunication$messages_rapidcommunication$cfiles');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$cfiles_messages_rapidcommunication$cfilesid', 
'705818eb-14fa-4586-9194-35bbd724512c', 
'477bd4be-bfb5-3d1c-9fc3-a9ccc1358cde');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211011 14:51:07';
