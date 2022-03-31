ALTER TABLE "rapidlease$workorder" ADD "changeddate" TIMESTAMP NULL;
ALTER TABLE "rapidlease$workorder" ADD "createddate" TIMESTAMP NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c5c056af-f4cf-3f81-97d0-a1c1b6b31dff', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
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
 VALUES ('0d893cbc-3c96-3cfa-846f-a2c5fd2b9027', 
'31880a31-eb1a-44c1-8e5d-7930714ecf7b', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
ALTER TABLE "rapidcommunication$communitydiscussions" ADD "isattached" BOOLEAN NULL;
UPDATE "rapidcommunication$communitydiscussions"
 SET "isattached" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d0f4bdfe-3bd8-44f5-8fbb-f6d902ddc382', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'isattached', 
'isattached', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$vendor" ADD "vendor_notes" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('50745943-21b4-4d2f-904c-b9b282d08bdc', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'Vendor_Notes', 
'vendor_notes', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$communtityreply" (
	"id" BIGINT NOT NULL,
	"description" VARCHAR_IGNORECASE(2147483647) NULL,
	"date" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('b6dcf5ac-1004-4e6b-9a75-b07c1c43064c', 
'RapidCommunication.CommuntityReply', 
'rapidcommunication$communtityreply', 
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
 VALUES ('2fc52ae5-180c-4af2-a6c0-731fac6469df', 
'b6dcf5ac-1004-4e6b-9a75-b07c1c43064c', 
'Description', 
'description', 
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
 VALUES ('4620078a-997b-42a6-b938-ac86f14beffc', 
'b6dcf5ac-1004-4e6b-9a75-b07c1c43064c', 
'Date', 
'date', 
20, 
0, 
'', 
false);
CREATE TABLE "rapidcommunication$communtityreply_communitydiscussions" (
	"rapidcommunication$communtityreplyid" BIGINT NOT NULL,
	"rapidcommunication$communitydiscussionsid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$communtityreplyid","rapidcommunication$communitydiscussionsid"),
	CONSTRAINT "uniq_rapidcommunication$communtityreply_communitydiscussions_rapidcommunication$communtityreplyid" UNIQUE ("rapidcommunication$communtityreplyid"));
CREATE INDEX "idx_rapidcommunication$communtityreply_communitydiscussions" ON "rapidcommunication$communtityreply_communitydiscussions" ("rapidcommunication$communitydiscussionsid" ASC,"rapidcommunication$communtityreplyid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('99915a0b-5ca4-4558-bb3f-b69c98c209bd', 
'RapidCommunication.CommuntityReply_CommunityDiscussions', 
'rapidcommunication$communtityreply_communitydiscussions', 
'b6dcf5ac-1004-4e6b-9a75-b07c1c43064c', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'rapidcommunication$communtityreplyid', 
'rapidcommunication$communitydiscussionsid', 
'idx_rapidcommunication$communtityreply_communitydiscussions');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$communtityreply_communitydiscussions_rapidcommunication$communtityreplyid', 
'99915a0b-5ca4-4558-bb3f-b69c98c209bd', 
'11248d4f-4538-3c58-9718-11812b0e19eb');
CREATE TABLE "rapidcommunication$attachments" (
	"id" BIGINT NOT NULL,
	"description" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('c8a9e710-e291-4836-9910-e4339173395f', 
'RapidCommunication.Attachments', 
'rapidcommunication$attachments', 
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
 VALUES ('149c1fd6-4725-4a35-9c01-c0357d51454e', 
'c8a9e710-e291-4836-9910-e4339173395f', 
'Description', 
'description', 
30, 
200, 
'', 
false);
CREATE TABLE "rapidcommunication$attachments_communitydiscussions" (
	"rapidcommunication$attachmentsid" BIGINT NOT NULL,
	"rapidcommunication$communitydiscussionsid" BIGINT NOT NULL,
	PRIMARY KEY("rapidcommunication$attachmentsid","rapidcommunication$communitydiscussionsid"),
	CONSTRAINT "uniq_rapidcommunication$attachments_communitydiscussions_rapidcommunication$attachmentsid" UNIQUE ("rapidcommunication$attachmentsid"));
CREATE INDEX "idx_rapidcommunication$attachments_communitydiscussions_rapidcommunication$communitydiscussions_rapidcommunication$attachments" ON "rapidcommunication$attachments_communitydiscussions" ("rapidcommunication$communitydiscussionsid" ASC,"rapidcommunication$attachmentsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('0f6f65ae-1352-44e0-8ddf-3b96f7b80a5c', 
'RapidCommunication.Attachments_CommunityDiscussions', 
'rapidcommunication$attachments_communitydiscussions', 
'c8a9e710-e291-4836-9910-e4339173395f', 
'76ddbeee-7ffa-431b-918f-558faee204d7', 
'rapidcommunication$attachmentsid', 
'rapidcommunication$communitydiscussionsid', 
'idx_rapidcommunication$attachments_communitydiscussions_rapidcommunication$communitydiscussions_rapidcommunication$attachments');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidcommunication$attachments_communitydiscussions_rapidcommunication$attachmentsid', 
'0f6f65ae-1352-44e0-8ddf-3b96f7b80a5c', 
'4da51ef0-462a-33db-8cc9-69ebb4abbaf4');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211006 17:54:30';
