ALTER TABLE "financials$generalledger" DROP COLUMN "tx_no";
ALTER TABLE "financials$generalledger" ALTER COLUMN "amount" SET DATA TYPE DECIMAL(28, 8);
ALTER TABLE "financials$generalledger" ADD "due_date" TIMESTAMP NULL;
CREATE SEQUENCE "financials$generalledger_tx_no_int_mxseq" AS BIGINT START WITH 100;
ALTER TABLE "financials$generalledger" ADD "tx_no_int" BIGINT NULL;
UPDATE "financials$generalledger"
 SET "tx_no_int" = NEXT VALUE FOR "financials$generalledger_tx_no_int_mxseq";
ALTER TABLE "financials$generalledger" ADD "add_row" BOOLEAN NULL;
UPDATE "financials$generalledger"
 SET "add_row" = false;
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '4bbf2f8a-7638-4915-8acb-82b40fe8e1d4';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '3d31557a-0878-49d5-9c1c-a4f973f7e012', 
"attribute_name" = 'Amount', 
"column_name" = 'amount', 
"type" = 5, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = 'b4c8e425-f23f-46ef-ab7d-7eec499a0419';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('f19d450f-432c-40a8-ae06-0d5dfc065972', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'Due_date', 
'due_date', 
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
 VALUES ('3baca216-7b33-4758-b0db-6c00c5922554', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'Add_Row', 
'add_row', 
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
 VALUES ('c938877f-9f91-4496-966c-5f8776cd1aae', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'Tx_No_Int', 
'tx_no_int', 
0, 
0, 
'100', 
true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('c938877f-9f91-4496-966c-5f8776cd1aae', 
'financials$generalledger_tx_no_int_mxseq', 
100, 
99);
ALTER TABLE "financials$bankaccount" ADD "signatureheading" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "financials$bankaccount" ADD "ischeck" BOOLEAN NULL;
UPDATE "financials$bankaccount"
 SET "ischeck" = false;
ALTER TABLE "financials$bankaccount" ADD "companyinfo" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "financials$bankaccount" ADD "bankinfo" VARCHAR_IGNORECASE(200) NULL;
ALTER TABLE "financials$bankaccount" ADD "checkformat" VARCHAR_IGNORECASE(26) NULL;
ALTER TABLE "financials$bankaccount" ADD "checkstock" VARCHAR_IGNORECASE(43) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fd645995-021d-4d98-aa45-bc8bbcf209ad', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Checkstock', 
'checkstock', 
40, 
43, 
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
 VALUES ('38d59e65-f8fb-4fdc-bdd0-d094c22da01a', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'SignatureHeading', 
'signatureheading', 
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
 VALUES ('c7e82a40-ae3a-4309-b7a3-2ec4de5f25e7', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'BankInfo', 
'bankinfo', 
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
 VALUES ('ca579ca5-00c5-4024-a225-47145398c62a', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Ischeck', 
'ischeck', 
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
 VALUES ('b8abfb87-682a-4625-9b07-4a025613ed60', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'CheckFormat', 
'checkformat', 
40, 
26, 
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
 VALUES ('38c2ba5c-7162-45bd-aec5-67ad91d64fe9', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'CompanyInfo', 
'companyinfo', 
30, 
200, 
'', 
false);
CREATE TABLE "financials$rent_rentroll" (
	"id" BIGINT NOT NULL,
	"status" VARCHAR_IGNORECASE(7) NULL,
	"rent_total" DECIMAL(28, 8) NULL,
	"rent_cyle" VARCHAR_IGNORECASE(16) NULL,
	"end_date" TIMESTAMP NULL,
	"start_date" TIMESTAMP NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'Financials.Rent_RentRoll', 
'financials$rent_rentroll', 
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
 VALUES ('87f0cbfd-ff20-4060-8c40-858ecf7854f2', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'Status', 
'status', 
40, 
7, 
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
 VALUES ('0e480ab6-9fb8-40ee-bde4-c7e678055452', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'Rent_Total', 
'rent_total', 
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
 VALUES ('5f114238-26fc-4849-a78f-0912bd306c22', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'Rent_Cyle', 
'rent_cyle', 
40, 
16, 
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
 VALUES ('cb25ffbb-0e0e-4a24-85a4-74194a8e887a', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'End_date', 
'end_date', 
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
 VALUES ('8c6358df-0467-44bf-b4ce-ed08540ad99f', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'start_date', 
'start_date', 
20, 
0, 
'', 
false);
CREATE TABLE "financials$lease_rent" (
	"financials$rent_rentrollid" BIGINT NOT NULL,
	"rapidlease$leaseid" BIGINT NOT NULL,
	PRIMARY KEY("financials$rent_rentrollid","rapidlease$leaseid"),
	CONSTRAINT "uniq_financials$lease_rent_financials$rent_rentrollid" UNIQUE ("financials$rent_rentrollid"));
CREATE INDEX "idx_financials$lease_rent_rapidlease$lease_financials$rent_rentroll" ON "financials$lease_rent" ("rapidlease$leaseid" ASC,"financials$rent_rentrollid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('1569560b-1248-4101-8c2f-c15ae39b810c', 
'Financials.Lease_rent', 
'financials$lease_rent', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'1ae41165-e98d-41a4-a817-96e5e8b16546', 
'financials$rent_rentrollid', 
'rapidlease$leaseid', 
'idx_financials$lease_rent_rapidlease$lease_financials$rent_rentroll');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$lease_rent_financials$rent_rentrollid', 
'1569560b-1248-4101-8c2f-c15ae39b810c', 
'5b02718d-9cfd-301b-af73-411607191100');
CREATE TABLE "financials$generalledger_rent_rentroll" (
	"financials$generalledgerid" BIGINT NOT NULL,
	"financials$rent_rentrollid" BIGINT NOT NULL,
	PRIMARY KEY("financials$generalledgerid","financials$rent_rentrollid"),
	CONSTRAINT "uniq_financials$generalledger_rent_rentroll_financials$generalledgerid" UNIQUE ("financials$generalledgerid"));
CREATE INDEX "idx_financials$generalledger_rent_rentroll_financials$rent_rentroll_financials$generalledger" ON "financials$generalledger_rent_rentroll" ("financials$rent_rentrollid" ASC,"financials$generalledgerid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('c3cadf05-165e-4977-968e-6a21cab7b13c', 
'Financials.GeneralLedger_Rent_RentRoll', 
'financials$generalledger_rent_rentroll', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'a54ef075-3673-465c-b8fc-f145c15d8bf9', 
'financials$generalledgerid', 
'financials$rent_rentrollid', 
'idx_financials$generalledger_rent_rentroll_financials$rent_rentroll_financials$generalledger');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$generalledger_rent_rentroll_financials$generalledgerid', 
'c3cadf05-165e-4977-968e-6a21cab7b13c', 
'9a1f7e8f-7814-3f81-9c68-9fd7c6ea3c50');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211119 09:59:36';
