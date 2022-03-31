ALTER TABLE "financials$bankaccount_property" DROP CONSTRAINT "uniq_financials$bankaccount_property_financials$bankaccountid";
DROP INDEX "idx_financials$bankaccount_property_rapidlease$property_financials$bankaccount";
ALTER TABLE "financials$bankaccount_property" RENAME TO "financials$property_recorddeposit";
CREATE INDEX "idx_financials$property_recorddeposit_rapidlease$property_financials$bankaccount" ON "financials$property_recorddeposit" ("rapidlease$propertyid" ASC,"financials$bankaccountid" ASC);
ALTER TABLE "financials$property_recorddeposit" ADD CONSTRAINT "uniq_financials$property_recorddeposit_financials$bankaccountid" UNIQUE ("financials$bankaccountid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_financials$bankaccount_property_financials$bankaccountid' AND "column_id" = '3a032d92-c4ad-3d68-ab82-9eb3375a767c';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_financials$property_recorddeposit_financials$bankaccountid', 
'a4f827c4-d6a1-43f1-9090-d6f5b94e83d2', 
'3a032d92-c4ad-3d68-ab82-9eb3375a767c');
UPDATE "mendixsystem$association"
 SET "association_name" = 'Financials.Property_RecordDeposit', 
"table_name" = 'financials$property_recorddeposit', 
"parent_entity_id" = '8cceaf8e-591b-43b5-a712-9e21da20f376', 
"child_entity_id" = 'c181409a-fd0f-491d-8fae-d54b555deb83', 
"parent_column_name" = 'financials$bankaccountid', 
"child_column_name" = 'rapidlease$propertyid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_financials$property_recorddeposit_rapidlease$property_financials$bankaccount'
 WHERE "id" = 'a4f827c4-d6a1-43f1-9090-d6f5b94e83d2';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211118 14:55:41';
