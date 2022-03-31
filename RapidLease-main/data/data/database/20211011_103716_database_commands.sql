ALTER TABLE "rapidlease$offer" ADD "flag" BOOLEAN NULL;
UPDATE "rapidlease$offer"
 SET "flag" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('260d1072-c0b6-4800-848d-bc83ed9bbcad', 
'894c0a69-cf26-4ea2-aaa8-3a082fed01c2', 
'Flag', 
'flag', 
10, 
0, 
'false', 
false);
CREATE TABLE "rapidlease$filereport" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('84573feb-1bd1-4866-9637-d97e0da0be62', 
'RapidLease.FileReport', 
'rapidlease$filereport', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
false, 
false);
CREATE TABLE "rapidlease$filereport_applicant" (
	"rapidlease$filereportid" BIGINT NOT NULL,
	"rapidlease$applicantid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$filereportid","rapidlease$applicantid"),
	CONSTRAINT "uniq_rapidlease$filereport_applicant_rapidlease$filereportid" UNIQUE ("rapidlease$filereportid"));
CREATE INDEX "idx_rapidlease$filereport_applicant_rapidlease$applicant_rapidlease$filereport" ON "rapidlease$filereport_applicant" ("rapidlease$applicantid" ASC,"rapidlease$filereportid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8a62c0fd-3b35-4b70-8859-c8bc425264cc', 
'RapidLease.FileReport_Applicant', 
'rapidlease$filereport_applicant', 
'84573feb-1bd1-4866-9637-d97e0da0be62', 
'48d456c7-32a0-4fea-9f50-481cae2e5762', 
'rapidlease$filereportid', 
'rapidlease$applicantid', 
'idx_rapidlease$filereport_applicant_rapidlease$applicant_rapidlease$filereport');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$filereport_applicant_rapidlease$filereportid', 
'8a62c0fd-3b35-4b70-8859-c8bc425264cc', 
'3c234c25-d813-307d-9958-55494c16d545');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211011 10:37:16';
