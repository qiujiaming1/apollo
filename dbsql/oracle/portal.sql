-- Create table
create table "App"
(
  "Id"                        NUMBER primary key not null,
  "AppId"                     VARCHAR2(500) default 'default' not null,
  "Name"                      VARCHAR2(500) default 'default' not null,
  "OrgId"                     VARCHAR2(32) default 'default' not null,
  "OrgName"                   VARCHAR2(64) default 'default' not null,
  "OwnerName"                 VARCHAR2(500) default 'default' not null,
  "OwnerEmail"                VARCHAR2(500) default 'default' not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "App"
  is 'Ӧ�ñ�';
-- Add comments to the columns 
comment on column "App"."Id"
  is '����';
comment on column "App"."AppId"
  is 'AppID';
comment on column "App"."Name"
  is 'Ӧ����';
comment on column "App"."OrgId"
  is '����Id';
comment on column "App"."OrgName"
  is '��������';
comment on column "App"."OwnerName"
  is 'ownerName';
comment on column "App"."OwnerEmail"
  is 'ownerEmail';
comment on column "App"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "App"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "App"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "App"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index AppId on "App" ("AppId");
create index DataChange_LastTime on "App" ("DataChange_LastTime");
create index IX_Name on "App" ("Name");


-- Create table
create table "AppNamespace"
(
  "Id"                        NUMBER primary key not null,
  "Name"                      VARCHAR2(32) not null,
  "AppId"                     VARCHAR2(32) not null,
  "Format"                    VARCHAR2(32) default 'properties' not null,
  "IsPublic"                  NUMBER(3) default 1 not null,
  "Comment"                   VARCHAR2(64),
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32),
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "AppNamespace"
  is 'Ӧ��namespace����';
-- Add comments to the columns 
comment on column "AppNamespace"."Id"
  is '����';
comment on column "AppNamespace"."Name"
  is 'namespace���֣�ע�⣬��Ҫȫ��Ψһ';
comment on column "AppNamespace"."AppId"
  is 'app id';
comment on column "AppNamespace"."Format"
  is 'namespace��format����';
comment on column "AppNamespace"."Comment"
  is 'ע��';
comment on column "AppNamespace"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "AppNamespace"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "AppNamespace"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "AppNamespace"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index DataChange_LastTime00000 on "AppNamespace" ("DataChange_LastTime");
create index IX_AppId on "AppNamespace" ("AppId");
create index Name_AppId on "AppNamespace" ("Name", "AppId");


-- Create table
create table "Consumer"
(
  "Id"                        NUMBER primary key not null,
  "AppId"                     VARCHAR2(500) default 'default' not null,
  "Name"                      VARCHAR2(500) default 'default' not null,
  "OrgId"                     VARCHAR2(32) default 'default' not null,
  "OrgName"                   VARCHAR2(64) default 'default' not null,
  "OwnerName"                 VARCHAR2(500) default 'default' not null,
  "OwnerEmail"                VARCHAR2(500) default 'default' not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "Consumer"
  is '����API������';
-- Add comments to the columns 
comment on column "Consumer"."Id"
  is '����';
comment on column "Consumer"."AppId"
  is 'AppID';
comment on column "Consumer"."Name"
  is 'Ӧ����';
comment on column "Consumer"."OrgId"
  is '����Id';
comment on column "Consumer"."OrgName"
  is '��������';
comment on column "Consumer"."OwnerName"
  is 'ownerName';
comment on column "Consumer"."OwnerEmail"
  is 'ownerEmail';
comment on column "Consumer"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "Consumer"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "Consumer"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "Consumer"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index AppId00000 on "Consumer" ("AppId");
create index DataChange_LastTime00001 on "Consumer" ("DataChange_LastTime");


-- Create table
create table "ConsumerAudit"
(
  "Id"                     NUMBER primary key not null,
  "ConsumerId"             NUMBER,
  "Uri"                    VARCHAR2(1024) not null,
  "Method"                 VARCHAR2(16) not null,
  "DataChange_CreatedTime" DATE not null,
  "DataChange_LastTime"    DATE
);
-- Add comments to the table 
comment on table "ConsumerAudit"
  is 'consumer��Ʊ�';
-- Add comments to the columns 
comment on column "ConsumerAudit"."Id"
  is '����';
comment on column "ConsumerAudit"."ConsumerId"
  is 'Consumer Id';
comment on column "ConsumerAudit"."Uri"
  is '���ʵ�Uri';
comment on column "ConsumerAudit"."Method"
  is '���ʵ�Method';
comment on column "ConsumerAudit"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "ConsumerAudit"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_ConsumerId on "ConsumerAudit" ("ConsumerId");
create index IX_DataChange_LastTime on "ConsumerAudit" ("DataChange_CreatedTime");


-- Create table
create table "ConsumerRole"
(
  "Id"                        NUMBER primary key not null,
  "ConsumerId"                NUMBER,
  "RoleId"                    NUMBER,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "ConsumerRole"
  is 'consumer��role�İ󶨱�';
-- Add comments to the columns 
comment on column "ConsumerRole"."Id"
  is '����';
comment on column "ConsumerRole"."ConsumerId"
  is 'Consumer Id';
comment on column "ConsumerRole"."RoleId"
  is 'Role Id';
comment on column "ConsumerRole"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "ConsumerRole"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "ConsumerRole"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "ConsumerRole"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_ConsumerId_RoleId on "ConsumerRole" ("ConsumerId", "RoleId");
create index IX_DataChange_LastTime00000 on "ConsumerRole" ("DataChange_LastTime");
create index IX_RoleId on "ConsumerRole" ("RoleId");

  
-- Create table
create table "ConsumerToken"
(
  "Id"                        NUMBER primary key not null,
  "ConsumerId"                NUMBER,
  "Token"                     VARCHAR2(128) not null,
  "Expires"                   TIMESTAMP(6) default to_date('2099-01-01', 'YYYY-MM-DD') not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "ConsumerToken"
  is 'consumer token��';
-- Add comments to the columns 
comment on column "ConsumerToken"."Id"
  is '����';
comment on column "ConsumerToken"."ConsumerId"
  is 'Consumer Id';
comment on column "ConsumerToken"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "ConsumerToken"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "ConsumerToken"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "ConsumerToken"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index DataChange_LastTime00002 on "ConsumerToken" ("DataChange_LastTime");
create unique index IX_Token on "ConsumerToken" (CASE  WHEN "Token" IS NOT NULL THEN "Token" END);
  

-- Create table
create table "Favorite"
(
  "Id"                        NUMBER primary key not null,
  "UserId"                    VARCHAR2(32) default 'default' not null,
  "AppId"                     VARCHAR2(500) default 'default' not null,
  "Position"                  NUMBER(10) default 10000 not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "Favorite"
  is 'Ӧ���ղر�';
-- Add comments to the columns 
comment on column "Favorite"."Id"
  is '����';
comment on column "Favorite"."UserId"
  is '�ղص��û�';
comment on column "Favorite"."AppId"
  is 'AppID';
comment on column "Favorite"."Position"
  is '�ղ�˳��';
comment on column "Favorite"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "Favorite"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "Favorite"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "Favorite"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index AppId00001 on "Favorite" ("AppId");
create index DataChange_LastTime00003 on "Favorite" ("DataChange_LastTime");
create index IX_UserId on "Favorite" ("UserId");


-- Create table
create table "Permission"
(
  "Id"                        NUMBER primary key not null,
  "PermissionType"            VARCHAR2(32) not null,
  "TargetId"                  VARCHAR2(256) not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32),
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "Permission"
  is 'permission��';
-- Add comments to the columns 
comment on column "Permission"."Id"
  is '����';
comment on column "Permission"."PermissionType"
  is 'Ȩ������';
comment on column "Permission"."TargetId"
  is 'Ȩ�޶�������';
comment on column "Permission"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "Permission"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "Permission"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "Permission"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_DataChange_LastTime00001 on "Permission" ("DataChange_LastTime");
create index IX_TargetId_PermissionType on "Permission" ("TargetId", "PermissionType");


-- Create table
create table "Role"
(
  "Id"                        NUMBER primary key not null,
  "RoleName"                  VARCHAR2(256) not null,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32),
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "Role"
  is '��ɫ��';
-- Add comments to the columns 
comment on column "Role"."Id"
  is '����';
comment on column "Role"."RoleName"
  is 'Role name';
comment on column "Role"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "Role"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "Role"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "Role"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_DataChange_LastTime00002 on "Role" ("DataChange_LastTime");
create index IX_RoleName on "Role" ("RoleName");


-- Create table
create table "RolePermission"
(
  "Id"                        NUMBER primary key not null,
  "RoleId"                    NUMBER,
  "PermissionId"              NUMBER,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32),
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "RolePermission"
  is '��ɫ��Ȩ�޵İ󶨱�';
-- Add comments to the columns 
comment on column "RolePermission"."Id"
  is '����';
comment on column "RolePermission"."RoleId"
  is 'Role Id';
comment on column "RolePermission"."PermissionId"
  is 'Permission Id';
comment on column "RolePermission"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "RolePermission"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "RolePermission"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "RolePermission"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_DataChange_LastTime00003 on "RolePermission" ("DataChange_LastTime");
create index IX_PermissionId on "RolePermission" ("PermissionId");
create index IX_RoleId00000 on "RolePermission" ("RoleId");


-- Create table
create table "UserRole"
(
  "Id"                        NUMBER primary key not null,
  "UserId"                    VARCHAR2(128),
  "RoleId"                    NUMBER,
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32),
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "UserRole"
  is '�û���role�İ󶨱�';
-- Add comments to the columns 
comment on column "UserRole"."Id"
  is '����';
comment on column "UserRole"."UserId"
  is '�û���ݱ�ʶ';
comment on column "UserRole"."RoleId"
  is 'Role Id';
comment on column "UserRole"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "UserRole"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "UserRole"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "UserRole"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index IX_DataChange_LastTime00004 on "UserRole" ("DataChange_LastTime");
create index IX_RoleId00001 on "UserRole" ("RoleId");
create index IX_UserId_RoleId on "UserRole" ("UserId", "RoleId");


-- Create table
create table "ServerConfig"
(
  "Id"                        NUMBER primary key not null,
  "Key"                       VARCHAR2(64) default 'default' not null,
  "Value"                     VARCHAR2(2048),
  "Comment"                   VARCHAR2(1024),
  "IsDeleted"                 NUMBER(3) default 0 not null,
  "DataChange_CreatedBy"      VARCHAR2(32) default 'default' not null,
  "DataChange_CreatedTime"    DATE not null,
  "DataChange_LastModifiedBy" VARCHAR2(32),
  "DataChange_LastTime"       DATE
);
-- Add comments to the table 
comment on table "ServerConfig"
  is '���÷�����������';
-- Add comments to the columns 
comment on column "ServerConfig"."Id"
  is '����';
comment on column "ServerConfig"."Key"
  is '������Key';
comment on column "ServerConfig"."Value"
  is '������ֵ';
comment on column "ServerConfig"."Comment"
  is 'ע��';
comment on column "ServerConfig"."DataChange_CreatedBy"
  is '����������ǰ׺';
comment on column "ServerConfig"."DataChange_CreatedTime"
  is '����ʱ��';
comment on column "ServerConfig"."DataChange_LastModifiedBy"
  is '����޸�������ǰ׺';
comment on column "ServerConfig"."DataChange_LastTime"
  is '����޸�ʱ��';
-- Create/Recreate indexes 
create index DataChange_LastTime00004 on "ServerConfig" ("DataChange_LastTime");
create index IX_Key on "ServerConfig" ("Key");


create table "Users"
(
  "Id" NUMBER primary key not null,
  "Username" VARCHAR2(64) default 'default' not null,
  "Password" VARCHAR2(64) default 'default' not null,
  "Email" VARCHAR2(64) default 'default' not null,
  "Enabled" NUMBER(4) default null
);
comment on table "Users"
  is '�û���';
comment on column "Users"."Id"
  is '����';
comment on column "Users"."Username"
  is '�û���';
comment on column "Users"."Password"
  is '����';
comment on column "Users"."Email"
  is '�����ַ';
comment on column "Users"."Enabled"
  is '�Ƿ���Ч';


create table "Authorities"
(
  "Id" NUMBER primary key not null,
  "Username" VARCHAR2(64) not null,
  "Authority" VARCHAR2(50) not null
);
comment on table "Authorities"
  is '��Ȩ��';
comment on column "Authorities"."Id"
  is '����';
comment on column "Authorities"."Username"
  is '�û���';
comment on column "Authorities"."Authority"
  is 'Ȩ��';

  
insert into "ServerConfig" 
values (1, 'apollo.portal.envs', 'dev', '��֧�ֵĻ����б�', 0, 'default', to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('15-09-2017 10:38:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into "ServerConfig" 
values (2, 'organizations', '[{"orgId":"TEST1","orgName":"��������1"},{"orgId":"TEST2","orgName":"��������2"}]', '�����б�', 0, 'default', to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'));

insert into "ServerConfig" 
values (3, 'superAdmin', 'apollo', 'Portal��������Ա', 0, 'default', to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'));

insert into "ServerConfig" 
values (4, 'api.readTimeout', '10000', 'http�ӿ�read timeout', 0, 'default', to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'));

insert into "ServerConfig" 
values (5, 'consumer.token.salt', 'someSalt', 'consumer token salt', 0, 'default', to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'), null, to_date('11-09-2017 15:36:47', 'dd-mm-yyyy hh24:mi:ss'));

insert into "Users"
values (1, 'apollo', '$2a$10$7r20uS.BQ9uBpf3Baj3uQOZvMVvB1RN3PYoKE94gtz2.WAOuiiwXS', 'apollo@acme.com', 1);

insert into "Authorities"
values (1, 'apollo', 'ROLE_user');

-- Sample Data
-- ------------------------------------------------------------
insert into "App" ("Id", "AppId", "Name", "OrgId", "OrgName", "OwnerName", "OwnerEmail", "DataChange_CreatedTime")
values (1, 'SampleApp', 'Sample App', 'TEST1', '��������1', 'apollo', 'apollo@acme.com', sysdate);

insert into "AppNamespace" ("Id", "Name", "AppId", "Format", "IsPublic", "Comment", "DataChange_CreatedTime")
values (1, 'application', 'SampleApp', 'properties', 0, 'default app namespace', sysdate);

insert into "Permission" ("Id", "PermissionType", "TargetId", "DataChange_CreatedTime")
values (1, 'CreateCluster', 'SampleApp', sysdate);

insert into "Permission" ("Id", "PermissionType", "TargetId", "DataChange_CreatedTime")
values (2, 'CreateNamespace', 'SampleApp', sysdate);

insert into "Permission" ("Id", "PermissionType", "TargetId", "DataChange_CreatedTime")
values (3, 'AssignRole', 'SampleApp', sysdate);

insert into "Permission" ("Id", "PermissionType", "TargetId", "DataChange_CreatedTime")
values (4, 'ModifyNamespace', 'SampleApp+application', sysdate);

insert into "Permission" ("Id", "PermissionType", "TargetId", "DataChange_CreatedTime")
values (5, 'ReleaseNamespace', 'SampleApp+application', sysdate);

insert into "Role" ("Id", "RoleName", "DataChange_CreatedTime")
values (1, 'Master+SampleApp', sysdate);

insert into "Role" ("Id", "RoleName", "DataChange_CreatedTime")
values (2, 'ModifyNamespace+SampleApp+application', sysdate);

insert into "Role" ("Id", "RoleName", "DataChange_CreatedTime")
values (3, 'ReleaseNamespace+SampleApp+application', sysdate);

insert into "RolePermission" ("Id", "RoleId", "PermissionId", "DataChange_CreatedTime")
values (1, 1, 1, sysdate);

insert into "RolePermission" ("Id", "RoleId", "PermissionId", "DataChange_CreatedTime")
values (2, 1, 2, sysdate);

insert into "RolePermission" ("Id", "RoleId", "PermissionId", "DataChange_CreatedTime")
values (3, 1, 3, sysdate);

insert into "RolePermission" ("Id", "RoleId", "PermissionId", "DataChange_CreatedTime")
values (4, 2, 4, sysdate);

insert into "RolePermission" ("Id", "RoleId", "PermissionId", "DataChange_CreatedTime")
values (5, 3, 5, sysdate);

insert into "UserRole" ("Id", "UserId", "RoleId", "DataChange_CreatedTime")
values (1, 'apollo', 1, sysdate);

insert into "UserRole" ("Id", "UserId", "RoleId", "DataChange_CreatedTime")
values (2, 'apollo', 2, sysdate);

insert into "UserRole" ("Id", "UserId", "RoleId", "DataChange_CreatedTime")
values (3, 'apollo', 3, sysdate);


-- Create sequence 
create sequence ID_SEQ
minvalue 1
maxvalue 9223372036854775807
start with 10
increment by 1
cache 20
cycle
order;