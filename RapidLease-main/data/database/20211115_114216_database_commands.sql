UPDATE "mendixsystem$attribute"
 SET "entity_id" = '1ae41165-e98d-41a4-a817-96e5e8b16546', 
"attribute_name" = 'Drafted', 
"column_name" = 'drafted', 
"type" = 10, 
"length" = 0, 
"default_value" = 'true', 
"is_auto_number" = false
 WHERE "id" = '9e924e50-bd4e-4f24-b2d5-d1a037a7f4fc';
CREATE TABLE "rapidlease$signature" (
	"id" BIGINT NOT NULL,
	"tenantname" VARCHAR_IGNORECASE(200) NULL,
	"signed" BOOLEAN NULL,
	"sign" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"superentity_id", 
"remote", 
"remote_primary_key")
 VALUES ('ca52dca5-c12c-43cc-9dc5-0f3b60f0c004', 
'RapidLease.Signature', 
'rapidlease$signature', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
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
 VALUES ('d7241617-972b-460b-ab39-64cd72f48062', 
'ca52dca5-c12c-43cc-9dc5-0f3b60f0c004', 
'TenantName', 
'tenantname', 
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
 VALUES ('f44e5689-18ed-4c5a-8e64-b79ee8c12c4e', 
'ca52dca5-c12c-43cc-9dc5-0f3b60f0c004', 
'Signed', 
'signed', 
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
 VALUES ('6382c7b6-062a-4061-ae79-12d6dc8c9dd8', 
'ca52dca5-c12c-43cc-9dc5-0f3b60f0c004', 
'Sign', 
'sign', 
10, 
0, 
'false', 
false);
CREATE TABLE "rapidlease$signature_lease" (
	"rapidlease$signatureid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$signatureid","rapidlease$leaseid"),
	CONSTRAINT "uniq_rapidlease$signature_lease_rapidlease$signatureid" UNIQUE ("rapidlease$signatureid"));
CREATE INDEX "idx_rapidlease$signature_lease_rapidlease$lease_rapidlease$signature" ON "rapidlease$signature_lease" ("rapidlease$leaseid" ASC,"rapidlease$signatureid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4b323b53-5169-4665-a497-729271c0deb0', 
'RapidLease.Signature_Lease', 
'rapidlease$signature_lease', 
'ca52dca5-c12c-43cc-9dc5-0f3b60f0c004', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'rapidlease$signatureid', 
'rapidlease$leaseid', 
'idx_rapidlease$signature_lease_rapidlease$lease_rapidlease$signature');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$signature_lease_rapidlease$signatureid', 
'4b323b53-5169-4665-a497-729271c0deb0', 
'752a0350-8448-34f8-b480-4156c5c7334c');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211115 11:42:16';
