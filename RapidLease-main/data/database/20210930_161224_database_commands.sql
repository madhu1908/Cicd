ALTER TABLE "rapidlease$address_tenant" ADD CONSTRAINT "uniq_rapidlease$address_tenant_rapidlease$tenantid" UNIQUE ("rapidlease$tenantid");
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_rapidlease$address_tenant_rapidlease$tenantid', 
'a444d1fa-5a47-4f73-8f4c-944451755e78', 
'23bbafd3-a37a-3494-b89c-38fcda2c2b35');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210930 16:12:24';
