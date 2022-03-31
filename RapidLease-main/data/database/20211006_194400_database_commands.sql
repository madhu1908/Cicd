ALTER TABLE "rapidlease$checklist" ADD "ischecked" BOOLEAN NULL;
UPDATE "rapidlease$checklist"
 SET "ischecked" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fc1edc75-4969-4784-b5b3-affbadd6444a', 
'88b4e618-4180-47da-b037-ee7786157a46', 
'IsChecked', 
'ischecked', 
10, 
0, 
'false', 
false);
CREATE TABLE "rapidlease$applicant_property" (
	"rapidlease$applicantid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$applicantid","rapidlease$propertyid"),
	CONSTRAINT "uniq_rapidlease$applicant_property_rapidlease$applicantid" UNIQUE ("rapidlease$applicantid"));
CREATE INDEX "idx_rapidlease$applicant_property_rapidlease$property_rapidlease$applicant" ON "rapidlease$applicant_property" ("rapidlease$propertyid" ASC,"rapidlease$applicantid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('368bec2c-8b05-4b1f-b40a-9f6adee1d068', 
'RapidLease.Applicant_Property', 
'rapidlease$applicant_property', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'rapidlease$applicantid', 
'rapidlease$propertyid', 
'idx_rapidlease$applicant_property_rapidlease$property_rapidlease$applicant');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$applicant_property_rapidlease$applicantid', 
'368bec2c-8b05-4b1f-b40a-9f6adee1d068', 
'bcaded29-2193-3a2d-a315-97fc13192cf3');
CREATE TABLE "rapidlease$applicant_checklist" (
	"rapidlease$applicantid" BIGINT NOT NULL,
	"rapidlease$checklistid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$applicantid","rapidlease$checklistid"));
CREATE INDEX "idx_rapidlease$applicant_checklist_rapidlease$checklist_rapidlease$applicant" ON "rapidlease$applicant_checklist" ("rapidlease$checklistid" ASC,"rapidlease$applicantid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b48b52cc-7773-48b9-98a4-7b683e0c23d4', 
'RapidLease.Applicant_CheckList', 
'rapidlease$applicant_checklist', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'88b4e618-4180-47da-b037-ee7786157a46', 
'rapidlease$applicantid', 
'rapidlease$checklistid', 
'idx_rapidlease$applicant_checklist_rapidlease$checklist_rapidlease$applicant');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211006 19:44:00';
