ALTER TABLE "financials$bankaccount" ALTER COLUMN "account_number" RENAME TO "a4f9eb4b7a4a4921a5eb62f171a47d84";
ALTER TABLE "financials$bankaccount" ADD "account_number" VARCHAR_IGNORECASE(200) NULL;
UPDATE "financials$bankaccount"
 SET "account_number" = CAST("a4f9eb4b7a4a4921a5eb62f171a47d84" AS VARCHAR_IGNORECASE(200));
ALTER TABLE "financials$bankaccount" DROP COLUMN "a4f9eb4b7a4a4921a5eb62f171a47d84";
UPDATE "mendixsystem$attribute"
 SET "entity_id" = '8cceaf8e-591b-43b5-a712-9e21da20f376', 
"attribute_name" = 'Account_Number', 
"column_name" = 'account_number', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '49981998-81bb-4fe5-b03f-e02e3a45765b';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211118 16:15:43';
