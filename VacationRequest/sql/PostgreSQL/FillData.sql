/*
Company: OptimaJet
Project: DWKitSample DWKIT.COM
File: FillData.sql
*/

BEGIN;
INSERT INTO "dwSecurityRole"("Id", "Code", "Name") VALUES ('8d378ebe-0666-46b3-b7ab-1a52480fd12a', 'BigBoss', 'BigBoss');
INSERT INTO "dwSecurityRole"("Id", "Code", "Name") VALUES ('412174c2-0490-4101-a7b3-830de90bcaa0', 'Accountant', 'Accountant');
INSERT INTO "dwSecurityRole"("Id", "Code", "Name") VALUES ('71fffb5b-b707-4b3c-951c-c37fdfcc8dfb', 'User', 'User');

INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('81537e21-91c5-4811-a546-2dddff6bf409', 'Silviya', 'silviya@domain.com');
INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('b0e6fd4c-2db9-4bb6-a62e-68b6b8999905', 'Margo', 'margo@domain.com');
INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('deb579f9-991c-4db9-a17d-bb1eccf2842c', 'Max', 'max@domain.com');
INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('91f2b471-4a96-4ab7-a41a-ea4293703d16', 'John', 'john@domain.com');
INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('e41b48e3-c03d-484f-8764-1711248c4f8a', 'Maria', 'maria@domain.com');
INSERT INTO "dwSecurityUser"("Id", "Name", "Email") VALUES ('bbe686f8-8736-48a7-a886-2da25567f978', 'Mark', 'mark@domain.com');

INSERT INTO "dwSecurityCredential"
           ("Id","PasswordHash","PasswordSalt","SecurityUserId","Login","AuthenticationType") 
SELECT "Id", 'VatmT7uZ8YiKAbBNrCcm2J7iW5Q=', '/9xAN64KIM7tQ4qdAIgAwA==', "Id", lower("Name"), 0 FROM "dwSecurityUser"
	WHERE "Id" in (
'81537e21-91c5-4811-a546-2dddff6bf409',
'b0e6fd4c-2db9-4bb6-a62e-68b6b8999905',
'deb579f9-991c-4db9-a17d-bb1eccf2842c',
'91f2b471-4a96-4ab7-a41a-ea4293703d16',
'e41b48e3-c03d-484f-8764-1711248c4f8a',
'bbe686f8-8736-48a7-a886-2da25567f978');

INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('157B945E-CED5-44CE-8CF7-7999A15387B8', 'e41b48e3-c03d-484f-8764-1711248c4f8a', '412174c2-0490-4101-a7b3-830de90bcaa0');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('257B945E-CED5-44CE-8CF7-7999A15387B8', 'e41b48e3-c03d-484f-8764-1711248c4f8a', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('357B945E-CED5-44CE-8CF7-7999A15387B8', 'bbe686f8-8736-48a7-a886-2da25567f978', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('457B945E-CED5-44CE-8CF7-7999A15387B8', '81537e21-91c5-4811-a546-2dddff6bf409', '8d378ebe-0666-46b3-b7ab-1a52480fd12a');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('557B945E-CED5-44CE-8CF7-7999A15387B8', '81537e21-91c5-4811-a546-2dddff6bf409', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('657B945E-CED5-44CE-8CF7-7999A15387B8', 'b0e6fd4c-2db9-4bb6-a62e-68b6b8999905', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('757B945E-CED5-44CE-8CF7-7999A15387B8', 'deb579f9-991c-4db9-a17d-bb1eccf2842c', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');
INSERT INTO "dwSecurityUserToSecurityRole"("Id", "SecurityUserId", "SecurityRoleId") VALUES ('857B945E-CED5-44CE-8CF7-7999A15387B8', '91f2b471-4a96-4ab7-a41a-ea4293703d16', '71fffb5b-b707-4b3c-951c-c37fdfcc8dfb');

COMMIT;