ALTER TABLE "rapidlease$ownership_accounts_association" DROP CONSTRAINT "uniq_rapidlease$ownership_accounts_association_rapidlease$ownership_accountsid";
DROP INDEX "idx_rapidlease$ownership_accounts_association_rapidlease$association_rapidlease$ownership_accounts";
ALTER TABLE "rapidlease$ownership_accounts_association" RENAME TO "7f3df62a94f2413498ded610db9707cc";
ALTER TABLE "rapidlease$property" ADD "isedit" BOOLEAN NULL;
UPDATE "rapidlease$property"
 SET "isedit" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d1990b33-9f06-4b38-b17b-0d6d74614b93', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'IsEdit', 
'isedit', 
10, 
0, 
'false', 
false);
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "home" RENAME TO "streetaddress2";
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "landline" RENAME TO "state2";
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "office" RENAME TO "city2";
ALTER TABLE "rapidlease$vendor" ADD "zip2" INT NULL;
ALTER TABLE "rapidlease$vendor" ADD "country2" VARCHAR_IGNORECASE(44) NULL;
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "streetaddress2" RENAME TO "7104477c6aac400ab62c991d7f788544";
ALTER TABLE "rapidlease$vendor" ADD "streetaddress2" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$vendor"
 SET "streetaddress2" = CAST("7104477c6aac400ab62c991d7f788544" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$vendor" DROP COLUMN "7104477c6aac400ab62c991d7f788544";
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "state2" RENAME TO "8b2b54e8bf5f4c0eb6061dc3254f04fa";
ALTER TABLE "rapidlease$vendor" ADD "state2" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$vendor"
 SET "state2" = CAST("8b2b54e8bf5f4c0eb6061dc3254f04fa" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$vendor" DROP COLUMN "8b2b54e8bf5f4c0eb6061dc3254f04fa";
ALTER TABLE "rapidlease$vendor" ALTER COLUMN "city2" RENAME TO "228655034e8b45eda31438fb8759832c";
ALTER TABLE "rapidlease$vendor" ADD "city2" VARCHAR_IGNORECASE(200) NULL;
UPDATE "rapidlease$vendor"
 SET "city2" = CAST("228655034e8b45eda31438fb8759832c" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "rapidlease$vendor" DROP COLUMN "228655034e8b45eda31438fb8759832c";
ALTER TABLE "rapidlease$vendor" ADD "status" VARCHAR_IGNORECASE(8) NULL;
UPDATE "rapidlease$vendor"
 SET "status" = 'Active';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'Zip', 
"column_name" = 'zip', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '7e692b3c-3b0b-4c64-81eb-18466a94a435';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'diffaddress', 
"column_name" = 'diffaddress', 
"type" = 10, 
"length" = 0, 
"default_value" = 'false', 
"is_auto_number" = false
 WHERE "id" = '3c8b98fd-9d6a-4cc6-a246-64d749e674fb';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'StreetAddress2', 
"column_name" = 'streetaddress2', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'f908ee04-cb4d-48a9-b161-a74bfa90585b';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('4b2e6fdd-f07a-472b-b9ff-c617fb08d8d8', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'Country2', 
'country2', 
40, 
44, 
'', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'State2', 
"column_name" = 'state2', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'f5f18324-f44d-4afc-94cd-d7978434bd8e';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'Phone', 
"column_name" = 'phone', 
"type" = 3, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '0f556349-2833-47e5-9632-863cb3eec91c';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c6eadc38-a127-4970-9f8d-ec1e52600891', 
"attribute_name" = 'City2', 
"column_name" = 'city2', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '78428db4-727f-40db-9cfc-1c72cea9261c';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('4898b54e-c179-470e-9224-abd2b358d8c0', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'Zip2', 
'zip2', 
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
 VALUES ('510e1e45-a3bb-49c1-a519-51f71d22e37e', 
'c6eadc38-a127-4970-9f8d-ec1e52600891', 
'status', 
'status', 
40, 
8, 
'Active', 
false);
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'be3f6c7b-61f9-4345-808c-62b0769f76d4';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_rapidlease$ownership_accounts_association_rapidlease$ownership_accountsid' AND "column_id" = '75c75695-e9ea-37e3-bdb3-78328273b2ed';
ALTER TABLE "rapidlease$address" DROP COLUMN "country";
ALTER TABLE "rapidlease$address" ADD "changeddate" TIMESTAMP NULL;
ALTER TABLE "rapidlease$address" ADD "createddate" TIMESTAMP NULL;
ALTER TABLE "rapidlease$address" ADD "country" VARCHAR_IGNORECASE(44) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('cb9ba684-06a2-3df5-98d5-c8b498dc3b32', 
'f67a581b-17aa-4beb-8482-d886b322f9f0', 
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
 VALUES ('f4d2d1fc-b7b1-3753-a7e1-3fc8c0bc5a9e', 
'f67a581b-17aa-4beb-8482-d886b322f9f0', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'f67a581b-17aa-4beb-8482-d886b322f9f0', 
"attribute_name" = 'Country', 
"column_name" = 'country', 
"type" = 40, 
"length" = 44, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'd02e45c0-4bab-44d7-9a7e-bac9970daaa0';
CREATE TABLE "rapidlease$entity" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('372476db-e202-46bf-9b4f-f04ed799f5bd', 
'RapidLease.Entity', 
'rapidlease$entity', 
false, 
false);
CREATE TABLE "rapidlease$ownership_accounts_association" (
	"rapidlease$ownership_accountsid" BIGINT NOT NULL,
	"rapidlease$associationid" BIGINT NOT NULL,
	PRIMARY KEY("rapidlease$ownership_accountsid","rapidlease$associationid"),
	CONSTRAINT "uniq_rapidlease$ownership_accounts_association_rapidlease$ownership_accountsid" UNIQUE ("rapidlease$ownership_accountsid"));
CREATE INDEX "idx_rapidlease$ownership_accounts_association_rapidlease$association_rapidlease$ownership_accounts" ON "rapidlease$ownership_accounts_association" ("rapidlease$associationid" ASC,"rapidlease$ownership_accountsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('c4e40843-1b9f-45de-93c5-93ee0b4f836d', 
'RapidLease.Ownership_accounts_Association', 
'rapidlease$ownership_accounts_association', 
'd13c5b84-fb99-442a-bfb0-ab992096459c', 
'0843f999-396a-4ab3-9bfb-2014673bdfe2', 
'rapidlease$ownership_accountsid', 
'rapidlease$associationid', 
'idx_rapidlease$ownership_accounts_association_rapidlease$association_rapidlease$ownership_accounts');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$ownership_accounts_association_rapidlease$ownership_accountsid', 
'c4e40843-1b9f-45de-93c5-93ee0b4f836d', 
'47b84b7f-2149-3a19-8090-878a281e54ba');
DROP TABLE "7f3df62a94f2413498ded610db9707cc";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210930 15:01:11';
