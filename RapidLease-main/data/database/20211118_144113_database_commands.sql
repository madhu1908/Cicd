ALTER TABLE "rapidlease$clausetemplate" ADD "agreementtype" VARCHAR_IGNORECASE(13) NULL;
ALTER TABLE "rapidlease$clausetemplate" ADD "status" VARCHAR_IGNORECASE(16) NULL;
ALTER TABLE "rapidlease$clausetemplate" ADD "contract_type" VARCHAR_IGNORECASE(16) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('edddb1e2-9ae7-4a1e-9d31-6506998bf1c0', 
'4e036dfc-2809-4f59-95d8-81a885495385', 
'AgreementType', 
'agreementtype', 
40, 
13, 
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
 VALUES ('f6b31162-16c5-406b-a911-16b26fc003c6', 
'4e036dfc-2809-4f59-95d8-81a885495385', 
'Status', 
'status', 
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
 VALUES ('5a92d241-fd5b-442d-9573-6c2e726845a2', 
'4e036dfc-2809-4f59-95d8-81a885495385', 
'Contract_type', 
'contract_type', 
40, 
16, 
'', 
false);
ALTER TABLE "financials$charges_payments" DROP COLUMN "recon_date";
ALTER TABLE "financials$charges_payments" DROP COLUMN "is_deposited";
ALTER TABLE "financials$charges_payments" ADD "is_deposited" BOOLEAN NULL;
UPDATE "financials$charges_payments"
 SET "is_deposited" = false;
ALTER TABLE "financials$charges_payments" ADD "memo" VARCHAR_IGNORECASE(200) NULL;
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '57e931d0-0f5f-4b6a-9f43-e247f45ab584';
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '81196413-2316-4062-a5c6-bc3e42b2b652', 
"attribute_name" = 'Is_Deposited', 
"column_name" = 'is_deposited', 
"type" = 10, 
"length" = 0, 
"default_value" = 'false', 
"is_auto_number" = false
 WHERE "id" = '54601840-654b-44af-ad8b-2982bbd50d05';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('a6199283-e5e1-4fa6-bc2b-c32e3e1b105f', 
'81196413-2316-4062-a5c6-bc3e42b2b652', 
'Memo', 
'memo', 
30, 
200, 
'', 
false);
ALTER TABLE "financials$bankaccount" ADD "reconciliation_date" TIMESTAMP NULL;
ALTER TABLE "financials$bankaccount" ADD "undeposited_amount" DECIMAL(28, 8) NULL;
ALTER TABLE "financials$bankaccount" ALTER COLUMN "balance" SET DATA TYPE DECIMAL(28, 8);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('828f4a64-2f60-405f-a534-d20da3e612ec', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'UnDeposited_Amount', 
'undeposited_amount', 
5, 
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
 VALUES ('b1384813-d1e7-4fbe-840c-da620a273ca0', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'Reconciliation_Date', 
'reconciliation_date', 
20, 
0, 
'', 
false);
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '8cceaf8e-591b-43b5-a712-9e21da20f376', 
"attribute_name" = 'Balance', 
"column_name" = 'balance', 
"type" = 5, 
"length" = 0, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '458e8ea3-269f-48f8-b226-e54e3301a40f';
ALTER TABLE "assets_and_maintenance$quotations" ADD "approval_status" VARCHAR_IGNORECASE(7) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('37fe7e82-7731-4832-9b45-6404c105e5ff', 
'eca680ff-8c87-49d1-958a-650b8f7d2c71', 
'Approval_Status', 
'approval_status', 
40, 
7, 
'', 
false);
CREATE TABLE "financials$deposit_to_bankaccount" (
	"financials$charges_paymentsid" BIGINT NOT NULL,
	"financials$bankaccountid" BIGINT NOT NULL,
	PRIMARY KEY("financials$charges_paymentsid","financials$bankaccountid"),
	CONSTRAINT "uniq_financials$deposit_to_bankaccount_financials$charges_paymentsid" UNIQUE ("financials$charges_paymentsid"));
CREATE INDEX "idx_financials$deposit_to_bankaccount_financials$bankaccount_financials$charges_payments" ON "financials$deposit_to_bankaccount" ("financials$bankaccountid" ASC,"financials$charges_paymentsid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('eabc08e8-88bb-420b-b338-c1d690be6f13', 
'Financials.Deposit_To_Bankaccount', 
'financials$deposit_to_bankaccount', 
'81196413-2316-4062-a5c6-bc3e42b2b652', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'financials$charges_paymentsid', 
'financials$bankaccountid', 
'idx_financials$deposit_to_bankaccount_financials$bankaccount_financials$charges_payments');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$deposit_to_bankaccount_financials$charges_paymentsid', 
'eabc08e8-88bb-420b-b338-c1d690be6f13', 
'df5b9575-413d-303e-8b63-83b690959792');
CREATE TABLE "financials$bankaccount_property" (
	"financials$bankaccountid" BIGINT NOT NULL,
	"rapidlease$propertyid" BIGINT NOT NULL,
	PRIMARY KEY("financials$bankaccountid","rapidlease$propertyid"),
	CONSTRAINT "uniq_financials$bankaccount_property_financials$bankaccountid" UNIQUE ("financials$bankaccountid"));
CREATE INDEX "idx_financials$bankaccount_property_rapidlease$property_financials$bankaccount" ON "financials$bankaccount_property" ("rapidlease$propertyid" ASC,"financials$bankaccountid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('a4f827c4-d6a1-43f1-9090-d6f5b94e83d2', 
'Financials.BankAccount_Property', 
'financials$bankaccount_property', 
'8cceaf8e-591b-43b5-a712-9e21da20f376', 
'c181409a-fd0f-491d-8fae-d54b555deb83', 
'financials$bankaccountid', 
'rapidlease$propertyid', 
'idx_financials$bankaccount_property_rapidlease$property_financials$bankaccount');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$bankaccount_property_financials$bankaccountid', 
'a4f827c4-d6a1-43f1-9090-d6f5b94e83d2', 
'3a032d92-c4ad-3d68-ab82-9eb3375a767c');
CREATE TABLE "rapidlease$taxcode" (
	"id" BIGINT NOT NULL,
	"taxname" VARCHAR_IGNORECASE(200) NULL,
	"systemcode" VARCHAR_IGNORECASE(200) NULL,
	"currenttaxrate" DECIMAL(28, 8) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('f5bc0da6-4730-4234-9af3-8b9263078a92', 
'RapidLease.TaxCode', 
'rapidlease$taxcode', 
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
 VALUES ('4482e4f8-769d-4982-b34f-e1b89a70309b', 
'f5bc0da6-4730-4234-9af3-8b9263078a92', 
'TaxName', 
'taxname', 
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
 VALUES ('f7218da7-0c69-449f-94ca-688ac40282ee', 
'f5bc0da6-4730-4234-9af3-8b9263078a92', 
'SystemCode', 
'systemcode', 
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
 VALUES ('d823d31a-ab8f-4be0-ae53-c9e45913038b', 
'f5bc0da6-4730-4234-9af3-8b9263078a92', 
'CurrentTaxRate', 
'currenttaxrate', 
5, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211118 14:41:13';
