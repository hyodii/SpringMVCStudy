--------------------------------------------------------
--  ������ ������ - �����-12��-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."DEPARTMENTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEESEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."EMPLOYEESEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBERLISTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."MEMBERLISTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POSITIONSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."POSITIONSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REGIONSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."REGIONSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STUDENTLISTSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."STUDENTLISTSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."DEPARTMENT" 
   (	"DEPARTMENTID" NUMBER, 
	"DEPARTMENTNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."EMPLOYEE" 
   (	"EMPLOYEEID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"BIRTHDAY" DATE, 
	"LUNAR" NUMBER(1,0) DEFAULT 0 -- ������       -- ���0, ����1
, 
	"TELEPHONE" VARCHAR2(40 BYTE), 
	"DEPARTMENTID" NUMBER, 
	"POSITIONID" NUMBER, 
	"REGIONID" NUMBER, 
	"BASICPAY" NUMBER, 
	"EXTRAPAY" NUMBER, 
	"SSN1" CHAR(6 BYTE), 
	"SSN2" VARCHAR2(50 BYTE), 
	"GRADE" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table POSITION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."POSITION" 
   (	"POSITIONID" NUMBER, 
	"POSITIONNAME" VARCHAR2(30 BYTE), 
	"MINBASICPAY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REGION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."REGION" 
   (	"REGIONID" NUMBER, 
	"REGIONNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_BOARD" 
   (	"NUM" NUMBER(9,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"SUBJECT" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"IPADDR" VARCHAR2(20 BYTE), 
	"HITCOUNT" NUMBER DEFAULT 0, 
	"CREATED" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_EXAM
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_EXAM" 
   (	"ID" NUMBER, 
	"PW" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_GRADE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_GRADE" 
   (	"SID" NUMBER, 
	"SUB1" NUMBER(3,0), 
	"SUB2" NUMBER(3,0), 
	"SUB3" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMBERLIST
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_MEMBERLIST" 
   (	"MID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"TELEPHONE" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_STUDENT
--------------------------------------------------------

  CREATE TABLE "SCOTT"."TBL_STUDENT" 
   (	"SID" NUMBER, 
	"NAME" VARCHAR2(30 BYTE), 
	"TEL" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View DEPARTMENTVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."DEPARTMENTVIEW" ("DEPARTMENTID", "DEPARTMENTNAME", "DELCHECK") AS 
  SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE DEPARTMENTID=D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D
;
--------------------------------------------------------
--  DDL for View EMPLOYEEVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."EMPLOYEEVIEW" ("EMPLOYEEID", "NAME", "SSN", "BIRTHDAY", "LUNAR", "LUNARNAME", "TELEPHONE", "DEPARTMENTID", "DEPARTMENTNAME", "POSITIONID", "POSITIONNAME", "REGIONID", "REGIONNAME", "BASICPAY", "EXTRAPAY", "PAY", "GRADE") AS 
  SELECT E.EMPLOYEEID AS EMPLOYEEID
     , E.NAME AS NAME
     , E.SSN1 AS SSN        -- ����
     , TO_CHAR(E.BIRTHDAY,'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR AS LUNAR
     , DECODE(E.LUNAR,0,'���',1,'����') AS LUNARNAME
     , E.TELEPHONE AS TELEPHONE
     , E.DEPARTMENTID AS DEPARTMENTID
     , (SELECT DEPARTMENTNAME
        FROM DEPARTMENT
        WHERE DEPARTMENTID = E.DEPARTMENTID) AS DEPARTMENTNAME
     , E.POSITIONID AS POSITIONID
     , (SELECT POSITIONNAME
        FROM POSITION
        WHERE POSITIONID = E.POSITIONID) AS POSITIONNAME
     , E.REGIONID AS REGIONID
     , (SELECT REGIONNAME
        FROM REGION
        WHERE REGIONID = E.REGIONID) AS REGIONNAME
     , E.BASICPAY AS BASICPAY
     , E.EXTRAPAY AS EXTRAPAY
     , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY,0) AS PAY
     , E.GRADE AS GRADE -- ����
FROM EMPLOYEE E
ORDER BY E.EMPLOYEEID
;
--------------------------------------------------------
--  DDL for View GRADEVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."GRADEVIEW" ("SID", "NAME", "SUB1", "SUB2", "SUB3", "TOT", "AVG", "CH") AS 
  SELECT S.SID AS SID
     , S.NAME AS NAME
     , G.SUB1 AS SUB1
     , G.SUB2 AS SUB2
     , G.SUB3 AS SUB3
     , (G.SUB1 + G.SUB2 + G.SUB3) AS TOT
     , TRUNC((G.SUB1 + G.SUB2 + G.SUB3)/3) AS AVG
     , (CASE WHEN (G.SUB1 + G.SUB2 + G.SUB3)/3 < 60 THEN '���հ�'
             WHEN (G.SUB1 <= 40) OR (G.SUB2 <= 40) OR (G.SUB3 <= 40) THEN '����'
             ELSE '�հ�'
             END) AS CH
FROM TBL_STUDENT S LEFT JOIN TBL_GRADE G
ON S.SID = G.SID
;
--------------------------------------------------------
--  DDL for View POSITIONVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."POSITIONVIEW" ("POSITIONID", "POSITIONNAME", "MINBASICPAY", "DELCHECK") AS 
  SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE POSITIONID=P.POSITIONID) AS DELCHECK
FROM POSITION P
;
--------------------------------------------------------
--  DDL for View REGIONVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."REGIONVIEW" ("REGIONID", "REGIONNAME", "DELCHECK") AS 
  SELECT R.REGIONID, R.REGIONNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE REGIONID=R.REGIONID) AS DELCHECK
FROM REGION R
;
--------------------------------------------------------
--  DDL for View STUDENTVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SCOTT"."STUDENTVIEW" ("SID", "NAME", "TEL", "SUB") AS 
  SELECT S.SID AS SID, S.NAME AS NAME, S.TEL AS TEL   
     , (SELECT COUNT(*)
        FROM TBL_GRADE
        WHERE SID = S.SID) AS SUB
FROM TBL_STUDENT S
;
REM INSERTING into SCOTT.DEPARTMENT
SET DEFINE OFF;
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (1,'���ߺ�');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (2,'��ȹ��');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (3,'������');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (4,'�ѹ���');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (5,'�����ú�');
commit;
REM INSERTING into SCOTT.EMPLOYEE
SET DEFINE OFF;
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (1,'������',to_date('99/03/20','RR/MM/DD'),0,'010-7389-9032',1,1,1,1500000,1500000,'990320','Y{?7?',0);
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (4,'��ҿ�',to_date('93/07/30','RR/MM/DD'),0,'010-9211-0575',2,2,4,2500000,250000,'930730','Y{?7?',1);
commit;
REM INSERTING into SCOTT.POSITION
SET DEFINE OFF;
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (1,'���',1000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (2,'�븮',2000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (3,'����',3000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (4,'��',4000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (5,'����',5000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (6,'�ڴ븮',6000000);
commit;
REM INSERTING into SCOTT.REGION
SET DEFINE OFF;
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (1,'����');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (2,'���');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (3,'��õ');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (8,'�λ�');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (4,'����');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (9,'����');
commit;
REM INSERTING into SCOTT.TBL_BOARD
SET DEFINE OFF;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (1,'����ȭ','1234','hwa@test.com','�ۼ��׽�Ʈ','���빰�ۼ�','211.238.142.153',111,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (2,'���±�','1234','ssk@test.com','�±��� �⵿','���� �ٷ� �±��̴�','211.238.142.153',16,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (3,'�մ���','1234','sdj@test.com','�մ��� �⵿','���� ��ó ����','211.238.142.153',15,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (5,'������5','java006$','morning5@test.com','������ �ۼ��� �Խù�5','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('10/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (6,'������6','java004$','apple6@test.com','������ �ۼ��� �Խù�6','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (7,'������7','java009$','morning7@test.com','�ּ��� ���� �ۼ��� �Խù�7','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('10/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (8,'������8','java002$','apple8@test.com','����ְ� �ۼ��� �Խù�8','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (9,'������9','java004$','test9@test.com','������ �ۼ��� �Խù�9','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (10,'������10','java006$','apple10@test.com','������ �ۼ��� �Խù�10','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('10/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (11,'������11','java002$','morning11@test.com','����ְ� �ۼ��� �Խù�11','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (12,'������12','java004$','apple12@test.com','������ �ۼ��� �Խù�12','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (13,'������13','java002$','morning13@test.com','����ְ� �ۼ��� �Խù�13','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (14,'������14','java009$','apple14@test.com','�ּ��� ���� �ۼ��� �Խù�14','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('10/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (15,'������15','java006$','test15@test.com','������ �ۼ��� �Խù�15','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('10/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (16,'������16','java002$','apple16@test.com','����ְ� �ۼ��� �Խù�16','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (17,'������17','java002$','morning17@test.com','����ְ� �ۼ��� �Խù�17','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (18,'������18','java004$','apple18@test.com','������ �ۼ��� �Խù�18','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (19,'������19','java002$','morning19@test.com','����ְ� �ۼ��� �Խù�19','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (20,'������20','java006$','apple20@test.com','������ �ۼ��� �Խù�20','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('10/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (21,'������21','java004$','test21@test.com','������ �ۼ��� �Խù�21','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (22,'������22','java002$','apple22@test.com','����ְ� �ۼ��� �Խù�22','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (23,'������23','java002$','morning23@test.com','����ְ� �ۼ��� �Խù�23','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (24,'������24','java004$','apple24@test.com','������ �ۼ��� �Խù�24','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (25,'������25','java006$','morning25@test.com','������ �ۼ��� �Խù�25','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('10/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (26,'������26','java002$','apple26@test.com','����ְ� �ۼ��� �Խù�26','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (27,'������27','java004$','test27@test.com','������ �ۼ��� �Խù�27','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (28,'������28','java009$','apple28@test.com','�ּ��� ���� �ۼ��� �Խù�28','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('10/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (29,'������29','java002$','morning29@test.com','����ְ� �ۼ��� �Խù�29','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (30,'������30','java006$','apple30@test.com','������ �ۼ��� �Խù�30','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('10/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (31,'������31','java002$','morning31@test.com','����ְ� �ۼ��� �Խù�31','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (32,'������32','java002$','apple32@test.com','����ְ� �ۼ��� �Խù�32','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (33,'������33','java004$','test33@test.com','������ �ۼ��� �Խù�33','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (34,'������34','java002$','apple34@test.com','����ְ� �ۼ��� �Խù�34','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (35,'������35','java006$','morning35@test.com','������ �ۼ��� �Խù�35','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('10/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (36,'������36','java004$','apple36@test.com','������ �ۼ��� �Խù�36','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/12/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (37,'������37','java002$','morning37@test.com','����ְ� �ۼ��� �Խù�37','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (38,'������38','java002$','apple38@test.com','����ְ� �ۼ��� �Խù�38','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (39,'������39','java004$','test39@test.com','������ �ۼ��� �Խù�39','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (40,'������40','java006$','apple40@test.com','������ �ۼ��� �Խù�40','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('10/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (41,'������41','java002$','morning41@test.com','����ְ� �ۼ��� �Խù�41','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (42,'������42','java004$','apple42@test.com','������ �ۼ��� �Խù�42','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (43,'������43','java002$','morning43@test.com','����ְ� �ۼ��� �Խù�43','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (44,'������44','java002$','apple44@test.com','����ְ� �ۼ��� �Խù�44','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (45,'������45','java006$','test45@test.com','������ �ۼ��� �Խù�45','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('10/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (46,'������46','java002$','apple46@test.com','����ְ� �ۼ��� �Խù�46','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (47,'������47','java002$','morning47@test.com','����ְ� �ۼ��� �Խù�47','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (48,'������48','java004$','apple48@test.com','������ �ۼ��� �Խù�48','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (49,'������49','java009$','morning49@test.com','�ּ��� ���� �ۼ��� �Խù�49','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('10/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (50,'������50','java006$','apple50@test.com','������ �ۼ��� �Խù�50','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('10/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (51,'������51','java004$','test51@test.com','������ �ۼ��� �Խù�51','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('10/12/28','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (52,'������52','java002$','apple52@test.com','����ְ� �ۼ��� �Խù�52','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('10/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (53,'������53','java002$','morning53@test.com','����ְ� �ۼ��� �Խù�53','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('10/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (54,'������54','java004$','apple54@test.com','������ �ۼ��� �Խù�54','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('10/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (55,'������55','java006$','morning55@test.com','������ �ۼ��� �Խù�55','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (56,'������56','java009$','apple56@test.com','�ּ��� ���� �ۼ��� �Խù�56','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (57,'������57','java004$','test57@test.com','������ �ۼ��� �Խù�57','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (58,'������58','java002$','apple58@test.com','����ְ� �ۼ��� �Խù�58','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (59,'������59','java002$','morning59@test.com','����ְ� �ۼ��� �Խù�59','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (60,'������60','java006$','apple60@test.com','������ �ۼ��� �Խù�60','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (61,'������61','java002$','morning61@test.com','����ְ� �ۼ��� �Խù�61','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (62,'������62','java002$','apple62@test.com','����ְ� �ۼ��� �Խù�62','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (63,'������63','java004$','test63@test.com','������ �ۼ��� �Խù�63','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (64,'������64','java002$','apple64@test.com','����ְ� �ۼ��� �Խù�64','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (65,'������65','java006$','morning65@test.com','������ �ۼ��� �Խù�65','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (66,'������66','java004$','apple66@test.com','������ �ۼ��� �Խù�66','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (67,'������67','java002$','morning67@test.com','����ְ� �ۼ��� �Խù�67','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (68,'������68','java002$','apple68@test.com','����ְ� �ۼ��� �Խù�68','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (69,'������69','java004$','test69@test.com','������ �ۼ��� �Խù�69','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (70,'������70','java006$','apple70@test.com','������ �ۼ��� �Խù�70','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (71,'������71','java002$','morning71@test.com','����ְ� �ۼ��� �Խù�71','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (72,'������72','java004$','apple72@test.com','������ �ۼ��� �Խù�72','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (73,'������73','java002$','morning73@test.com','����ְ� �ۼ��� �Խù�73','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (74,'������74','java002$','apple74@test.com','����ְ� �ۼ��� �Խù�74','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (75,'������75','java006$','test75@test.com','������ �ۼ��� �Խù�75','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (76,'������76','java002$','apple76@test.com','����ְ� �ۼ��� �Խù�76','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (77,'������77','java009$','morning77@test.com','�ּ��� ���� �ۼ��� �Խù�77','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (78,'������78','java004$','apple78@test.com','������ �ۼ��� �Խù�78','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (79,'������79','java002$','morning79@test.com','����ְ� �ۼ��� �Խù�79','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (80,'������80','java006$','apple80@test.com','������ �ۼ��� �Խù�80','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (81,'������81','java004$','test81@test.com','������ �ۼ��� �Խù�81','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (82,'������82','java002$','apple82@test.com','����ְ� �ۼ��� �Խù�82','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (83,'������83','java002$','morning83@test.com','����ְ� �ۼ��� �Խù�83','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (84,'������84','java004$','apple84@test.com','������ �ۼ��� �Խù�84','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (85,'������85','java006$','morning85@test.com','������ �ۼ��� �Խù�85','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (86,'������86','java002$','apple86@test.com','����ְ� �ۼ��� �Խù�86','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (87,'������87','java004$','test87@test.com','������ �ۼ��� �Խù�87','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (88,'������88','java002$','apple88@test.com','����ְ� �ۼ��� �Խù�88','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (89,'������89','java002$','morning89@test.com','����ְ� �ۼ��� �Խù�89','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (90,'������90','java006$','apple90@test.com','������ �ۼ��� �Խù�90','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (91,'������91','java009$','morning91@test.com','�ּ��� ���� �ۼ��� �Խù�91','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (92,'������92','java002$','apple92@test.com','����ְ� �ۼ��� �Խù�92','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (93,'������93','java004$','test93@test.com','������ �ۼ��� �Խù�93','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (94,'������94','java002$','apple94@test.com','����ְ� �ۼ��� �Խù�94','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (95,'������95','java006$','morning95@test.com','������ �ۼ��� �Խù�95','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (96,'������96','java004$','apple96@test.com','������ �ۼ��� �Խù�96','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (97,'������97','java002$','morning97@test.com','����ְ� �ۼ��� �Խù�97','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (98,'������98','java009$','apple98@test.com','�ּ��� ���� �ۼ��� �Խù�98','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (99,'������99','java004$','test99@test.com','������ �ۼ��� �Խù�99','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (100,'������100','java006$','apple100@test.com','������ �ۼ��� �Խù�100','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (101,'������101','java002$','morning101@test.com','����ְ� �ۼ��� �Խù�101','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (102,'������102','java004$','apple102@test.com','������ �ۼ��� �Խù�102','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (103,'������103','java002$','morning103@test.com','����ְ� �ۼ��� �Խù�103','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (104,'������104','java002$','apple104@test.com','����ְ� �ۼ��� �Խù�104','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (105,'������105','java006$','test105@test.com','������ �ۼ��� �Խù�105','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (106,'������106','java002$','apple106@test.com','����ְ� �ۼ��� �Խù�106','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (107,'������107','java002$','morning107@test.com','����ְ� �ۼ��� �Խù�107','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (108,'������108','java004$','apple108@test.com','������ �ۼ��� �Խù�108','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (109,'������109','java002$','morning109@test.com','����ְ� �ۼ��� �Խù�109','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (110,'������110','java006$','apple110@test.com','������ �ۼ��� �Խù�110','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (111,'������111','java004$','test111@test.com','������ �ۼ��� �Խù�111','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (112,'������112','java009$','apple112@test.com','�ּ��� ���� �ۼ��� �Խù�112','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (113,'������113','java002$','morning113@test.com','����ְ� �ۼ��� �Խù�113','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (114,'������114','java004$','apple114@test.com','������ �ۼ��� �Խù�114','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (115,'������115','java006$','morning115@test.com','������ �ۼ��� �Խù�115','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (116,'������116','java002$','apple116@test.com','����ְ� �ۼ��� �Խù�116','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (117,'������117','java004$','test117@test.com','������ �ۼ��� �Խù�117','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (118,'������118','java002$','apple118@test.com','����ְ� �ۼ��� �Խù�118','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (119,'������119','java009$','morning119@test.com','�ּ��� ���� �ۼ��� �Խù�119','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (120,'������120','java006$','apple120@test.com','������ �ۼ��� �Խù�120','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (121,'������121','java002$','morning121@test.com','����ְ� �ۼ��� �Խù�121','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (122,'������122','java002$','apple122@test.com','����ְ� �ۼ��� �Խù�122','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (123,'������123','java004$','test123@test.com','������ �ۼ��� �Խù�123','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (124,'������124','java002$','apple124@test.com','����ְ� �ۼ��� �Խù�124','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (125,'������125','java006$','morning125@test.com','������ �ۼ��� �Խù�125','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (126,'������126','java004$','apple126@test.com','������ �ۼ��� �Խù�126','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (127,'������127','java002$','morning127@test.com','����ְ� �ۼ��� �Խù�127','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (128,'������128','java002$','apple128@test.com','����ְ� �ۼ��� �Խù�128','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (129,'������129','java004$','test129@test.com','������ �ۼ��� �Խù�129','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (130,'������130','java006$','apple130@test.com','������ �ۼ��� �Խù�130','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (131,'������131','java002$','morning131@test.com','����ְ� �ۼ��� �Խù�131','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (132,'������132','java004$','apple132@test.com','������ �ۼ��� �Խù�132','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (133,'������133','java009$','morning133@test.com','�ּ��� ���� �ۼ��� �Խù�133','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (134,'������134','java002$','apple134@test.com','����ְ� �ۼ��� �Խù�134','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (135,'������135','java006$','test135@test.com','������ �ۼ��� �Խù�135','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/03/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (136,'������136','java002$','apple136@test.com','����ְ� �ۼ��� �Խù�136','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (137,'������137','java002$','morning137@test.com','����ְ� �ۼ��� �Խù�137','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (138,'������138','java004$','apple138@test.com','������ �ۼ��� �Խù�138','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (139,'������139','java002$','morning139@test.com','����ְ� �ۼ��� �Խù�139','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (140,'������140','java006$','apple140@test.com','������ �ۼ��� �Խù�140','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (141,'������141','java004$','test141@test.com','������ �ۼ��� �Խù�141','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (142,'������142','java002$','apple142@test.com','����ְ� �ۼ��� �Խù�142','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (143,'������143','java002$','morning143@test.com','����ְ� �ۼ��� �Խù�143','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (144,'������144','java004$','apple144@test.com','������ �ۼ��� �Խù�144','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (145,'������145','java006$','morning145@test.com','������ �ۼ��� �Խù�145','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (146,'������146','java002$','apple146@test.com','����ְ� �ۼ��� �Խù�146','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (147,'������147','java004$','test147@test.com','������ �ۼ��� �Խù�147','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (148,'������148','java002$','apple148@test.com','����ְ� �ۼ��� �Խù�148','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (149,'������149','java002$','morning149@test.com','����ְ� �ۼ��� �Խù�149','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (150,'������150','java006$','apple150@test.com','������ �ۼ��� �Խù�150','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (151,'������151','java002$','morning151@test.com','����ְ� �ۼ��� �Խù�151','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/07','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (152,'������152','java002$','apple152@test.com','����ְ� �ۼ��� �Խù�152','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (153,'������153','java004$','test153@test.com','������ �ۼ��� �Խù�153','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (154,'������154','java009$','apple154@test.com','�ּ��� ���� �ۼ��� �Խù�154','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (155,'������155','java006$','morning155@test.com','������ �ۼ��� �Խù�155','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (156,'������156','java004$','apple156@test.com','������ �ۼ��� �Խù�156','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (157,'������157','java002$','morning157@test.com','����ְ� �ۼ��� �Խù�157','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (158,'������158','java002$','apple158@test.com','����ְ� �ۼ��� �Խù�158','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (159,'������159','java004$','test159@test.com','������ �ۼ��� �Խù�159','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (160,'������160','java006$','apple160@test.com','������ �ۼ��� �Խù�160','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (161,'������161','java009$','morning161@test.com','�ּ��� ���� �ۼ��� �Խù�161','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (162,'������162','java004$','apple162@test.com','������ �ۼ��� �Խù�162','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (163,'������163','java002$','morning163@test.com','����ְ� �ۼ��� �Խù�163','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (164,'������164','java002$','apple164@test.com','����ְ� �ۼ��� �Խù�164','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (165,'������165','java006$','test165@test.com','������ �ۼ��� �Խù�165','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (166,'������166','java002$','apple166@test.com','����ְ� �ۼ��� �Խù�166','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (167,'������167','java002$','morning167@test.com','����ְ� �ۼ��� �Խù�167','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (168,'������168','java004$','apple168@test.com','������ �ۼ��� �Խù�168','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (169,'������169','java002$','morning169@test.com','����ְ� �ۼ��� �Խù�169','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (170,'������170','java006$','apple170@test.com','������ �ۼ��� �Խù�170','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (171,'������171','java004$','test171@test.com','������ �ۼ��� �Խù�171','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (172,'������172','java002$','apple172@test.com','����ְ� �ۼ��� �Խù�172','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (173,'������173','java002$','morning173@test.com','����ְ� �ۼ��� �Խù�173','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (174,'������174','java004$','apple174@test.com','������ �ۼ��� �Խù�174','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (175,'������175','java006$','morning175@test.com','������ �ۼ��� �Խù�175','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (176,'������176','java002$','apple176@test.com','����ְ� �ۼ��� �Խù�176','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (177,'������177','java004$','test177@test.com','������ �ۼ��� �Խù�177','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (178,'������178','java002$','apple178@test.com','����ְ� �ۼ��� �Խù�178','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (179,'������179','java002$','morning179@test.com','����ְ� �ۼ��� �Խù�179','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (180,'������180','java006$','apple180@test.com','������ �ۼ��� �Խù�180','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (181,'������181','java002$','morning181@test.com','����ְ� �ۼ��� �Խù�181','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (182,'������182','java009$','apple182@test.com','�ּ��� ���� �ۼ��� �Խù�182','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (183,'������183','java004$','test183@test.com','������ �ۼ��� �Խù�183','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (184,'������184','java002$','apple184@test.com','����ְ� �ۼ��� �Խù�184','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (185,'������185','java006$','morning185@test.com','������ �ۼ��� �Խù�185','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/05/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (186,'������186','java004$','apple186@test.com','������ �ۼ��� �Խù�186','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (187,'������187','java002$','morning187@test.com','����ְ� �ۼ��� �Խù�187','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (188,'������188','java002$','apple188@test.com','����ְ� �ۼ��� �Խù�188','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (189,'������189','java004$','test189@test.com','������ �ۼ��� �Խù�189','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (190,'������190','java006$','apple190@test.com','������ �ۼ��� �Խù�190','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (191,'������191','java002$','morning191@test.com','����ְ� �ۼ��� �Խù�191','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (192,'������192','java004$','apple192@test.com','������ �ۼ��� �Խù�192','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (193,'������193','java002$','morning193@test.com','����ְ� �ۼ��� �Խù�193','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (194,'������194','java002$','apple194@test.com','����ְ� �ۼ��� �Խù�194','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (195,'������195','java006$','test195@test.com','������ �ۼ��� �Խù�195','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (196,'������196','java009$','apple196@test.com','�ּ��� ���� �ۼ��� �Խù�196','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (197,'������197','java002$','morning197@test.com','����ְ� �ۼ��� �Խù�197','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (198,'������198','java004$','apple198@test.com','������ �ۼ��� �Խù�198','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (199,'������199','java002$','morning199@test.com','����ְ� �ۼ��� �Խù�199','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (200,'������200','java006$','apple200@test.com','������ �ۼ��� �Խù�200','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (201,'������201','java004$','test201@test.com','������ �ۼ��� �Խù�201','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/05/27','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (202,'������202','java002$','apple202@test.com','����ְ� �ۼ��� �Խù�202','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (203,'������203','java009$','morning203@test.com','�ּ��� ���� �ۼ��� �Խù�203','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (204,'������204','java004$','apple204@test.com','������ �ۼ��� �Խù�204','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (205,'������205','java006$','morning205@test.com','������ �ۼ��� �Խù�205','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (206,'������206','java002$','apple206@test.com','����ְ� �ۼ��� �Խù�206','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (207,'������207','java004$','test207@test.com','������ �ۼ��� �Խù�207','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (208,'������208','java002$','apple208@test.com','����ְ� �ۼ��� �Խù�208','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (209,'������209','java002$','morning209@test.com','����ְ� �ۼ��� �Խù�209','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (210,'������210','java006$','apple210@test.com','������ �ۼ��� �Խù�210','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (211,'������211','java002$','morning211@test.com','����ְ� �ۼ��� �Խù�211','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (212,'������212','java002$','apple212@test.com','����ְ� �ۼ��� �Խù�212','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (213,'������213','java004$','test213@test.com','������ �ۼ��� �Խù�213','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (214,'������214','java002$','apple214@test.com','����ְ� �ۼ��� �Խù�214','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (215,'������215','java006$','morning215@test.com','������ �ۼ��� �Խù�215','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (216,'������216','java004$','apple216@test.com','������ �ۼ��� �Խù�216','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/06/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (217,'������217','java009$','morning217@test.com','�ּ��� ���� �ۼ��� �Խù�217','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (218,'������218','java002$','apple218@test.com','����ְ� �ۼ��� �Խù�218','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (219,'������219','java004$','test219@test.com','������ �ۼ��� �Խù�219','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (220,'������220','java006$','apple220@test.com','������ �ۼ��� �Խù�220','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (221,'������221','java002$','morning221@test.com','����ְ� �ۼ��� �Խù�221','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (222,'������222','java004$','apple222@test.com','������ �ۼ��� �Խù�222','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (223,'������223','java002$','morning223@test.com','����ְ� �ۼ��� �Խù�223','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (224,'������224','java009$','apple224@test.com','�ּ��� ���� �ۼ��� �Խù�224','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (225,'������225','java006$','test225@test.com','������ �ۼ��� �Խù�225','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (226,'������226','java002$','apple226@test.com','����ְ� �ۼ��� �Խù�226','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (227,'������227','java002$','morning227@test.com','����ְ� �ۼ��� �Խù�227','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (228,'������228','java004$','apple228@test.com','������ �ۼ��� �Խù�228','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (229,'������229','java002$','morning229@test.com','����ְ� �ۼ��� �Խù�229','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (230,'������230','java006$','apple230@test.com','������ �ۼ��� �Խù�230','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (231,'������231','java004$','test231@test.com','������ �ۼ��� �Խù�231','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (232,'������232','java002$','apple232@test.com','����ְ� �ۼ��� �Խù�232','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (233,'������233','java002$','morning233@test.com','����ְ� �ۼ��� �Խù�233','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (234,'������234','java004$','apple234@test.com','������ �ۼ��� �Խù�234','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (235,'������235','java006$','morning235@test.com','������ �ۼ��� �Խù�235','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (236,'������236','java002$','apple236@test.com','����ְ� �ۼ��� �Խù�236','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (237,'������237','java004$','test237@test.com','������ �ۼ��� �Խù�237','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (238,'������238','java009$','apple238@test.com','�ּ��� ���� �ۼ��� �Խù�238','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (239,'������239','java002$','morning239@test.com','����ְ� �ۼ��� �Խù�239','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (240,'������240','java006$','apple240@test.com','������ �ۼ��� �Խù�240','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (241,'������241','java002$','morning241@test.com','����ְ� �ۼ��� �Խù�241','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (242,'������242','java002$','apple242@test.com','����ְ� �ۼ��� �Խù�242','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (243,'������243','java004$','test243@test.com','������ �ۼ��� �Խù�243','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (244,'������244','java002$','apple244@test.com','����ְ� �ۼ��� �Խù�244','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (245,'������245','java006$','morning245@test.com','������ �ۼ��� �Խù�245','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (246,'������246','java004$','apple246@test.com','������ �ۼ��� �Խù�246','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (247,'������247','java002$','morning247@test.com','����ְ� �ۼ��� �Խù�247','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (248,'������248','java002$','apple248@test.com','����ְ� �ۼ��� �Խù�248','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (249,'������249','java004$','test249@test.com','������ �ۼ��� �Խù�249','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (250,'������250','java006$','apple250@test.com','������ �ۼ��� �Խù�250','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (251,'������251','java002$','morning251@test.com','����ְ� �ۼ��� �Խù�251','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (252,'������252','java004$','apple252@test.com','������ �ۼ��� �Խù�252','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (253,'������253','java002$','morning253@test.com','����ְ� �ۼ��� �Խù�253','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (254,'������254','java002$','apple254@test.com','����ְ� �ۼ��� �Խù�254','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (255,'������255','java006$','test255@test.com','������ �ۼ��� �Խù�255','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (256,'������256','java002$','apple256@test.com','����ְ� �ۼ��� �Խù�256','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (257,'������257','java002$','morning257@test.com','����ְ� �ۼ��� �Խù�257','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (258,'������258','java004$','apple258@test.com','������ �ۼ��� �Խù�258','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (259,'������259','java009$','morning259@test.com','�ּ��� ���� �ۼ��� �Խù�259','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (260,'������260','java006$','apple260@test.com','������ �ۼ��� �Խù�260','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (261,'������261','java004$','test261@test.com','������ �ۼ��� �Խù�261','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (262,'������262','java002$','apple262@test.com','����ְ� �ۼ��� �Խù�262','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (263,'������263','java002$','morning263@test.com','����ְ� �ۼ��� �Խù�263','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (264,'������264','java004$','apple264@test.com','������ �ۼ��� �Խù�264','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (265,'������265','java006$','morning265@test.com','������ �ۼ��� �Խù�265','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (266,'������266','java009$','apple266@test.com','�ּ��� ���� �ۼ��� �Խù�266','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (267,'������267','java004$','test267@test.com','������ �ۼ��� �Խù�267','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (268,'������268','java002$','apple268@test.com','����ְ� �ۼ��� �Խù�268','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (269,'������269','java002$','morning269@test.com','����ְ� �ۼ��� �Խù�269','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (270,'������270','java006$','apple270@test.com','������ �ۼ��� �Խù�270','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (271,'������271','java002$','morning271@test.com','����ְ� �ۼ��� �Խù�271','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (272,'������272','java002$','apple272@test.com','����ְ� �ۼ��� �Խù�272','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (273,'������273','java004$','test273@test.com','������ �ۼ��� �Խù�273','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (274,'������274','java002$','apple274@test.com','����ְ� �ۼ��� �Խù�274','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (275,'������275','java006$','morning275@test.com','������ �ۼ��� �Խù�275','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (276,'������276','java004$','apple276@test.com','������ �ۼ��� �Խù�276','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (277,'������277','java002$','morning277@test.com','����ְ� �ۼ��� �Խù�277','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (278,'������278','java002$','apple278@test.com','����ְ� �ۼ��� �Խù�278','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (279,'������279','java004$','test279@test.com','������ �ۼ��� �Խù�279','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (280,'������280','java006$','apple280@test.com','������ �ۼ��� �Խù�280','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (281,'������281','java002$','morning281@test.com','����ְ� �ۼ��� �Խù�281','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (282,'������282','java004$','apple282@test.com','������ �ۼ��� �Խù�282','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (283,'������283','java002$','morning283@test.com','����ְ� �ۼ��� �Խù�283','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (284,'������284','java002$','apple284@test.com','����ְ� �ۼ��� �Խù�284','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (285,'������285','java006$','test285@test.com','������ �ۼ��� �Խù�285','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (286,'������286','java002$','apple286@test.com','����ְ� �ۼ��� �Խù�286','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (287,'������287','java009$','morning287@test.com','�ּ��� ���� �ۼ��� �Խù�287','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (288,'������288','java004$','apple288@test.com','������ �ۼ��� �Խù�288','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (289,'������289','java002$','morning289@test.com','����ְ� �ۼ��� �Խù�289','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (290,'������290','java006$','apple290@test.com','������ �ۼ��� �Խù�290','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (291,'������291','java004$','test291@test.com','������ �ۼ��� �Խù�291','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (292,'������292','java002$','apple292@test.com','����ְ� �ۼ��� �Խù�292','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (293,'������293','java002$','morning293@test.com','����ְ� �ۼ��� �Խù�293','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (294,'������294','java004$','apple294@test.com','������ �ۼ��� �Խù�294','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (295,'������295','java006$','morning295@test.com','������ �ۼ��� �Խù�295','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (296,'������296','java002$','apple296@test.com','����ְ� �ۼ��� �Խù�296','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (297,'������297','java004$','test297@test.com','������ �ۼ��� �Խù�297','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (298,'������298','java002$','apple298@test.com','����ְ� �ۼ��� �Խù�298','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (299,'������299','java002$','morning299@test.com','����ְ� �ۼ��� �Խù�299','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (300,'������300','java006$','apple300@test.com','������ �ۼ��� �Խù�300','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/09/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (301,'������301','java009$','morning301@test.com','�ּ��� ���� �ۼ��� �Խù�301','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/09/04','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (302,'������302','java002$','apple302@test.com','����ְ� �ۼ��� �Խù�302','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (303,'������303','java004$','test303@test.com','������ �ۼ��� �Խù�303','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (304,'������304','java002$','apple304@test.com','����ְ� �ۼ��� �Խù�304','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (305,'������305','java006$','morning305@test.com','������ �ۼ��� �Խù�305','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (306,'������306','java004$','apple306@test.com','������ �ۼ��� �Խù�306','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (307,'������307','java002$','morning307@test.com','����ְ� �ۼ��� �Խù�307','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (308,'������308','java009$','apple308@test.com','�ּ��� ���� �ۼ��� �Խù�308','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/09/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (309,'������309','java004$','test309@test.com','������ �ۼ��� �Խù�309','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/09/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (310,'������310','java006$','apple310@test.com','������ �ۼ��� �Խù�310','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/09/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (311,'������311','java002$','morning311@test.com','����ְ� �ۼ��� �Խù�311','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (312,'������312','java004$','apple312@test.com','������ �ۼ��� �Խù�312','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/09/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (313,'������313','java002$','morning313@test.com','����ְ� �ۼ��� �Խù�313','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (314,'������314','java002$','apple314@test.com','����ְ� �ۼ��� �Խù�314','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (315,'������315','java006$','test315@test.com','������ �ۼ��� �Խù�315','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/09/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (316,'������316','java002$','apple316@test.com','����ְ� �ۼ��� �Խù�316','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (317,'������317','java002$','morning317@test.com','����ְ� �ۼ��� �Խù�317','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (318,'������318','java004$','apple318@test.com','������ �ۼ��� �Խù�318','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/09/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (319,'������319','java002$','morning319@test.com','����ְ� �ۼ��� �Խù�319','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (320,'������320','java006$','apple320@test.com','������ �ۼ��� �Խù�320','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/09/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (321,'������321','java004$','test321@test.com','������ �ۼ��� �Խù�321','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/09/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (322,'������322','java009$','apple322@test.com','�ּ��� ���� �ۼ��� �Խù�322','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/09/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (323,'������323','java002$','morning323@test.com','����ְ� �ۼ��� �Խù�323','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/09/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (324,'������324','java004$','apple324@test.com','������ �ۼ��� �Խù�324','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/09/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (325,'������325','java006$','morning325@test.com','������ �ۼ��� �Խù�325','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/09/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (326,'������326','java002$','apple326@test.com','����ְ� �ۼ��� �Խù�326','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/09/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (327,'������327','java004$','test327@test.com','������ �ۼ��� �Խù�327','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/09/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (328,'������328','java002$','apple328@test.com','����ְ� �ۼ��� �Խù�328','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (329,'������329','java009$','morning329@test.com','�ּ��� ���� �ۼ��� �Խù�329','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/10/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (330,'������330','java006$','apple330@test.com','������ �ۼ��� �Խù�330','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/10/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (331,'������331','java002$','morning331@test.com','����ְ� �ۼ��� �Խù�331','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (332,'������332','java002$','apple332@test.com','����ְ� �ۼ��� �Խù�332','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (333,'������333','java004$','test333@test.com','������ �ۼ��� �Խù�333','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/10/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (334,'������334','java002$','apple334@test.com','����ְ� �ۼ��� �Խù�334','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (335,'������335','java006$','morning335@test.com','������ �ۼ��� �Խù�335','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/10/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (336,'������336','java004$','apple336@test.com','������ �ۼ��� �Խù�336','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/10/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (337,'������337','java002$','morning337@test.com','����ְ� �ۼ��� �Խù�337','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (338,'������338','java002$','apple338@test.com','����ְ� �ۼ��� �Խù�338','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (339,'������339','java004$','test339@test.com','������ �ۼ��� �Խù�339','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/10/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (340,'������340','java006$','apple340@test.com','������ �ۼ��� �Խù�340','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/10/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (341,'������341','java002$','morning341@test.com','����ְ� �ۼ��� �Խù�341','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (342,'������342','java004$','apple342@test.com','������ �ۼ��� �Խù�342','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/10/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (343,'������343','java009$','morning343@test.com','�ּ��� ���� �ۼ��� �Խù�343','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/10/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (344,'������344','java002$','apple344@test.com','����ְ� �ۼ��� �Խù�344','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (345,'������345','java006$','test345@test.com','������ �ۼ��� �Խù�345','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/10/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (346,'������346','java002$','apple346@test.com','����ְ� �ۼ��� �Խù�346','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (347,'������347','java002$','morning347@test.com','����ְ� �ۼ��� �Խù�347','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (348,'������348','java004$','apple348@test.com','������ �ۼ��� �Խù�348','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/10/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (349,'������349','java002$','morning349@test.com','����ְ� �ۼ��� �Խù�349','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (350,'������350','java006$','apple350@test.com','������ �ۼ��� �Խù�350','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/10/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (351,'������351','java004$','test351@test.com','������ �ۼ��� �Խù�351','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/10/24','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (352,'������352','java002$','apple352@test.com','����ְ� �ۼ��� �Խù�352','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (353,'������353','java002$','morning353@test.com','����ְ� �ۼ��� �Խù�353','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/10/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (354,'������354','java004$','apple354@test.com','������ �ۼ��� �Խù�354','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/10/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (355,'������355','java006$','morning355@test.com','������ �ۼ��� �Խù�355','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/10/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (356,'������356','java002$','apple356@test.com','����ְ� �ۼ��� �Խù�356','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (357,'������357','java004$','test357@test.com','������ �ۼ��� �Խù�357','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/10/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (358,'������358','java002$','apple358@test.com','����ְ� �ۼ��� �Խù�358','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/10/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (359,'������359','java002$','morning359@test.com','����ְ� �ۼ��� �Խù�359','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (360,'������360','java006$','apple360@test.com','������ �ۼ��� �Խù�360','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/11/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (361,'������361','java002$','morning361@test.com','����ְ� �ۼ��� �Խù�361','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (362,'������362','java002$','apple362@test.com','����ְ� �ۼ��� �Խù�362','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (363,'������363','java004$','test363@test.com','������ �ۼ��� �Խù�363','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (364,'������364','java009$','apple364@test.com','�ּ��� ���� �ۼ��� �Խù�364','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/11/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (365,'������365','java006$','morning365@test.com','������ �ۼ��� �Խù�365','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/11/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (366,'������366','java004$','apple366@test.com','������ �ۼ��� �Խù�366','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/11/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (367,'������367','java002$','morning367@test.com','����ְ� �ۼ��� �Խù�367','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (368,'������368','java002$','apple368@test.com','����ְ� �ۼ��� �Խù�368','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (369,'������369','java004$','test369@test.com','������ �ۼ��� �Խù�369','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/11/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (370,'������370','java006$','apple370@test.com','������ �ۼ��� �Խù�370','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (371,'������371','java009$','morning371@test.com','�ּ��� ���� �ۼ��� �Խù�371','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (372,'������372','java004$','apple372@test.com','������ �ۼ��� �Խù�372','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (373,'������373','java002$','morning373@test.com','����ְ� �ۼ��� �Խù�373','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (374,'������374','java002$','apple374@test.com','����ְ� �ۼ��� �Խù�374','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (375,'������375','java006$','test375@test.com','������ �ۼ��� �Խù�375','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (376,'������376','java002$','apple376@test.com','����ְ� �ۼ��� �Խù�376','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (377,'������377','java002$','morning377@test.com','����ְ� �ۼ��� �Խù�377','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (378,'������378','java004$','apple378@test.com','������ �ۼ��� �Խù�378','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (379,'������379','java002$','morning379@test.com','����ְ� �ۼ��� �Խù�379','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (380,'������380','java006$','apple380@test.com','������ �ۼ��� �Խù�380','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (381,'������381','java004$','test381@test.com','������ �ۼ��� �Խù�381','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (382,'������382','java002$','apple382@test.com','����ְ� �ۼ��� �Խù�382','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (383,'������383','java002$','morning383@test.com','����ְ� �ۼ��� �Խù�383','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (384,'������384','java004$','apple384@test.com','������ �ۼ��� �Խù�384','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (385,'������385','java006$','morning385@test.com','������ �ۼ��� �Խù�385','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (386,'������386','java002$','apple386@test.com','����ְ� �ۼ��� �Խù�386','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (387,'������387','java004$','test387@test.com','������ �ۼ��� �Խù�387','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (388,'������388','java002$','apple388@test.com','����ְ� �ۼ��� �Խù�388','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (389,'������389','java002$','morning389@test.com','����ְ� �ۼ��� �Խù�389','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (390,'������390','java006$','apple390@test.com','������ �ۼ��� �Խù�390','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (391,'������391','java002$','morning391@test.com','����ְ� �ۼ��� �Խù�391','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (392,'������392','java009$','apple392@test.com','�ּ��� ���� �ۼ��� �Խù�392','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (393,'������393','java004$','test393@test.com','������ �ۼ��� �Խù�393','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (394,'������394','java002$','apple394@test.com','����ְ� �ۼ��� �Խù�394','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (395,'������395','java006$','morning395@test.com','������ �ۼ��� �Խù�395','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (396,'������396','java004$','apple396@test.com','������ �ۼ��� �Խù�396','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (397,'������397','java002$','morning397@test.com','����ְ� �ۼ��� �Խù�397','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (398,'������398','java002$','apple398@test.com','����ְ� �ۼ��� �Խù�398','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (399,'������399','java004$','test399@test.com','������ �ۼ��� �Խù�399','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (400,'������400','java006$','apple400@test.com','������ �ۼ��� �Խù�400','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (401,'������401','java002$','morning401@test.com','����ְ� �ۼ��� �Խù�401','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/13','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (402,'������402','java004$','apple402@test.com','������ �ۼ��� �Խù�402','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (403,'������403','java002$','morning403@test.com','����ְ� �ۼ��� �Խù�403','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (404,'������404','java002$','apple404@test.com','����ְ� �ۼ��� �Խù�404','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (405,'������405','java006$','test405@test.com','������ �ۼ��� �Խù�405','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('11/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (406,'������406','java009$','apple406@test.com','�ּ��� ���� �ۼ��� �Խù�406','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('11/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (407,'������407','java002$','morning407@test.com','����ְ� �ۼ��� �Խù�407','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (408,'������408','java004$','apple408@test.com','������ �ۼ��� �Խù�408','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (409,'������409','java002$','morning409@test.com','����ְ� �ۼ��� �Խù�409','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (410,'������410','java006$','apple410@test.com','������ �ۼ��� �Խù�410','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('11/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (411,'������411','java004$','test411@test.com','������ �ۼ��� �Խù�411','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (412,'������412','java002$','apple412@test.com','����ְ� �ۼ��� �Խù�412','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (413,'������413','java009$','morning413@test.com','�ּ��� ���� �ۼ��� �Խù�413','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('11/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (414,'������414','java004$','apple414@test.com','������ �ۼ��� �Խù�414','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('11/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (415,'������415','java006$','morning415@test.com','������ �ۼ��� �Խù�415','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('11/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (416,'������416','java002$','apple416@test.com','����ְ� �ۼ��� �Խù�416','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (417,'������417','java004$','test417@test.com','������ �ۼ��� �Խù�417','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('11/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (418,'������418','java002$','apple418@test.com','����ְ� �ۼ��� �Խù�418','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('11/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (419,'������419','java002$','morning419@test.com','����ְ� �ۼ��� �Խù�419','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('11/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (420,'������420','java006$','apple420@test.com','������ �ۼ��� �Խù�420','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (421,'������421','java002$','morning421@test.com','����ְ� �ۼ��� �Խù�421','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (422,'������422','java002$','apple422@test.com','����ְ� �ۼ��� �Խù�422','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (423,'������423','java004$','test423@test.com','������ �ۼ��� �Խù�423','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (424,'������424','java002$','apple424@test.com','����ְ� �ۼ��� �Խù�424','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (425,'������425','java006$','morning425@test.com','������ �ۼ��� �Խù�425','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (426,'������426','java004$','apple426@test.com','������ �ۼ��� �Խù�426','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (427,'������427','java009$','morning427@test.com','�ּ��� ���� �ۼ��� �Խù�427','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (428,'������428','java002$','apple428@test.com','����ְ� �ۼ��� �Խù�428','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (429,'������429','java004$','test429@test.com','������ �ۼ��� �Խù�429','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (430,'������430','java006$','apple430@test.com','������ �ۼ��� �Խù�430','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (431,'������431','java002$','morning431@test.com','����ְ� �ۼ��� �Խù�431','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (432,'������432','java004$','apple432@test.com','������ �ۼ��� �Խù�432','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (433,'������433','java002$','morning433@test.com','����ְ� �ۼ��� �Խù�433','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (434,'������434','java009$','apple434@test.com','�ּ��� ���� �ۼ��� �Խù�434','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (435,'������435','java006$','test435@test.com','������ �ۼ��� �Խù�435','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (436,'������436','java002$','apple436@test.com','����ְ� �ۼ��� �Խù�436','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (437,'������437','java002$','morning437@test.com','����ְ� �ۼ��� �Խù�437','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (438,'������438','java004$','apple438@test.com','������ �ۼ��� �Խù�438','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (439,'������439','java002$','morning439@test.com','����ְ� �ۼ��� �Խù�439','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (440,'������440','java006$','apple440@test.com','������ �ۼ��� �Խù�440','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (441,'������441','java004$','test441@test.com','������ �ۼ��� �Խù�441','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (442,'������442','java002$','apple442@test.com','����ְ� �ۼ��� �Խù�442','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (443,'������443','java002$','morning443@test.com','����ְ� �ۼ��� �Խù�443','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (444,'������444','java004$','apple444@test.com','������ �ۼ��� �Խù�444','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (445,'������445','java006$','morning445@test.com','������ �ۼ��� �Խù�445','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (446,'������446','java002$','apple446@test.com','����ְ� �ۼ��� �Խù�446','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (447,'������447','java004$','test447@test.com','������ �ۼ��� �Խù�447','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (448,'������448','java009$','apple448@test.com','�ּ��� ���� �ۼ��� �Խù�448','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (449,'������449','java002$','morning449@test.com','����ְ� �ۼ��� �Խù�449','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (450,'������450','java006$','apple450@test.com','������ �ۼ��� �Խù�450','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (451,'������451','java002$','morning451@test.com','����ְ� �ۼ��� �Խù�451','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (452,'������452','java002$','apple452@test.com','����ְ� �ۼ��� �Խù�452','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (453,'������453','java004$','test453@test.com','������ �ۼ��� �Խù�453','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (454,'������454','java002$','apple454@test.com','����ְ� �ۼ��� �Խù�454','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (455,'������455','java006$','morning455@test.com','������ �ۼ��� �Խù�455','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (456,'������456','java004$','apple456@test.com','������ �ۼ��� �Խù�456','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (457,'������457','java002$','morning457@test.com','����ְ� �ۼ��� �Խù�457','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (458,'������458','java002$','apple458@test.com','����ְ� �ۼ��� �Խù�458','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (459,'������459','java004$','test459@test.com','������ �ۼ��� �Խù�459','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (460,'������460','java006$','apple460@test.com','������ �ۼ��� �Խù�460','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (461,'������461','java002$','morning461@test.com','����ְ� �ۼ��� �Խù�461','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (462,'������462','java004$','apple462@test.com','������ �ۼ��� �Խù�462','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (463,'������463','java002$','morning463@test.com','����ְ� �ۼ��� �Խù�463','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (464,'������464','java002$','apple464@test.com','����ְ� �ۼ��� �Խù�464','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (465,'������465','java006$','test465@test.com','������ �ۼ��� �Խù�465','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (466,'������466','java002$','apple466@test.com','����ְ� �ۼ��� �Խù�466','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (467,'������467','java002$','morning467@test.com','����ְ� �ۼ��� �Խù�467','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (468,'������468','java004$','apple468@test.com','������ �ۼ��� �Խù�468','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (469,'������469','java009$','morning469@test.com','�ּ��� ���� �ۼ��� �Խù�469','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (470,'������470','java006$','apple470@test.com','������ �ۼ��� �Խù�470','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (471,'������471','java004$','test471@test.com','������ �ۼ��� �Խù�471','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (472,'������472','java002$','apple472@test.com','����ְ� �ۼ��� �Խù�472','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (473,'������473','java002$','morning473@test.com','����ְ� �ۼ��� �Խù�473','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (474,'������474','java004$','apple474@test.com','������ �ۼ��� �Խù�474','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (475,'������475','java006$','morning475@test.com','������ �ۼ��� �Խù�475','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (476,'������476','java009$','apple476@test.com','�ּ��� ���� �ۼ��� �Խù�476','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (477,'������477','java004$','test477@test.com','������ �ۼ��� �Խù�477','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (478,'������478','java002$','apple478@test.com','����ְ� �ۼ��� �Խù�478','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (479,'������479','java002$','morning479@test.com','����ְ� �ۼ��� �Խù�479','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/02/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (480,'������480','java006$','apple480@test.com','������ �ۼ��� �Խù�480','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (481,'������481','java002$','morning481@test.com','����ְ� �ۼ��� �Խù�481','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (482,'������482','java002$','apple482@test.com','����ְ� �ۼ��� �Խù�482','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (483,'������483','java004$','test483@test.com','������ �ۼ��� �Խù�483','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (484,'������484','java002$','apple484@test.com','����ְ� �ۼ��� �Խù�484','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (485,'������485','java006$','morning485@test.com','������ �ۼ��� �Խù�485','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (486,'������486','java004$','apple486@test.com','������ �ۼ��� �Խù�486','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (487,'������487','java002$','morning487@test.com','����ְ� �ۼ��� �Խù�487','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (488,'������488','java002$','apple488@test.com','����ְ� �ۼ��� �Խù�488','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (489,'������489','java004$','test489@test.com','������ �ۼ��� �Խù�489','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (490,'������490','java006$','apple490@test.com','������ �ۼ��� �Խù�490','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (491,'������491','java002$','morning491@test.com','����ְ� �ۼ��� �Խù�491','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (492,'������492','java004$','apple492@test.com','������ �ۼ��� �Խù�492','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (493,'������493','java002$','morning493@test.com','����ְ� �ۼ��� �Խù�493','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (494,'������494','java002$','apple494@test.com','����ְ� �ۼ��� �Խù�494','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (495,'������495','java006$','test495@test.com','������ �ۼ��� �Խù�495','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (496,'������496','java002$','apple496@test.com','����ְ� �ۼ��� �Խù�496','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (497,'������497','java009$','morning497@test.com','�ּ��� ���� �ۼ��� �Խù�497','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (498,'������498','java004$','apple498@test.com','������ �ۼ��� �Խù�498','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (499,'������499','java002$','morning499@test.com','����ְ� �ۼ��� �Խù�499','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (500,'������500','java006$','apple500@test.com','������ �ۼ��� �Խù�500','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (501,'������501','java004$','test501@test.com','������ �ۼ��� �Խù�501','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/03/22','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (502,'������502','java002$','apple502@test.com','����ְ� �ۼ��� �Խù�502','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (503,'������503','java002$','morning503@test.com','����ְ� �ۼ��� �Խù�503','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (504,'������504','java004$','apple504@test.com','������ �ۼ��� �Խù�504','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (505,'������505','java006$','morning505@test.com','������ �ۼ��� �Խù�505','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (506,'������506','java002$','apple506@test.com','����ְ� �ۼ��� �Խù�506','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (507,'������507','java004$','test507@test.com','������ �ۼ��� �Խù�507','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (508,'������508','java002$','apple508@test.com','����ְ� �ۼ��� �Խù�508','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (509,'������509','java002$','morning509@test.com','����ְ� �ۼ��� �Խù�509','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (510,'������510','java006$','apple510@test.com','������ �ۼ��� �Խù�510','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (511,'������511','java009$','morning511@test.com','�ּ��� ���� �ۼ��� �Խù�511','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (512,'������512','java002$','apple512@test.com','����ְ� �ۼ��� �Խù�512','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (513,'������513','java004$','test513@test.com','������ �ۼ��� �Խù�513','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (514,'������514','java002$','apple514@test.com','����ְ� �ۼ��� �Խù�514','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (515,'������515','java006$','morning515@test.com','������ �ۼ��� �Խù�515','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (516,'������516','java004$','apple516@test.com','������ �ۼ��� �Խù�516','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (517,'������517','java002$','morning517@test.com','����ְ� �ۼ��� �Խù�517','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (518,'������518','java009$','apple518@test.com','�ּ��� ���� �ۼ��� �Խù�518','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (519,'������519','java004$','test519@test.com','������ �ۼ��� �Խù�519','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (520,'������520','java006$','apple520@test.com','������ �ۼ��� �Խù�520','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (521,'������521','java002$','morning521@test.com','����ְ� �ۼ��� �Խù�521','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (522,'������522','java004$','apple522@test.com','������ �ۼ��� �Խù�522','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (523,'������523','java002$','morning523@test.com','����ְ� �ۼ��� �Խù�523','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (524,'������524','java002$','apple524@test.com','����ְ� �ۼ��� �Խù�524','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (525,'������525','java006$','test525@test.com','������ �ۼ��� �Խù�525','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (526,'������526','java002$','apple526@test.com','����ְ� �ۼ��� �Խù�526','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (527,'������527','java002$','morning527@test.com','����ְ� �ۼ��� �Խù�527','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (528,'������528','java004$','apple528@test.com','������ �ۼ��� �Խù�528','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (529,'������529','java002$','morning529@test.com','����ְ� �ۼ��� �Խù�529','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (530,'������530','java006$','apple530@test.com','������ �ۼ��� �Խù�530','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (531,'������531','java004$','test531@test.com','������ �ۼ��� �Խù�531','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (532,'������532','java009$','apple532@test.com','�ּ��� ���� �ۼ��� �Խù�532','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (533,'������533','java002$','morning533@test.com','����ְ� �ۼ��� �Խù�533','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (534,'������534','java004$','apple534@test.com','������ �ۼ��� �Խù�534','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (535,'������535','java006$','morning535@test.com','������ �ۼ��� �Խù�535','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (536,'������536','java002$','apple536@test.com','����ְ� �ۼ��� �Խù�536','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (537,'������537','java004$','test537@test.com','������ �ۼ��� �Խù�537','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (538,'������538','java002$','apple538@test.com','����ְ� �ۼ��� �Խù�538','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (539,'������539','java009$','morning539@test.com','�ּ��� ���� �ۼ��� �Խù�539','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (540,'������540','java006$','apple540@test.com','������ �ۼ��� �Խù�540','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (541,'������541','java002$','morning541@test.com','����ְ� �ۼ��� �Խù�541','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (542,'������542','java002$','apple542@test.com','����ְ� �ۼ��� �Խù�542','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (543,'������543','java004$','test543@test.com','������ �ۼ��� �Խù�543','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (544,'������544','java002$','apple544@test.com','����ְ� �ۼ��� �Խù�544','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (545,'������545','java006$','morning545@test.com','������ �ۼ��� �Խù�545','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (546,'������546','java004$','apple546@test.com','������ �ۼ��� �Խù�546','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (547,'������547','java002$','morning547@test.com','����ְ� �ۼ��� �Խù�547','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (548,'������548','java002$','apple548@test.com','����ְ� �ۼ��� �Խù�548','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (549,'������549','java004$','test549@test.com','������ �ۼ��� �Խù�549','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (550,'������550','java006$','apple550@test.com','������ �ۼ��� �Խù�550','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (551,'������551','java002$','morning551@test.com','����ְ� �ۼ��� �Խù�551','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/11','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (552,'������552','java004$','apple552@test.com','������ �ۼ��� �Խù�552','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (553,'������553','java009$','morning553@test.com','�ּ��� ���� �ۼ��� �Խù�553','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (554,'������554','java002$','apple554@test.com','����ְ� �ۼ��� �Խù�554','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (555,'������555','java006$','test555@test.com','������ �ۼ��� �Խù�555','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (556,'������556','java002$','apple556@test.com','����ְ� �ۼ��� �Խù�556','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (557,'������557','java002$','morning557@test.com','����ְ� �ۼ��� �Խù�557','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (558,'������558','java004$','apple558@test.com','������ �ۼ��� �Խù�558','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (559,'������559','java002$','morning559@test.com','����ְ� �ۼ��� �Խù�559','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (560,'������560','java006$','apple560@test.com','������ �ۼ��� �Խù�560','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (561,'������561','java004$','test561@test.com','������ �ۼ��� �Խù�561','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (562,'������562','java002$','apple562@test.com','����ְ� �ۼ��� �Խù�562','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (563,'������563','java002$','morning563@test.com','����ְ� �ۼ��� �Խù�563','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (564,'������564','java004$','apple564@test.com','������ �ۼ��� �Խù�564','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (565,'������565','java006$','morning565@test.com','������ �ۼ��� �Խù�565','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (566,'������566','java002$','apple566@test.com','����ְ� �ۼ��� �Խù�566','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (567,'������567','java004$','test567@test.com','������ �ۼ��� �Խù�567','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/05/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (568,'������568','java002$','apple568@test.com','����ְ� �ۼ��� �Խù�568','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (569,'������569','java002$','morning569@test.com','����ְ� �ۼ��� �Խù�569','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (570,'������570','java006$','apple570@test.com','������ �ۼ��� �Խù�570','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (571,'������571','java002$','morning571@test.com','����ְ� �ۼ��� �Խù�571','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (572,'������572','java002$','apple572@test.com','����ְ� �ۼ��� �Խù�572','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (573,'������573','java004$','test573@test.com','������ �ۼ��� �Խù�573','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (574,'������574','java009$','apple574@test.com','�ּ��� ���� �ۼ��� �Խù�574','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (575,'������575','java006$','morning575@test.com','������ �ۼ��� �Խù�575','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (576,'������576','java004$','apple576@test.com','������ �ۼ��� �Խù�576','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (577,'������577','java002$','morning577@test.com','����ְ� �ۼ��� �Խù�577','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (578,'������578','java002$','apple578@test.com','����ְ� �ۼ��� �Խù�578','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (579,'������579','java004$','test579@test.com','������ �ۼ��� �Խù�579','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (580,'������580','java006$','apple580@test.com','������ �ۼ��� �Խù�580','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (581,'������581','java009$','morning581@test.com','�ּ��� ���� �ۼ��� �Խù�581','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (583,'������583','java002$','morning583@test.com','����ְ� �ۼ��� �Խù�583','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (584,'������584','java002$','apple584@test.com','����ְ� �ۼ��� �Խù�584','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (585,'������585','java006$','test585@test.com','������ �ۼ��� �Խù�585','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (586,'������586','java002$','apple586@test.com','����ְ� �ۼ��� �Խù�586','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (587,'������587','java002$','morning587@test.com','����ְ� �ۼ��� �Խù�587','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (588,'������588','java004$','apple588@test.com','������ �ۼ��� �Խù�588','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (589,'������589','java002$','morning589@test.com','����ְ� �ۼ��� �Խù�589','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (590,'������590','java006$','apple590@test.com','������ �ۼ��� �Խù�590','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (591,'������591','java004$','test591@test.com','������ �ۼ��� �Խù�591','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (592,'������592','java002$','apple592@test.com','����ְ� �ۼ��� �Խù�592','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (593,'������593','java002$','morning593@test.com','����ְ� �ۼ��� �Խù�593','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (594,'������594','java004$','apple594@test.com','������ �ۼ��� �Խù�594','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (595,'������595','java006$','morning595@test.com','������ �ۼ��� �Խù�595','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (596,'������596','java002$','apple596@test.com','����ְ� �ۼ��� �Խù�596','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (597,'������597','java004$','test597@test.com','������ �ۼ��� �Խù�597','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (598,'������598','java002$','apple598@test.com','����ְ� �ۼ��� �Խù�598','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (599,'������599','java002$','morning599@test.com','����ְ� �ۼ��� �Խù�599','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (600,'������600','java006$','apple600@test.com','������ �ۼ��� �Խù�600','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (601,'������601','java002$','morning601@test.com','����ְ� �ۼ��� �Խù�601','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (602,'������602','java009$','apple602@test.com','�ּ��� ���� �ۼ��� �Խù�602','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/07/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (603,'������603','java004$','test603@test.com','������ �ۼ��� �Խù�603','ķ�� ���� ���빰 �ۼ�','211.238.142.154',33,to_date('12/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (604,'������604','java002$','apple604@test.com','����ְ� �ۼ��� �Խù�604','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (605,'������605','java006$','morning605@test.com','������ �ۼ��� �Խù�605','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (606,'������606','java004$','apple606@test.com','������ �ۼ��� �Խù�606','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (607,'������607','java002$','morning607@test.com','����ְ� �ۼ��� �Խù�607','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (608,'������608','java002$','apple608@test.com','����ְ� �ۼ��� �Խù�608','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (609,'������609','java004$','test609@test.com','������ �ۼ��� �Խù�609','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (610,'������610','java006$','apple610@test.com','������ �ۼ��� �Խù�610','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (611,'������611','java002$','morning611@test.com','����ְ� �ۼ��� �Խù�611','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (612,'������612','java004$','apple612@test.com','������ �ۼ��� �Խù�612','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (613,'������613','java002$','morning613@test.com','����ְ� �ۼ��� �Խù�613','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (614,'������614','java002$','apple614@test.com','����ְ� �ۼ��� �Խù�614','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (615,'������615','java006$','test615@test.com','������ �ۼ��� �Խù�615','�޸��� ���� ���빰 �ۼ�','211.238.142.164',32,to_date('12/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (616,'������616','java009$','apple616@test.com','�ּ��� ���� �ۼ��� �Խù�616','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (617,'������617','java002$','morning617@test.com','����ְ� �ۼ��� �Խù�617','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (618,'������618','java004$','apple618@test.com','������ �ۼ��� �Խù�618','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (619,'������619','java002$','morning619@test.com','����ְ� �ۼ��� �Խù�619','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (620,'������620','java006$','apple620@test.com','������ �ۼ��� �Խù�620','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (621,'������621','java004$','test621@test.com','������ �ۼ��� �Խù�621','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (622,'������622','java002$','apple622@test.com','����ְ� �ۼ��� �Խù�622','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (623,'������623','java009$','morning623@test.com','�ּ��� ���� �ۼ��� �Խù�623','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',73,to_date('12/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (624,'������624','java004$','apple624@test.com','������ �ۼ��� �Խù�624','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (625,'������625','java006$','morning625@test.com','������ �ۼ��� �Խù�625','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (626,'������626','java002$','apple626@test.com','����ְ� �ۼ��� �Խù�626','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (627,'������627','java004$','test627@test.com','������ �ۼ��� �Խù�627','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (628,'������628','java002$','apple628@test.com','����ְ� �ۼ��� �Խù�628','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (629,'������629','java002$','morning629@test.com','����ְ� �ۼ��� �Խù�629','����ī ���� ���빰 �ۼ�','211.238.142.167',74,to_date('12/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (630,'������630','java006$','apple630@test.com','������ �ۼ��� �Խù�630','�޸��� ���� ���빰 �ۼ�','211.238.142.164',29,to_date('12/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (631,'������631','java002$','morning631@test.com','����ְ� �ۼ��� �Խù�631','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (632,'������632','java002$','apple632@test.com','����ְ� �ۼ��� �Խù�632','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (633,'������633','java006$','test633@test.com','����¥ ��¥ ������ �Ǵٽ� ������ �Խù�633','ķ�� ���� ���빰 �ۼ�

������������
����
������ ����
��¥������
����¥ ��¥ ','211.238.142.154',48,to_date('12/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (634,'������634','java002$','apple634@test.com','����ְ� �ۼ��� �Խù�634','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (635,'������635','java006$','morning635@test.com','������ �ۼ��� �Խù�635','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (636,'������636','java004$','apple636@test.com','������ �ۼ��� �Խù�636','ķ�� ���� ���빰 �ۼ�','211.238.142.154',28,to_date('12/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (637,'������637','java009$','morning637@test.com','�ּ��� ���� �ۼ��� �Խù�637','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',72,to_date('12/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (638,'������638','java002$','apple638@test.com','������ ����ְ� �ۼ��� �Խù�638','����ī ���� ���빰 �ۼ�','211.238.142.167',31,to_date('12/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (639,'������639','java004$','test639@test.com','������ �ۼ��� �Խù�639','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (640,'������640','java006$','apple640@test.com','���� ������ ������ �ۼ��� �Խù�640','�޸��� ���� ���빰 �ۼ�
������ ~!
����','211.238.142.164',29,to_date('12/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (641,'������641','java002$','morning641@test.com','����ְ� �ۼ��� �Խù�641','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (642,'������642','java004$','apple642@test.com','������ �ۼ��� �Խù�642','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (643,'������643','java002$','morning643@test.com','������ ����ְ� �ۼ��� �Խù�643','����ī ���� ���빰 �ۼ�
�����߾��','211.238.142.167',75,to_date('12/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (644,'������644','java009$','apple644@test.com','�ּ��� ���� �ۼ��� �Խù�644','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (645,'������645','java006$','test645@test.com','������ �ۼ��� �Խù�645','�޸��� ���� ���빰 �ۼ�','211.238.142.164',33,to_date('12/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (646,'������646','java002$','apple646@test.com','����ְ� �ۼ��� �Խù�646','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (647,'������647','java002$','morning647@test.com','����ְ� �ۼ��� �Խù�647','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (648,'������648','java004$','apple648@test.com','������ �ۼ��� �Խù�648','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (649,'������649','java002$','morning649@test.com','����ְ� �ۼ��� �Խù�649','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (650,'������650','java006$','apple650@test.com','������ �ۼ��� �Խù�650','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (651,'������651','java004$','test651@test.com','������ �ۼ��� �Խù�651','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (652,'������652','java002$','apple652@test.com','����ְ� �ۼ��� �Խù�652','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/08/20','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (653,'������653','java002$','morning653@test.com','����ְ� �ۼ��� �Խù�653','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (654,'������654','java004$','apple654@test.com','������ �ۼ��� �Խù�654','ķ�� ���� ���빰 �ۼ�','211.238.142.154',27,to_date('12/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (655,'������655','java006$','morning655@test.com','������ �ۼ��� �Խù�655','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (656,'������656','java002$','apple656@test.com','����ְ� �ۼ��� �Խù�656','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (657,'������657','java004$','test657@test.com','������ �ۼ��� �Խù�657','ķ�� ���� ���빰 �ۼ�','211.238.142.154',32,to_date('12/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (658,'������658','java009$','apple658@test.com','�ּ��� ���� �ۼ��� �Խù�658','�Ҹ��� ���� ���빰 �ۼ�','211.238.142.151',27,to_date('12/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (659,'������659','java002$','morning659@test.com','����ְ� �ۼ��� �Խù�659','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (660,'������660','java006$','apple660@test.com','������ �ۼ��� �Խù�660','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (661,'������661','java002$','morning661@test.com','����ְ� �ۼ��� �Խù�661','����ī ���� ���빰 �ۼ�','211.238.142.167',72,to_date('12/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (662,'������662','java002$','apple662@test.com','����ְ� �ۼ��� �Խù�662','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (663,'������663','java004$','test663@test.com','������ �ۼ��� �Խù�663','ķ�� ���� ���빰 �ۼ�','211.238.142.154',33,to_date('12/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (664,'������664','java002$','apple664@test.com','����ְ� �ۼ��� �Խù�664','����ī ���� ���빰 �ۼ�','211.238.142.167',35,to_date('12/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (665,'������665','java006$','morning665@test.com','������ �ۼ��� �Խù�665','�޸��� ���� ���빰 �ۼ�','211.238.142.164',72,to_date('12/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (667,'������667','java002$','morning667@test.com','����ְ� �ۼ��� �Խù�667','����ī ���� ���빰 �ۼ�','211.238.142.167',73,to_date('12/09/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (668,'������668','java002$','apple668@test.com','����ְ� �ۼ��� �Խù�668','����ī ���� ���빰 �ۼ�','211.238.142.167',27,to_date('12/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (669,'������669','java004$','test669@test.com','������ �ۼ��� �Խù�669','ķ�� ���� ���빰 �ۼ�','211.238.142.154',33,to_date('12/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (670,'������670','java006$','apple670@test.com','������ �ۼ��� �Խù�670','�޸��� ���� ���빰 �ۼ�','211.238.142.164',27,to_date('12/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (671,'������671','java002$','morning671@test.com','����ְ� �ۼ��� �Խù�671','����ī ���� ���빰 �ۼ�','211.238.142.167',75,to_date('12/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (672,'������672','java004$','apple672@test.com','������ �ۼ��� �Խù�672','ķ�� ���� ���빰 �ۼ�','211.238.142.154',30,to_date('12/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (673,'������','1234','kjh@test.com','�ۿø��� �׽�Ʈ','�Խù� �ۼ� ������
�׽�Ʈ�� �����ϰ� �ֽ��ϴ�.
���� ���� Ȯ�ε� �Բ� ó���մϴ�.
�ۼ��� IP Address �� üũ�մϴ�.','0:0:0:0:0:0:0:1',9,to_date('21/11/08','RR/MM/DD'));
commit;
REM INSERTING into SCOTT.TBL_EXAM
SET DEFINE OFF;
Insert into SCOTT.TBL_EXAM (ID,PW) values (1,'j??s');
commit;
REM INSERTING into SCOTT.TBL_GRADE
SET DEFINE OFF;
Insert into SCOTT.TBL_GRADE (SID,SUB1,SUB2,SUB3) values (1,90,80,70);
Insert into SCOTT.TBL_GRADE (SID,SUB1,SUB2,SUB3) values (2,70,60,80);
Insert into SCOTT.TBL_GRADE (SID,SUB1,SUB2,SUB3) values (3,92,81,73);
Insert into SCOTT.TBL_GRADE (SID,SUB1,SUB2,SUB3) values (4,90,66,77);
Insert into SCOTT.TBL_GRADE (SID,SUB1,SUB2,SUB3) values (5,89,91,70);
commit;
REM INSERTING into SCOTT.TBL_MEMBERLIST
SET DEFINE OFF;
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (3,'������','010-9999-9999');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (11,'��ȿ��','010-3434-5656');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (5,'ȿ����','010-1111-1111');
commit;
REM INSERTING into SCOTT.TBL_STUDENT
SET DEFINE OFF;
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (1,'��ȿ��','010-1111-1111');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (2,'������','010-2222-2222');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (3,'����','010-3333-3333');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (4,'����ȣ','010-4444-4444');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (5,'�չ���','010-5555-5555');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (6,'����ȣ','010-6666-6666');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (7,'ȿ����','010-7777-7777');
commit;
--------------------------------------------------------
--  DDL for Index BOARD_NUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."BOARD_NUM_PK" ON "SCOTT"."TBL_BOARD" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DEPARTMENT_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."DEPARTMENT_ID_PK" ON "SCOTT"."DEPARTMENT" ("DEPARTMENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."EMPLOYEE_ID_PK" ON "SCOTT"."EMPLOYEE" ("EMPLOYEEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GRADE_SID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."GRADE_SID_PK" ON "SCOTT"."TBL_GRADE" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MEMBERLIST_MID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MEMBERLIST_MID_PK" ON "SCOTT"."TBL_MEMBERLIST" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POSITION_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."POSITION_ID_PK" ON "SCOTT"."POSITION" ("POSITIONID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REGION_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."REGION_ID_PK" ON "SCOTT"."REGION" ("REGIONID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index STUDENT_SID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."STUDENT_SID_PK" ON "SCOTT"."TBL_STUDENT" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Package CRYPTPACK
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SCOTT"."CRYPTPACK" 
AS
    FUNCTION ENCRYPT(STR VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2;

    FUNCTION DECRYPT(XCRYPT VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2;

END CRYPTPACK;

/
--------------------------------------------------------
--  DDL for Package Body CRYPTPACK
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SCOTT"."CRYPTPACK" 
IS
    CRYPTED_STRING VARCHAR2(2000);

    FUNCTION ENCRYPT(STR VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2
    IS
        PIECES_OF_EIGHT NUMBER := ((FLOOR(LENGTH(STR)/8 + .9)) * 8);
    BEGIN
        DBMS_OBFUSCATION_TOOLKIT.DESENCRYPT
        ( INPUT_STRING      => RPAD(STR, PIECES_OF_EIGHT)
        , KEY_STRING        => RPAD(HASH, 8, '#')
        , ENCRYPTED_STRING  => CRYPTED_STRING
        );
        RETURN CRYPTED_STRING;
    END;

    FUNCTION DECRYPT(XCRYPT VARCHAR2, HASH VARCHAR2)
    RETURN VARCHAR2
    IS
    BEGIN
        DBMS_OBFUSCATION_TOOLKIT.DESDECRYPT
        ( INPUT_STRING      => XCRYPT
        , KEY_STRING        => RPAD(HASH, 8, '#')
        , DECRYPTED_STRING  => CRYPTED_STRING
        );
        RETURN TRIM(CRYPTED_STRING);
    END;

END CRYPTPACK;

/
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_ID_PK" PRIMARY KEY ("EMPLOYEEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_LUNAR_CK" CHECK (LUNAR=0 OR LUNAR=1) ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_STUDENT" ADD CONSTRAINT "STUDENT_SID_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "SCOTT"."DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_ID_PK" PRIMARY KEY ("DEPARTMENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_MEMBERLIST
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_MEMBERLIST" ADD CONSTRAINT "MEMBERLIST_MID_PK" PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_BOARD" ADD CONSTRAINT "BOARD_NUM_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("CREATED" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("HITCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."TBL_BOARD" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "SCOTT"."POSITION" ADD CONSTRAINT "POSITION_ID_PK" PRIMARY KEY ("POSITIONID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REGION
--------------------------------------------------------

  ALTER TABLE "SCOTT"."REGION" ADD CONSTRAINT "REGION_ID_PK" PRIMARY KEY ("REGIONID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TBL_GRADE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_GRADE" ADD CONSTRAINT "GRADE_SID_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SCOTT"."TBL_GRADE" ADD CONSTRAINT "GRADE_SUB3_CK" CHECK (SUB3 BETWEEN 0 AND 100) ENABLE;
  ALTER TABLE "SCOTT"."TBL_GRADE" ADD CONSTRAINT "GRADE_SUB2_CK" CHECK (SUB2 BETWEEN 0 AND 100) ENABLE;
  ALTER TABLE "SCOTT"."TBL_GRADE" ADD CONSTRAINT "GRADE_SUB1_CK" CHECK (SUB1 BETWEEN 0 AND 100) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_DEPARTMENTID_FK" FOREIGN KEY ("DEPARTMENTID")
	  REFERENCES "SCOTT"."DEPARTMENT" ("DEPARTMENTID") ENABLE;
  ALTER TABLE "SCOTT"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_POSITIONID_FK" FOREIGN KEY ("POSITIONID")
	  REFERENCES "SCOTT"."POSITION" ("POSITIONID") ENABLE;
  ALTER TABLE "SCOTT"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_REGIONID_FK" FOREIGN KEY ("REGIONID")
	  REFERENCES "SCOTT"."REGION" ("REGIONID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_GRADE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."TBL_GRADE" ADD CONSTRAINT "GRADE_SID_FK" FOREIGN KEY ("SID")
	  REFERENCES "SCOTT"."TBL_STUDENT" ("SID") ENABLE;
