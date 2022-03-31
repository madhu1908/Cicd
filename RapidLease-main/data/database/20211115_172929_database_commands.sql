ALTER TABLE "financials$generalledger" ADD "totalcredit" DECIMAL(28, 8) NULL;
UPDATE "financials$generalledger"
 SET "totalcredit" = 0;
ALTER TABLE "financials$generalledger" ADD "totaldebit" DECIMAL(28, 8) NULL;
UPDATE "financials$generalledger"
 SET "totaldebit" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fed18c16-a62e-4757-a0b8-8e9035b1e233', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'TotalDebit', 
'totaldebit', 
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
 VALUES ('d06475d8-4506-4ed7-906b-c53dcb4a2bf5', 
'3d31557a-0878-49d5-9c1c-a4f973f7e012', 
'TotalCredit', 
'totalcredit', 
5, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20211115 17:29:29';
