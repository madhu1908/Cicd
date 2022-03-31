ALTER TABLE "rapidlease$paymentaccount" RENAME TO "a21f143c26844e58b074e762bec19ebf";
ALTER TABLE "rapidlease$subpayment" DROP CONSTRAINT "uniq_rapidlease$subpayment_rapidlease$paymentaccountid1";
DROP INDEX "idx_rapidlease$subpayment_rapidlease$paymentaccount_rapidlease$paymentaccount";
ALTER TABLE "rapidlease$subpayment" RENAME TO "08e224c65cff4976850c3d94172b5253";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '7262f26e-d708-4c4d-8197-6134590208b8';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '7262f26e-d708-4c4d-8197-6134590208b8';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '7262f26e-d708-4c4d-8197-6134590208b8');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '7262f26e-d708-4c4d-8197-6134590208b8';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '7262f26e-d708-4c4d-8197-6134590208b8';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '44c2db5b-135b-4f34-a675-88e6027e10ff';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$subpayment_rapidlease$paymentaccountid1' AND "column_id" = '62d6ff94-40f2-34a3-80ec-19cbf219fae5';
ALTER TABLE "rapidlease$listing" ADD "listeddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('1db31d14-3b4c-446f-a20d-9cea51ebe2cb', 
'b39a28cc-06bc-415f-811e-eaa8648ced4a', 
'listedDate', 
'listeddate', 
20, 
0, 
'', 
false);
ALTER TABLE "rapidlease$property" ADD "createddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('710ebb36-c7e1-34a9-b8b7-a6b172b635f1', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
ALTER TABLE "rapidlease$history" ALTER COLUMN "eventtype" SET DATA TYPE VARCHAR_IGNORECASE(200);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'fc49089d-55e4-4e5e-8601-c9a4055a487b', 
"attribute_name" = 'EventType', 
"column_name" = 'eventtype', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '0f2aa04b-822f-482a-ac52-c8ebb57cdaa2';
CREATE TABLE "financials$paymentaccount" (
	"id" BIGINT NOT NULL,
	"paymenttype" VARCHAR_IGNORECASE(22) NULL,
	"cashflow_classification" VARCHAR_IGNORECASE(20) NULL,
	"notes" VARCHAR_IGNORECASE(2147483647) NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'Financials.PaymentAccount', 
'financials$paymentaccount', 
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
 VALUES ('c1b0b144-324c-4248-8118-4e5711188feb', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'PaymentType', 
'paymenttype', 
40, 
22, 
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
 VALUES ('2e7e4a7b-dcf3-4939-abdc-cd2dfcb06ec0', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'Cashflow_Classification', 
'cashflow_classification', 
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
 VALUES ('d8b99b3b-3a41-477d-a827-7289d7fc38a9', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'Notes', 
'notes', 
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
 VALUES ('25e88e7d-74b6-4f78-8490-a39b095238cd', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'Name', 
'name', 
30, 
200, 
'', 
false);
CREATE TABLE "financials$subpayment" (
	"financials$paymentaccountid1" BIGINT NOT NULL,
	"financials$paymentaccountid2" BIGINT NOT NULL,
	PRIMARY KEY("financials$paymentaccountid1","financials$paymentaccountid2"),
	CONSTRAINT "uniq_financials$subpayment_financials$paymentaccountid1" UNIQUE ("financials$paymentaccountid1"));
CREATE INDEX "idx_financials$subpayment_financials$paymentaccount_financials$paymentaccount" ON "financials$subpayment" ("financials$paymentaccountid2" ASC,"financials$paymentaccountid1" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('7dbe5791-233d-4e75-aa09-8ccb249a7233', 
'Financials.SubPayment', 
'financials$subpayment', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'77c75c72-e1de-4d84-aa56-44bc842fe1e7', 
'financials$paymentaccountid1', 
'financials$paymentaccountid2', 
'idx_financials$subpayment_financials$paymentaccount_financials$paymentaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$subpayment_financials$paymentaccountid1', 
'7dbe5791-233d-4e75-aa09-8ccb249a7233', 
'2dd38fca-8ee5-3523-8314-6119c05e732f');
CREATE TABLE "rapidcommunication$announcement" (
	"id" BIGINT NOT NULL,
	"message" VARCHAR_IGNORECASE(200) NULL,
	"to" VARCHAR_IGNORECASE(200) NULL,
	"removaldate" TIMESTAMP NULL,
	"image" LONGVARBINARY NULL,
	"subject" VARCHAR_IGNORECASE(200) NULL,
	"template" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'RapidCommunication.Announcement', 
'rapidcommunication$announcement', 
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
 VALUES ('fc866db9-049b-42a2-8870-b66b5d01d77a', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Message', 
'message', 
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
 VALUES ('e0fe7aae-9c67-4eb0-aca2-00eca05482b7', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'To', 
'to', 
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
 VALUES ('dad42fa0-c7fa-43c7-89b9-d2f75aa7e2a4', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Removaldate', 
'removaldate', 
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
 VALUES ('8e1f583e-de27-45fc-a36f-4a44415b44a3', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Image', 
'image', 
50, 
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
 VALUES ('0c3ec11e-16e6-4744-9598-c7e5ecbac4d0', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Subject', 
'subject', 
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
 VALUES ('259c14be-19d4-489d-8659-852cf2042b23', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'Template', 
'template', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$announcement_property" (
	"rapidcommunication$announcementid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$announcementid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidcommunication$announcement_property_rapidcommunication$announcementid" UNIQUE ("rapidcommunication$announcementid"));
CREATE INDEX "idx_rapidcommunication$announcement_property_rapidlease$property_rapidcommunication$announcement" ON "rapidcommunication$announcement_property" ("rapidlease$propertyid" ASC,"rapidcommunication$announcementid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d39af112-58b2-4d58-aad2-300cdfd98241', 
'RapidCommunication.Announcement_Property', 
'rapidcommunication$announcement_property', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidcommunication$announcementid', 
'rapidlease$propertyid', 
'idx_rapidcommunication$announcement_property_rapidlease$property_rapidcommunication$announcement');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$announcement_property_rapidcommunication$announcementid', 
'd39af112-58b2-4d58-aad2-300cdfd98241', 
'704aef35-b3ba-3aec-8699-4542dae3974c');
CREATE TABLE "rapidcommunication$announcement_emailtemplate" (
	"rapidcommunication$announcementid" BIGINT NOT NULL,
	"emailtemplate$emailtemplateid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$announcementid","emailtemplate$emailtemplateid"),
	CONSTRAINT "uniq_rapidcommunication$announcement_emailtemplate_rapidcommunication$announcementid" UNIQUE ("rapidcommunication$announcementid"));
CREATE INDEX "idx_rapidcommunication$announcement_emailtemplate_emailtemplate$emailtemplate_rapidcommunication$announcement" ON "rapidcommunication$announcement_emailtemplate" ("emailtemplate$emailtemplateid" ASC,"rapidcommunication$announcementid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3fd28ad4-967a-434c-bc02-d1770e510b12', 
'RapidCommunication.Announcement_EmailTemplate', 
'rapidcommunication$announcement_emailtemplate', 
'be09e821-56bc-49eb-bd77-a03bbd03fa59', 
'5a3d7574-4f4a-4bd0-b64c-12ef0cfe3f96', 
'rapidcommunication$announcementid', 
'emailtemplate$emailtemplateid', 
'idx_rapidcommunication$announcement_emailtemplate_emailtemplate$emailtemplate_rapidcommunication$announcement');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$announcement_emailtemplate_rapidcommunication$announcementid', 
'3fd28ad4-967a-434c-bc02-d1770e510b12', 
'9d82b4ab-7ac2-38fd-9640-1de058650349');
CREATE TABLE "rapidlease$workorder_task" (
	"rapidlease$workorderid" BIGINT NOT NULL,
	"rapidlease$taskid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$workorderid","rapidlease$taskid"),
	CONSTRAINT "uniq_rapidlease$workorder_task_rapidlease$workorderid" UNIQUE ("rapidlease$workorderid"));
CREATE INDEX "idx_rapidlease$workorder_task_rapidlease$task_rapidlease$workorder" ON "rapidlease$workorder_task" ("rapidlease$taskid" ASC,"rapidlease$workorderid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('e770f86e-c873-4fe7-bdf1-e88151efcdbc', 
'RapidLease.WorkOrder_Task', 
'rapidlease$workorder_task', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'rapidlease$workorderid', 
'rapidlease$taskid', 
'idx_rapidlease$workorder_task_rapidlease$task_rapidlease$workorder');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$workorder_task_rapidlease$workorderid', 
'e770f86e-c873-4fe7-bdf1-e88151efcdbc', 
'8bafff81-1e46-32bb-a2da-b568aad057da');
CREATE TABLE "rapidlease$task_vendor" (
	"rapidlease$taskid" BIGINT NOT NULL,
	"rapidlease$vendorid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$taskid","rapidlease$vendorid"),
	CONSTRAINT "uniq_rapidlease$task_vendor_rapidlease$taskid" UNIQUE ("rapidlease$taskid"));
CREATE INDEX "idx_rapidlease$task_vendor_rapidlease$vendor_rapidlease$task" ON "rapidlease$task_vendor" ("rapidlease$vendorid" ASC,"rapidlease$taskid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d2c869e5-3ada-489d-9cbb-8c2443205f94', 
'RapidLease.Task_Vendor', 
'rapidlease$task_vendor', 
'c58e02b6-620e-4b80-b55c-a7e0fd72f0b8', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'rapidlease$taskid', 
'rapidlease$vendorid', 
'idx_rapidlease$task_vendor_rapidlease$vendor_rapidlease$task');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$task_vendor_rapidlease$taskid', 
'd2c869e5-3ada-489d-9cbb-8c2443205f94', 
'eea71870-a7b3-37aa-8df6-716d21e7b2f4');
DROP TABLE "a21f143c26844e58b074e762bec19ebf";
DROP TABLE "08e224c65cff4976850c3d94172b5253";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211005 17:15:24';
