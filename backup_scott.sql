--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-23-2021   
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
	"LUNAR" NUMBER(1,0) DEFAULT 0 -- 양음력       -- 양력0, 음력1
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
     , E.SSN1 AS SSN        -- 수정
     , TO_CHAR(E.BIRTHDAY,'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR AS LUNAR
     , DECODE(E.LUNAR,0,'양력',1,'음력') AS LUNARNAME
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
     , E.GRADE AS GRADE -- 수정
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
     , (CASE WHEN (G.SUB1 + G.SUB2 + G.SUB3)/3 < 60 THEN '불합격'
             WHEN (G.SUB1 <= 40) OR (G.SUB2 <= 40) OR (G.SUB3 <= 40) THEN '과락'
             ELSE '합격'
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
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (1,'개발부');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (2,'기획부');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (3,'영업부');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (4,'총무부');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (5,'마케팅부');
commit;
REM INSERTING into SCOTT.EMPLOYEE
SET DEFINE OFF;
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (1,'김진희',to_date('99/03/20','RR/MM/DD'),0,'010-7389-9032',1,1,1,1500000,1500000,'990320','Y{?7?',0);
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (4,'김소연',to_date('93/07/30','RR/MM/DD'),0,'010-9211-0575',2,2,4,2500000,250000,'930730','Y{?7?',1);
commit;
REM INSERTING into SCOTT.POSITION
SET DEFINE OFF;
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (1,'사원',1000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (2,'대리',2000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (3,'부장',3000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (4,'상무',4000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (5,'전무',5000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (6,'박대리',6000000);
commit;
REM INSERTING into SCOTT.REGION
SET DEFINE OFF;
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (1,'서울');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (2,'경기');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (3,'인천');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (8,'부산');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (4,'제주');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (9,'마산');
commit;
REM INSERTING into SCOTT.TBL_BOARD
SET DEFINE OFF;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (1,'정미화','1234','hwa@test.com','작성테스트','내용물작성','211.238.142.153',111,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (2,'서승균','1234','ssk@test.com','승균이 출동','내가 바로 승균이다','211.238.142.153',16,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (3,'손다정','1234','sdj@test.com','손다정 출동','서울 거처 마련','211.238.142.153',15,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (5,'김혜진5','java006$','morning5@test.com','열심히 작성한 게시물5','달리기 관련 내용물 작성','211.238.142.164',72,to_date('10/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (6,'이혜진6','java004$','apple6@test.com','성실히 작성한 게시물6','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (7,'박혜진7','java009$','morning7@test.com','최선을 다해 작성한 게시물7','소모임 관련 내용물 작성','211.238.142.151',72,to_date('10/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (8,'최혜진8','java002$','apple8@test.com','재미있게 작성한 게시물8','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (9,'이혜진9','java004$','test9@test.com','성실히 작성한 게시물9','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (10,'김혜진10','java006$','apple10@test.com','열심히 작성한 게시물10','달리기 관련 내용물 작성','211.238.142.164',27,to_date('10/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (11,'최혜진11','java002$','morning11@test.com','재미있게 작성한 게시물11','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (12,'이혜진12','java004$','apple12@test.com','성실히 작성한 게시물12','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (13,'최혜진13','java002$','morning13@test.com','재미있게 작성한 게시물13','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (14,'박혜진14','java009$','apple14@test.com','최선을 다해 작성한 게시물14','소모임 관련 내용물 작성','211.238.142.151',27,to_date('10/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (15,'김혜진15','java006$','test15@test.com','열심히 작성한 게시물15','달리기 관련 내용물 작성','211.238.142.164',32,to_date('10/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (16,'최혜진16','java002$','apple16@test.com','재미있게 작성한 게시물16','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (17,'최혜진17','java002$','morning17@test.com','재미있게 작성한 게시물17','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (18,'이혜진18','java004$','apple18@test.com','성실히 작성한 게시물18','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (19,'최혜진19','java002$','morning19@test.com','재미있게 작성한 게시물19','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (20,'김혜진20','java006$','apple20@test.com','열심히 작성한 게시물20','달리기 관련 내용물 작성','211.238.142.164',27,to_date('10/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (21,'이혜진21','java004$','test21@test.com','성실히 작성한 게시물21','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (22,'최혜진22','java002$','apple22@test.com','재미있게 작성한 게시물22','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (23,'최혜진23','java002$','morning23@test.com','재미있게 작성한 게시물23','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (24,'이혜진24','java004$','apple24@test.com','성실히 작성한 게시물24','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (25,'김혜진25','java006$','morning25@test.com','열심히 작성한 게시물25','달리기 관련 내용물 작성','211.238.142.164',72,to_date('10/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (26,'최혜진26','java002$','apple26@test.com','재미있게 작성한 게시물26','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (27,'이혜진27','java004$','test27@test.com','성실히 작성한 게시물27','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (28,'박혜진28','java009$','apple28@test.com','최선을 다해 작성한 게시물28','소모임 관련 내용물 작성','211.238.142.151',27,to_date('10/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (29,'최혜진29','java002$','morning29@test.com','재미있게 작성한 게시물29','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (30,'김혜진30','java006$','apple30@test.com','열심히 작성한 게시물30','달리기 관련 내용물 작성','211.238.142.164',27,to_date('10/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (31,'최혜진31','java002$','morning31@test.com','재미있게 작성한 게시물31','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (32,'최혜진32','java002$','apple32@test.com','재미있게 작성한 게시물32','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (33,'이혜진33','java004$','test33@test.com','성실히 작성한 게시물33','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (34,'최혜진34','java002$','apple34@test.com','재미있게 작성한 게시물34','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (35,'김혜진35','java006$','morning35@test.com','열심히 작성한 게시물35','달리기 관련 내용물 작성','211.238.142.164',72,to_date('10/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (36,'이혜진36','java004$','apple36@test.com','성실히 작성한 게시물36','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/12/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (37,'최혜진37','java002$','morning37@test.com','재미있게 작성한 게시물37','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (38,'최혜진38','java002$','apple38@test.com','재미있게 작성한 게시물38','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (39,'이혜진39','java004$','test39@test.com','성실히 작성한 게시물39','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (40,'김혜진40','java006$','apple40@test.com','열심히 작성한 게시물40','달리기 관련 내용물 작성','211.238.142.164',27,to_date('10/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (41,'최혜진41','java002$','morning41@test.com','재미있게 작성한 게시물41','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (42,'이혜진42','java004$','apple42@test.com','성실히 작성한 게시물42','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (43,'최혜진43','java002$','morning43@test.com','재미있게 작성한 게시물43','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (44,'최혜진44','java002$','apple44@test.com','재미있게 작성한 게시물44','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (45,'김혜진45','java006$','test45@test.com','열심히 작성한 게시물45','달리기 관련 내용물 작성','211.238.142.164',32,to_date('10/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (46,'최혜진46','java002$','apple46@test.com','재미있게 작성한 게시물46','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (47,'최혜진47','java002$','morning47@test.com','재미있게 작성한 게시물47','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (48,'이혜진48','java004$','apple48@test.com','성실히 작성한 게시물48','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (49,'박혜진49','java009$','morning49@test.com','최선을 다해 작성한 게시물49','소모임 관련 내용물 작성','211.238.142.151',72,to_date('10/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (50,'김혜진50','java006$','apple50@test.com','열심히 작성한 게시물50','달리기 관련 내용물 작성','211.238.142.164',27,to_date('10/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (51,'이혜진51','java004$','test51@test.com','성실히 작성한 게시물51','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('10/12/28','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (52,'최혜진52','java002$','apple52@test.com','재미있게 작성한 게시물52','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('10/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (53,'최혜진53','java002$','morning53@test.com','재미있게 작성한 게시물53','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('10/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (54,'이혜진54','java004$','apple54@test.com','성실히 작성한 게시물54','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('10/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (55,'김혜진55','java006$','morning55@test.com','열심히 작성한 게시물55','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (56,'박혜진56','java009$','apple56@test.com','최선을 다해 작성한 게시물56','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (57,'이혜진57','java004$','test57@test.com','성실히 작성한 게시물57','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (58,'최혜진58','java002$','apple58@test.com','재미있게 작성한 게시물58','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (59,'최혜진59','java002$','morning59@test.com','재미있게 작성한 게시물59','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (60,'김혜진60','java006$','apple60@test.com','열심히 작성한 게시물60','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (61,'최혜진61','java002$','morning61@test.com','재미있게 작성한 게시물61','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (62,'최혜진62','java002$','apple62@test.com','재미있게 작성한 게시물62','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (63,'이혜진63','java004$','test63@test.com','성실히 작성한 게시물63','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (64,'최혜진64','java002$','apple64@test.com','재미있게 작성한 게시물64','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (65,'김혜진65','java006$','morning65@test.com','열심히 작성한 게시물65','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (66,'이혜진66','java004$','apple66@test.com','성실히 작성한 게시물66','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (67,'최혜진67','java002$','morning67@test.com','재미있게 작성한 게시물67','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (68,'최혜진68','java002$','apple68@test.com','재미있게 작성한 게시물68','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (69,'이혜진69','java004$','test69@test.com','성실히 작성한 게시물69','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (70,'김혜진70','java006$','apple70@test.com','열심히 작성한 게시물70','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (71,'최혜진71','java002$','morning71@test.com','재미있게 작성한 게시물71','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (72,'이혜진72','java004$','apple72@test.com','성실히 작성한 게시물72','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (73,'최혜진73','java002$','morning73@test.com','재미있게 작성한 게시물73','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (74,'최혜진74','java002$','apple74@test.com','재미있게 작성한 게시물74','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (75,'김혜진75','java006$','test75@test.com','열심히 작성한 게시물75','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (76,'최혜진76','java002$','apple76@test.com','재미있게 작성한 게시물76','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (77,'박혜진77','java009$','morning77@test.com','최선을 다해 작성한 게시물77','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (78,'이혜진78','java004$','apple78@test.com','성실히 작성한 게시물78','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (79,'최혜진79','java002$','morning79@test.com','재미있게 작성한 게시물79','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (80,'김혜진80','java006$','apple80@test.com','열심히 작성한 게시물80','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (81,'이혜진81','java004$','test81@test.com','성실히 작성한 게시물81','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (82,'최혜진82','java002$','apple82@test.com','재미있게 작성한 게시물82','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (83,'최혜진83','java002$','morning83@test.com','재미있게 작성한 게시물83','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (84,'이혜진84','java004$','apple84@test.com','성실히 작성한 게시물84','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (85,'김혜진85','java006$','morning85@test.com','열심히 작성한 게시물85','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (86,'최혜진86','java002$','apple86@test.com','재미있게 작성한 게시물86','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (87,'이혜진87','java004$','test87@test.com','성실히 작성한 게시물87','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (88,'최혜진88','java002$','apple88@test.com','재미있게 작성한 게시물88','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (89,'최혜진89','java002$','morning89@test.com','재미있게 작성한 게시물89','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (90,'김혜진90','java006$','apple90@test.com','열심히 작성한 게시물90','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (91,'박혜진91','java009$','morning91@test.com','최선을 다해 작성한 게시물91','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (92,'최혜진92','java002$','apple92@test.com','재미있게 작성한 게시물92','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (93,'이혜진93','java004$','test93@test.com','성실히 작성한 게시물93','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (94,'최혜진94','java002$','apple94@test.com','재미있게 작성한 게시물94','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (95,'김혜진95','java006$','morning95@test.com','열심히 작성한 게시물95','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (96,'이혜진96','java004$','apple96@test.com','성실히 작성한 게시물96','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (97,'최혜진97','java002$','morning97@test.com','재미있게 작성한 게시물97','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (98,'박혜진98','java009$','apple98@test.com','최선을 다해 작성한 게시물98','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (99,'이혜진99','java004$','test99@test.com','성실히 작성한 게시물99','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (100,'김혜진100','java006$','apple100@test.com','열심히 작성한 게시물100','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (101,'최혜진101','java002$','morning101@test.com','재미있게 작성한 게시물101','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (102,'이혜진102','java004$','apple102@test.com','성실히 작성한 게시물102','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (103,'최혜진103','java002$','morning103@test.com','재미있게 작성한 게시물103','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (104,'최혜진104','java002$','apple104@test.com','재미있게 작성한 게시물104','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (105,'김혜진105','java006$','test105@test.com','열심히 작성한 게시물105','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (106,'최혜진106','java002$','apple106@test.com','재미있게 작성한 게시물106','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (107,'최혜진107','java002$','morning107@test.com','재미있게 작성한 게시물107','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (108,'이혜진108','java004$','apple108@test.com','성실히 작성한 게시물108','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (109,'최혜진109','java002$','morning109@test.com','재미있게 작성한 게시물109','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (110,'김혜진110','java006$','apple110@test.com','열심히 작성한 게시물110','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (111,'이혜진111','java004$','test111@test.com','성실히 작성한 게시물111','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (112,'박혜진112','java009$','apple112@test.com','최선을 다해 작성한 게시물112','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (113,'최혜진113','java002$','morning113@test.com','재미있게 작성한 게시물113','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (114,'이혜진114','java004$','apple114@test.com','성실히 작성한 게시물114','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (115,'김혜진115','java006$','morning115@test.com','열심히 작성한 게시물115','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (116,'최혜진116','java002$','apple116@test.com','재미있게 작성한 게시물116','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (117,'이혜진117','java004$','test117@test.com','성실히 작성한 게시물117','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (118,'최혜진118','java002$','apple118@test.com','재미있게 작성한 게시물118','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (119,'박혜진119','java009$','morning119@test.com','최선을 다해 작성한 게시물119','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (120,'김혜진120','java006$','apple120@test.com','열심히 작성한 게시물120','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (121,'최혜진121','java002$','morning121@test.com','재미있게 작성한 게시물121','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (122,'최혜진122','java002$','apple122@test.com','재미있게 작성한 게시물122','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (123,'이혜진123','java004$','test123@test.com','성실히 작성한 게시물123','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (124,'최혜진124','java002$','apple124@test.com','재미있게 작성한 게시물124','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (125,'김혜진125','java006$','morning125@test.com','열심히 작성한 게시물125','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (126,'이혜진126','java004$','apple126@test.com','성실히 작성한 게시물126','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (127,'최혜진127','java002$','morning127@test.com','재미있게 작성한 게시물127','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (128,'최혜진128','java002$','apple128@test.com','재미있게 작성한 게시물128','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (129,'이혜진129','java004$','test129@test.com','성실히 작성한 게시물129','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (130,'김혜진130','java006$','apple130@test.com','열심히 작성한 게시물130','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (131,'최혜진131','java002$','morning131@test.com','재미있게 작성한 게시물131','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (132,'이혜진132','java004$','apple132@test.com','성실히 작성한 게시물132','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (133,'박혜진133','java009$','morning133@test.com','최선을 다해 작성한 게시물133','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (134,'최혜진134','java002$','apple134@test.com','재미있게 작성한 게시물134','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (135,'김혜진135','java006$','test135@test.com','열심히 작성한 게시물135','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/03/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (136,'최혜진136','java002$','apple136@test.com','재미있게 작성한 게시물136','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (137,'최혜진137','java002$','morning137@test.com','재미있게 작성한 게시물137','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (138,'이혜진138','java004$','apple138@test.com','성실히 작성한 게시물138','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (139,'최혜진139','java002$','morning139@test.com','재미있게 작성한 게시물139','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (140,'김혜진140','java006$','apple140@test.com','열심히 작성한 게시물140','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (141,'이혜진141','java004$','test141@test.com','성실히 작성한 게시물141','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (142,'최혜진142','java002$','apple142@test.com','재미있게 작성한 게시물142','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (143,'최혜진143','java002$','morning143@test.com','재미있게 작성한 게시물143','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (144,'이혜진144','java004$','apple144@test.com','성실히 작성한 게시물144','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (145,'김혜진145','java006$','morning145@test.com','열심히 작성한 게시물145','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (146,'최혜진146','java002$','apple146@test.com','재미있게 작성한 게시물146','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (147,'이혜진147','java004$','test147@test.com','성실히 작성한 게시물147','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (148,'최혜진148','java002$','apple148@test.com','재미있게 작성한 게시물148','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (149,'최혜진149','java002$','morning149@test.com','재미있게 작성한 게시물149','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (150,'김혜진150','java006$','apple150@test.com','열심히 작성한 게시물150','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (151,'최혜진151','java002$','morning151@test.com','재미있게 작성한 게시물151','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/07','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (152,'최혜진152','java002$','apple152@test.com','재미있게 작성한 게시물152','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (153,'이혜진153','java004$','test153@test.com','성실히 작성한 게시물153','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (154,'박혜진154','java009$','apple154@test.com','최선을 다해 작성한 게시물154','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (155,'김혜진155','java006$','morning155@test.com','열심히 작성한 게시물155','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (156,'이혜진156','java004$','apple156@test.com','성실히 작성한 게시물156','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (157,'최혜진157','java002$','morning157@test.com','재미있게 작성한 게시물157','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (158,'최혜진158','java002$','apple158@test.com','재미있게 작성한 게시물158','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (159,'이혜진159','java004$','test159@test.com','성실히 작성한 게시물159','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (160,'김혜진160','java006$','apple160@test.com','열심히 작성한 게시물160','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (161,'박혜진161','java009$','morning161@test.com','최선을 다해 작성한 게시물161','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (162,'이혜진162','java004$','apple162@test.com','성실히 작성한 게시물162','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (163,'최혜진163','java002$','morning163@test.com','재미있게 작성한 게시물163','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (164,'최혜진164','java002$','apple164@test.com','재미있게 작성한 게시물164','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (165,'김혜진165','java006$','test165@test.com','열심히 작성한 게시물165','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (166,'최혜진166','java002$','apple166@test.com','재미있게 작성한 게시물166','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (167,'최혜진167','java002$','morning167@test.com','재미있게 작성한 게시물167','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (168,'이혜진168','java004$','apple168@test.com','성실히 작성한 게시물168','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (169,'최혜진169','java002$','morning169@test.com','재미있게 작성한 게시물169','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (170,'김혜진170','java006$','apple170@test.com','열심히 작성한 게시물170','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (171,'이혜진171','java004$','test171@test.com','성실히 작성한 게시물171','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (172,'최혜진172','java002$','apple172@test.com','재미있게 작성한 게시물172','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (173,'최혜진173','java002$','morning173@test.com','재미있게 작성한 게시물173','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (174,'이혜진174','java004$','apple174@test.com','성실히 작성한 게시물174','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (175,'김혜진175','java006$','morning175@test.com','열심히 작성한 게시물175','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (176,'최혜진176','java002$','apple176@test.com','재미있게 작성한 게시물176','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (177,'이혜진177','java004$','test177@test.com','성실히 작성한 게시물177','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (178,'최혜진178','java002$','apple178@test.com','재미있게 작성한 게시물178','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (179,'최혜진179','java002$','morning179@test.com','재미있게 작성한 게시물179','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (180,'김혜진180','java006$','apple180@test.com','열심히 작성한 게시물180','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (181,'최혜진181','java002$','morning181@test.com','재미있게 작성한 게시물181','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (182,'박혜진182','java009$','apple182@test.com','최선을 다해 작성한 게시물182','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (183,'이혜진183','java004$','test183@test.com','성실히 작성한 게시물183','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (184,'최혜진184','java002$','apple184@test.com','재미있게 작성한 게시물184','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (185,'김혜진185','java006$','morning185@test.com','열심히 작성한 게시물185','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/05/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (186,'이혜진186','java004$','apple186@test.com','성실히 작성한 게시물186','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (187,'최혜진187','java002$','morning187@test.com','재미있게 작성한 게시물187','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (188,'최혜진188','java002$','apple188@test.com','재미있게 작성한 게시물188','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (189,'이혜진189','java004$','test189@test.com','성실히 작성한 게시물189','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (190,'김혜진190','java006$','apple190@test.com','열심히 작성한 게시물190','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (191,'최혜진191','java002$','morning191@test.com','재미있게 작성한 게시물191','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (192,'이혜진192','java004$','apple192@test.com','성실히 작성한 게시물192','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (193,'최혜진193','java002$','morning193@test.com','재미있게 작성한 게시물193','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (194,'최혜진194','java002$','apple194@test.com','재미있게 작성한 게시물194','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (195,'김혜진195','java006$','test195@test.com','열심히 작성한 게시물195','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (196,'박혜진196','java009$','apple196@test.com','최선을 다해 작성한 게시물196','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (197,'최혜진197','java002$','morning197@test.com','재미있게 작성한 게시물197','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (198,'이혜진198','java004$','apple198@test.com','성실히 작성한 게시물198','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (199,'최혜진199','java002$','morning199@test.com','재미있게 작성한 게시물199','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (200,'김혜진200','java006$','apple200@test.com','열심히 작성한 게시물200','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (201,'이혜진201','java004$','test201@test.com','성실히 작성한 게시물201','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/05/27','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (202,'최혜진202','java002$','apple202@test.com','재미있게 작성한 게시물202','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (203,'박혜진203','java009$','morning203@test.com','최선을 다해 작성한 게시물203','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (204,'이혜진204','java004$','apple204@test.com','성실히 작성한 게시물204','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (205,'김혜진205','java006$','morning205@test.com','열심히 작성한 게시물205','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (206,'최혜진206','java002$','apple206@test.com','재미있게 작성한 게시물206','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (207,'이혜진207','java004$','test207@test.com','성실히 작성한 게시물207','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (208,'최혜진208','java002$','apple208@test.com','재미있게 작성한 게시물208','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (209,'최혜진209','java002$','morning209@test.com','재미있게 작성한 게시물209','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (210,'김혜진210','java006$','apple210@test.com','열심히 작성한 게시물210','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (211,'최혜진211','java002$','morning211@test.com','재미있게 작성한 게시물211','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (212,'최혜진212','java002$','apple212@test.com','재미있게 작성한 게시물212','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (213,'이혜진213','java004$','test213@test.com','성실히 작성한 게시물213','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (214,'최혜진214','java002$','apple214@test.com','재미있게 작성한 게시물214','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (215,'김혜진215','java006$','morning215@test.com','열심히 작성한 게시물215','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (216,'이혜진216','java004$','apple216@test.com','성실히 작성한 게시물216','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/06/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (217,'박혜진217','java009$','morning217@test.com','최선을 다해 작성한 게시물217','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (218,'최혜진218','java002$','apple218@test.com','재미있게 작성한 게시물218','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (219,'이혜진219','java004$','test219@test.com','성실히 작성한 게시물219','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (220,'김혜진220','java006$','apple220@test.com','열심히 작성한 게시물220','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (221,'최혜진221','java002$','morning221@test.com','재미있게 작성한 게시물221','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (222,'이혜진222','java004$','apple222@test.com','성실히 작성한 게시물222','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (223,'최혜진223','java002$','morning223@test.com','재미있게 작성한 게시물223','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (224,'박혜진224','java009$','apple224@test.com','최선을 다해 작성한 게시물224','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (225,'김혜진225','java006$','test225@test.com','열심히 작성한 게시물225','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (226,'최혜진226','java002$','apple226@test.com','재미있게 작성한 게시물226','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (227,'최혜진227','java002$','morning227@test.com','재미있게 작성한 게시물227','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (228,'이혜진228','java004$','apple228@test.com','성실히 작성한 게시물228','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (229,'최혜진229','java002$','morning229@test.com','재미있게 작성한 게시물229','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (230,'김혜진230','java006$','apple230@test.com','열심히 작성한 게시물230','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (231,'이혜진231','java004$','test231@test.com','성실히 작성한 게시물231','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (232,'최혜진232','java002$','apple232@test.com','재미있게 작성한 게시물232','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (233,'최혜진233','java002$','morning233@test.com','재미있게 작성한 게시물233','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (234,'이혜진234','java004$','apple234@test.com','성실히 작성한 게시물234','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (235,'김혜진235','java006$','morning235@test.com','열심히 작성한 게시물235','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (236,'최혜진236','java002$','apple236@test.com','재미있게 작성한 게시물236','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (237,'이혜진237','java004$','test237@test.com','성실히 작성한 게시물237','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (238,'박혜진238','java009$','apple238@test.com','최선을 다해 작성한 게시물238','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (239,'최혜진239','java002$','morning239@test.com','재미있게 작성한 게시물239','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (240,'김혜진240','java006$','apple240@test.com','열심히 작성한 게시물240','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (241,'최혜진241','java002$','morning241@test.com','재미있게 작성한 게시물241','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (242,'최혜진242','java002$','apple242@test.com','재미있게 작성한 게시물242','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (243,'이혜진243','java004$','test243@test.com','성실히 작성한 게시물243','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (244,'최혜진244','java002$','apple244@test.com','재미있게 작성한 게시물244','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (245,'김혜진245','java006$','morning245@test.com','열심히 작성한 게시물245','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (246,'이혜진246','java004$','apple246@test.com','성실히 작성한 게시물246','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (247,'최혜진247','java002$','morning247@test.com','재미있게 작성한 게시물247','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (248,'최혜진248','java002$','apple248@test.com','재미있게 작성한 게시물248','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (249,'이혜진249','java004$','test249@test.com','성실히 작성한 게시물249','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (250,'김혜진250','java006$','apple250@test.com','열심히 작성한 게시물250','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (251,'최혜진251','java002$','morning251@test.com','재미있게 작성한 게시물251','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (252,'이혜진252','java004$','apple252@test.com','성실히 작성한 게시물252','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (253,'최혜진253','java002$','morning253@test.com','재미있게 작성한 게시물253','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (254,'최혜진254','java002$','apple254@test.com','재미있게 작성한 게시물254','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (255,'김혜진255','java006$','test255@test.com','열심히 작성한 게시물255','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (256,'최혜진256','java002$','apple256@test.com','재미있게 작성한 게시물256','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (257,'최혜진257','java002$','morning257@test.com','재미있게 작성한 게시물257','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (258,'이혜진258','java004$','apple258@test.com','성실히 작성한 게시물258','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (259,'박혜진259','java009$','morning259@test.com','최선을 다해 작성한 게시물259','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (260,'김혜진260','java006$','apple260@test.com','열심히 작성한 게시물260','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (261,'이혜진261','java004$','test261@test.com','성실히 작성한 게시물261','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (262,'최혜진262','java002$','apple262@test.com','재미있게 작성한 게시물262','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (263,'최혜진263','java002$','morning263@test.com','재미있게 작성한 게시물263','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (264,'이혜진264','java004$','apple264@test.com','성실히 작성한 게시물264','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (265,'김혜진265','java006$','morning265@test.com','열심히 작성한 게시물265','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (266,'박혜진266','java009$','apple266@test.com','최선을 다해 작성한 게시물266','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (267,'이혜진267','java004$','test267@test.com','성실히 작성한 게시물267','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (268,'최혜진268','java002$','apple268@test.com','재미있게 작성한 게시물268','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (269,'최혜진269','java002$','morning269@test.com','재미있게 작성한 게시물269','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (270,'김혜진270','java006$','apple270@test.com','열심히 작성한 게시물270','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (271,'최혜진271','java002$','morning271@test.com','재미있게 작성한 게시물271','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (272,'최혜진272','java002$','apple272@test.com','재미있게 작성한 게시물272','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (273,'이혜진273','java004$','test273@test.com','성실히 작성한 게시물273','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (274,'최혜진274','java002$','apple274@test.com','재미있게 작성한 게시물274','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (275,'김혜진275','java006$','morning275@test.com','열심히 작성한 게시물275','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (276,'이혜진276','java004$','apple276@test.com','성실히 작성한 게시물276','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (277,'최혜진277','java002$','morning277@test.com','재미있게 작성한 게시물277','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (278,'최혜진278','java002$','apple278@test.com','재미있게 작성한 게시물278','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (279,'이혜진279','java004$','test279@test.com','성실히 작성한 게시물279','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (280,'김혜진280','java006$','apple280@test.com','열심히 작성한 게시물280','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (281,'최혜진281','java002$','morning281@test.com','재미있게 작성한 게시물281','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (282,'이혜진282','java004$','apple282@test.com','성실히 작성한 게시물282','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (283,'최혜진283','java002$','morning283@test.com','재미있게 작성한 게시물283','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (284,'최혜진284','java002$','apple284@test.com','재미있게 작성한 게시물284','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (285,'김혜진285','java006$','test285@test.com','열심히 작성한 게시물285','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (286,'최혜진286','java002$','apple286@test.com','재미있게 작성한 게시물286','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (287,'박혜진287','java009$','morning287@test.com','최선을 다해 작성한 게시물287','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (288,'이혜진288','java004$','apple288@test.com','성실히 작성한 게시물288','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (289,'최혜진289','java002$','morning289@test.com','재미있게 작성한 게시물289','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (290,'김혜진290','java006$','apple290@test.com','열심히 작성한 게시물290','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (291,'이혜진291','java004$','test291@test.com','성실히 작성한 게시물291','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (292,'최혜진292','java002$','apple292@test.com','재미있게 작성한 게시물292','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (293,'최혜진293','java002$','morning293@test.com','재미있게 작성한 게시물293','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (294,'이혜진294','java004$','apple294@test.com','성실히 작성한 게시물294','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (295,'김혜진295','java006$','morning295@test.com','열심히 작성한 게시물295','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (296,'최혜진296','java002$','apple296@test.com','재미있게 작성한 게시물296','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (297,'이혜진297','java004$','test297@test.com','성실히 작성한 게시물297','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (298,'최혜진298','java002$','apple298@test.com','재미있게 작성한 게시물298','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (299,'최혜진299','java002$','morning299@test.com','재미있게 작성한 게시물299','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (300,'김혜진300','java006$','apple300@test.com','열심히 작성한 게시물300','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/09/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (301,'박혜진301','java009$','morning301@test.com','최선을 다해 작성한 게시물301','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/09/04','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (302,'최혜진302','java002$','apple302@test.com','재미있게 작성한 게시물302','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (303,'이혜진303','java004$','test303@test.com','성실히 작성한 게시물303','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (304,'최혜진304','java002$','apple304@test.com','재미있게 작성한 게시물304','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (305,'김혜진305','java006$','morning305@test.com','열심히 작성한 게시물305','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (306,'이혜진306','java004$','apple306@test.com','성실히 작성한 게시물306','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (307,'최혜진307','java002$','morning307@test.com','재미있게 작성한 게시물307','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (308,'박혜진308','java009$','apple308@test.com','최선을 다해 작성한 게시물308','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/09/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (309,'이혜진309','java004$','test309@test.com','성실히 작성한 게시물309','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/09/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (310,'김혜진310','java006$','apple310@test.com','열심히 작성한 게시물310','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/09/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (311,'최혜진311','java002$','morning311@test.com','재미있게 작성한 게시물311','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (312,'이혜진312','java004$','apple312@test.com','성실히 작성한 게시물312','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/09/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (313,'최혜진313','java002$','morning313@test.com','재미있게 작성한 게시물313','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (314,'최혜진314','java002$','apple314@test.com','재미있게 작성한 게시물314','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (315,'김혜진315','java006$','test315@test.com','열심히 작성한 게시물315','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/09/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (316,'최혜진316','java002$','apple316@test.com','재미있게 작성한 게시물316','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (317,'최혜진317','java002$','morning317@test.com','재미있게 작성한 게시물317','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (318,'이혜진318','java004$','apple318@test.com','성실히 작성한 게시물318','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/09/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (319,'최혜진319','java002$','morning319@test.com','재미있게 작성한 게시물319','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (320,'김혜진320','java006$','apple320@test.com','열심히 작성한 게시물320','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/09/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (321,'이혜진321','java004$','test321@test.com','성실히 작성한 게시물321','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/09/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (322,'박혜진322','java009$','apple322@test.com','최선을 다해 작성한 게시물322','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/09/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (323,'최혜진323','java002$','morning323@test.com','재미있게 작성한 게시물323','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/09/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (324,'이혜진324','java004$','apple324@test.com','성실히 작성한 게시물324','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/09/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (325,'김혜진325','java006$','morning325@test.com','열심히 작성한 게시물325','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/09/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (326,'최혜진326','java002$','apple326@test.com','재미있게 작성한 게시물326','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/09/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (327,'이혜진327','java004$','test327@test.com','성실히 작성한 게시물327','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/09/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (328,'최혜진328','java002$','apple328@test.com','재미있게 작성한 게시물328','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (329,'박혜진329','java009$','morning329@test.com','최선을 다해 작성한 게시물329','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/10/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (330,'김혜진330','java006$','apple330@test.com','열심히 작성한 게시물330','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/10/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (331,'최혜진331','java002$','morning331@test.com','재미있게 작성한 게시물331','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (332,'최혜진332','java002$','apple332@test.com','재미있게 작성한 게시물332','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (333,'이혜진333','java004$','test333@test.com','성실히 작성한 게시물333','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/10/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (334,'최혜진334','java002$','apple334@test.com','재미있게 작성한 게시물334','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (335,'김혜진335','java006$','morning335@test.com','열심히 작성한 게시물335','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/10/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (336,'이혜진336','java004$','apple336@test.com','성실히 작성한 게시물336','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/10/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (337,'최혜진337','java002$','morning337@test.com','재미있게 작성한 게시물337','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (338,'최혜진338','java002$','apple338@test.com','재미있게 작성한 게시물338','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (339,'이혜진339','java004$','test339@test.com','성실히 작성한 게시물339','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/10/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (340,'김혜진340','java006$','apple340@test.com','열심히 작성한 게시물340','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/10/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (341,'최혜진341','java002$','morning341@test.com','재미있게 작성한 게시물341','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (342,'이혜진342','java004$','apple342@test.com','성실히 작성한 게시물342','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/10/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (343,'박혜진343','java009$','morning343@test.com','최선을 다해 작성한 게시물343','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/10/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (344,'최혜진344','java002$','apple344@test.com','재미있게 작성한 게시물344','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (345,'김혜진345','java006$','test345@test.com','열심히 작성한 게시물345','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/10/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (346,'최혜진346','java002$','apple346@test.com','재미있게 작성한 게시물346','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (347,'최혜진347','java002$','morning347@test.com','재미있게 작성한 게시물347','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (348,'이혜진348','java004$','apple348@test.com','성실히 작성한 게시물348','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/10/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (349,'최혜진349','java002$','morning349@test.com','재미있게 작성한 게시물349','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (350,'김혜진350','java006$','apple350@test.com','열심히 작성한 게시물350','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/10/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (351,'이혜진351','java004$','test351@test.com','성실히 작성한 게시물351','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/10/24','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (352,'최혜진352','java002$','apple352@test.com','재미있게 작성한 게시물352','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (353,'최혜진353','java002$','morning353@test.com','재미있게 작성한 게시물353','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/10/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (354,'이혜진354','java004$','apple354@test.com','성실히 작성한 게시물354','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/10/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (355,'김혜진355','java006$','morning355@test.com','열심히 작성한 게시물355','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/10/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (356,'최혜진356','java002$','apple356@test.com','재미있게 작성한 게시물356','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (357,'이혜진357','java004$','test357@test.com','성실히 작성한 게시물357','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/10/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (358,'최혜진358','java002$','apple358@test.com','재미있게 작성한 게시물358','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/10/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (359,'최혜진359','java002$','morning359@test.com','재미있게 작성한 게시물359','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (360,'김혜진360','java006$','apple360@test.com','열심히 작성한 게시물360','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/11/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (361,'최혜진361','java002$','morning361@test.com','재미있게 작성한 게시물361','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (362,'최혜진362','java002$','apple362@test.com','재미있게 작성한 게시물362','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (363,'이혜진363','java004$','test363@test.com','성실히 작성한 게시물363','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (364,'박혜진364','java009$','apple364@test.com','최선을 다해 작성한 게시물364','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/11/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (365,'김혜진365','java006$','morning365@test.com','열심히 작성한 게시물365','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/11/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (366,'이혜진366','java004$','apple366@test.com','성실히 작성한 게시물366','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/11/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (367,'최혜진367','java002$','morning367@test.com','재미있게 작성한 게시물367','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (368,'최혜진368','java002$','apple368@test.com','재미있게 작성한 게시물368','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (369,'이혜진369','java004$','test369@test.com','성실히 작성한 게시물369','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/11/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (370,'김혜진370','java006$','apple370@test.com','열심히 작성한 게시물370','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (371,'박혜진371','java009$','morning371@test.com','최선을 다해 작성한 게시물371','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (372,'이혜진372','java004$','apple372@test.com','성실히 작성한 게시물372','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (373,'최혜진373','java002$','morning373@test.com','재미있게 작성한 게시물373','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (374,'최혜진374','java002$','apple374@test.com','재미있게 작성한 게시물374','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (375,'김혜진375','java006$','test375@test.com','열심히 작성한 게시물375','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (376,'최혜진376','java002$','apple376@test.com','재미있게 작성한 게시물376','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (377,'최혜진377','java002$','morning377@test.com','재미있게 작성한 게시물377','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (378,'이혜진378','java004$','apple378@test.com','성실히 작성한 게시물378','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (379,'최혜진379','java002$','morning379@test.com','재미있게 작성한 게시물379','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (380,'김혜진380','java006$','apple380@test.com','열심히 작성한 게시물380','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (381,'이혜진381','java004$','test381@test.com','성실히 작성한 게시물381','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (382,'최혜진382','java002$','apple382@test.com','재미있게 작성한 게시물382','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (383,'최혜진383','java002$','morning383@test.com','재미있게 작성한 게시물383','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (384,'이혜진384','java004$','apple384@test.com','성실히 작성한 게시물384','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (385,'김혜진385','java006$','morning385@test.com','열심히 작성한 게시물385','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (386,'최혜진386','java002$','apple386@test.com','재미있게 작성한 게시물386','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (387,'이혜진387','java004$','test387@test.com','성실히 작성한 게시물387','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (388,'최혜진388','java002$','apple388@test.com','재미있게 작성한 게시물388','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (389,'최혜진389','java002$','morning389@test.com','재미있게 작성한 게시물389','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (390,'김혜진390','java006$','apple390@test.com','열심히 작성한 게시물390','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (391,'최혜진391','java002$','morning391@test.com','재미있게 작성한 게시물391','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (392,'박혜진392','java009$','apple392@test.com','최선을 다해 작성한 게시물392','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (393,'이혜진393','java004$','test393@test.com','성실히 작성한 게시물393','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (394,'최혜진394','java002$','apple394@test.com','재미있게 작성한 게시물394','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (395,'김혜진395','java006$','morning395@test.com','열심히 작성한 게시물395','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (396,'이혜진396','java004$','apple396@test.com','성실히 작성한 게시물396','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (397,'최혜진397','java002$','morning397@test.com','재미있게 작성한 게시물397','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (398,'최혜진398','java002$','apple398@test.com','재미있게 작성한 게시물398','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (399,'이혜진399','java004$','test399@test.com','성실히 작성한 게시물399','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (400,'김혜진400','java006$','apple400@test.com','열심히 작성한 게시물400','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (401,'최혜진401','java002$','morning401@test.com','재미있게 작성한 게시물401','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/13','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (402,'이혜진402','java004$','apple402@test.com','성실히 작성한 게시물402','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (403,'최혜진403','java002$','morning403@test.com','재미있게 작성한 게시물403','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (404,'최혜진404','java002$','apple404@test.com','재미있게 작성한 게시물404','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (405,'김혜진405','java006$','test405@test.com','열심히 작성한 게시물405','달리기 관련 내용물 작성','211.238.142.164',32,to_date('11/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (406,'박혜진406','java009$','apple406@test.com','최선을 다해 작성한 게시물406','소모임 관련 내용물 작성','211.238.142.151',27,to_date('11/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (407,'최혜진407','java002$','morning407@test.com','재미있게 작성한 게시물407','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (408,'이혜진408','java004$','apple408@test.com','성실히 작성한 게시물408','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (409,'최혜진409','java002$','morning409@test.com','재미있게 작성한 게시물409','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (410,'김혜진410','java006$','apple410@test.com','열심히 작성한 게시물410','달리기 관련 내용물 작성','211.238.142.164',27,to_date('11/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (411,'이혜진411','java004$','test411@test.com','성실히 작성한 게시물411','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (412,'최혜진412','java002$','apple412@test.com','재미있게 작성한 게시물412','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (413,'박혜진413','java009$','morning413@test.com','최선을 다해 작성한 게시물413','소모임 관련 내용물 작성','211.238.142.151',72,to_date('11/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (414,'이혜진414','java004$','apple414@test.com','성실히 작성한 게시물414','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('11/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (415,'김혜진415','java006$','morning415@test.com','열심히 작성한 게시물415','달리기 관련 내용물 작성','211.238.142.164',72,to_date('11/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (416,'최혜진416','java002$','apple416@test.com','재미있게 작성한 게시물416','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (417,'이혜진417','java004$','test417@test.com','성실히 작성한 게시물417','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('11/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (418,'최혜진418','java002$','apple418@test.com','재미있게 작성한 게시물418','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('11/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (419,'최혜진419','java002$','morning419@test.com','재미있게 작성한 게시물419','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('11/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (420,'김혜진420','java006$','apple420@test.com','열심히 작성한 게시물420','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (421,'최혜진421','java002$','morning421@test.com','재미있게 작성한 게시물421','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (422,'최혜진422','java002$','apple422@test.com','재미있게 작성한 게시물422','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (423,'이혜진423','java004$','test423@test.com','성실히 작성한 게시물423','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (424,'최혜진424','java002$','apple424@test.com','재미있게 작성한 게시물424','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (425,'김혜진425','java006$','morning425@test.com','열심히 작성한 게시물425','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (426,'이혜진426','java004$','apple426@test.com','성실히 작성한 게시물426','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (427,'박혜진427','java009$','morning427@test.com','최선을 다해 작성한 게시물427','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (428,'최혜진428','java002$','apple428@test.com','재미있게 작성한 게시물428','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (429,'이혜진429','java004$','test429@test.com','성실히 작성한 게시물429','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (430,'김혜진430','java006$','apple430@test.com','열심히 작성한 게시물430','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (431,'최혜진431','java002$','morning431@test.com','재미있게 작성한 게시물431','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (432,'이혜진432','java004$','apple432@test.com','성실히 작성한 게시물432','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (433,'최혜진433','java002$','morning433@test.com','재미있게 작성한 게시물433','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (434,'박혜진434','java009$','apple434@test.com','최선을 다해 작성한 게시물434','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (435,'김혜진435','java006$','test435@test.com','열심히 작성한 게시물435','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (436,'최혜진436','java002$','apple436@test.com','재미있게 작성한 게시물436','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (437,'최혜진437','java002$','morning437@test.com','재미있게 작성한 게시물437','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (438,'이혜진438','java004$','apple438@test.com','성실히 작성한 게시물438','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (439,'최혜진439','java002$','morning439@test.com','재미있게 작성한 게시물439','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (440,'김혜진440','java006$','apple440@test.com','열심히 작성한 게시물440','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (441,'이혜진441','java004$','test441@test.com','성실히 작성한 게시물441','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (442,'최혜진442','java002$','apple442@test.com','재미있게 작성한 게시물442','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (443,'최혜진443','java002$','morning443@test.com','재미있게 작성한 게시물443','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (444,'이혜진444','java004$','apple444@test.com','성실히 작성한 게시물444','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (445,'김혜진445','java006$','morning445@test.com','열심히 작성한 게시물445','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (446,'최혜진446','java002$','apple446@test.com','재미있게 작성한 게시물446','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (447,'이혜진447','java004$','test447@test.com','성실히 작성한 게시물447','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (448,'박혜진448','java009$','apple448@test.com','최선을 다해 작성한 게시물448','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (449,'최혜진449','java002$','morning449@test.com','재미있게 작성한 게시물449','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (450,'김혜진450','java006$','apple450@test.com','열심히 작성한 게시물450','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (451,'최혜진451','java002$','morning451@test.com','재미있게 작성한 게시물451','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (452,'최혜진452','java002$','apple452@test.com','재미있게 작성한 게시물452','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (453,'이혜진453','java004$','test453@test.com','성실히 작성한 게시물453','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (454,'최혜진454','java002$','apple454@test.com','재미있게 작성한 게시물454','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (455,'김혜진455','java006$','morning455@test.com','열심히 작성한 게시물455','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (456,'이혜진456','java004$','apple456@test.com','성실히 작성한 게시물456','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (457,'최혜진457','java002$','morning457@test.com','재미있게 작성한 게시물457','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (458,'최혜진458','java002$','apple458@test.com','재미있게 작성한 게시물458','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (459,'이혜진459','java004$','test459@test.com','성실히 작성한 게시물459','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (460,'김혜진460','java006$','apple460@test.com','열심히 작성한 게시물460','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (461,'최혜진461','java002$','morning461@test.com','재미있게 작성한 게시물461','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (462,'이혜진462','java004$','apple462@test.com','성실히 작성한 게시물462','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (463,'최혜진463','java002$','morning463@test.com','재미있게 작성한 게시물463','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (464,'최혜진464','java002$','apple464@test.com','재미있게 작성한 게시물464','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (465,'김혜진465','java006$','test465@test.com','열심히 작성한 게시물465','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (466,'최혜진466','java002$','apple466@test.com','재미있게 작성한 게시물466','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (467,'최혜진467','java002$','morning467@test.com','재미있게 작성한 게시물467','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (468,'이혜진468','java004$','apple468@test.com','성실히 작성한 게시물468','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (469,'박혜진469','java009$','morning469@test.com','최선을 다해 작성한 게시물469','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (470,'김혜진470','java006$','apple470@test.com','열심히 작성한 게시물470','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (471,'이혜진471','java004$','test471@test.com','성실히 작성한 게시물471','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (472,'최혜진472','java002$','apple472@test.com','재미있게 작성한 게시물472','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (473,'최혜진473','java002$','morning473@test.com','재미있게 작성한 게시물473','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (474,'이혜진474','java004$','apple474@test.com','성실히 작성한 게시물474','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (475,'김혜진475','java006$','morning475@test.com','열심히 작성한 게시물475','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (476,'박혜진476','java009$','apple476@test.com','최선을 다해 작성한 게시물476','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (477,'이혜진477','java004$','test477@test.com','성실히 작성한 게시물477','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (478,'최혜진478','java002$','apple478@test.com','재미있게 작성한 게시물478','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (479,'최혜진479','java002$','morning479@test.com','재미있게 작성한 게시물479','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/02/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (480,'김혜진480','java006$','apple480@test.com','열심히 작성한 게시물480','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (481,'최혜진481','java002$','morning481@test.com','재미있게 작성한 게시물481','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (482,'최혜진482','java002$','apple482@test.com','재미있게 작성한 게시물482','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (483,'이혜진483','java004$','test483@test.com','성실히 작성한 게시물483','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (484,'최혜진484','java002$','apple484@test.com','재미있게 작성한 게시물484','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (485,'김혜진485','java006$','morning485@test.com','열심히 작성한 게시물485','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (486,'이혜진486','java004$','apple486@test.com','성실히 작성한 게시물486','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (487,'최혜진487','java002$','morning487@test.com','재미있게 작성한 게시물487','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (488,'최혜진488','java002$','apple488@test.com','재미있게 작성한 게시물488','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (489,'이혜진489','java004$','test489@test.com','성실히 작성한 게시물489','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (490,'김혜진490','java006$','apple490@test.com','열심히 작성한 게시물490','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (491,'최혜진491','java002$','morning491@test.com','재미있게 작성한 게시물491','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (492,'이혜진492','java004$','apple492@test.com','성실히 작성한 게시물492','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (493,'최혜진493','java002$','morning493@test.com','재미있게 작성한 게시물493','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (494,'최혜진494','java002$','apple494@test.com','재미있게 작성한 게시물494','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (495,'김혜진495','java006$','test495@test.com','열심히 작성한 게시물495','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (496,'최혜진496','java002$','apple496@test.com','재미있게 작성한 게시물496','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (497,'박혜진497','java009$','morning497@test.com','최선을 다해 작성한 게시물497','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (498,'이혜진498','java004$','apple498@test.com','성실히 작성한 게시물498','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (499,'최혜진499','java002$','morning499@test.com','재미있게 작성한 게시물499','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (500,'김혜진500','java006$','apple500@test.com','열심히 작성한 게시물500','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (501,'이혜진501','java004$','test501@test.com','성실히 작성한 게시물501','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/03/22','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (502,'최혜진502','java002$','apple502@test.com','재미있게 작성한 게시물502','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (503,'최혜진503','java002$','morning503@test.com','재미있게 작성한 게시물503','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (504,'이혜진504','java004$','apple504@test.com','성실히 작성한 게시물504','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (505,'김혜진505','java006$','morning505@test.com','열심히 작성한 게시물505','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (506,'최혜진506','java002$','apple506@test.com','재미있게 작성한 게시물506','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (507,'이혜진507','java004$','test507@test.com','성실히 작성한 게시물507','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (508,'최혜진508','java002$','apple508@test.com','재미있게 작성한 게시물508','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (509,'최혜진509','java002$','morning509@test.com','재미있게 작성한 게시물509','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (510,'김혜진510','java006$','apple510@test.com','열심히 작성한 게시물510','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (511,'박혜진511','java009$','morning511@test.com','최선을 다해 작성한 게시물511','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (512,'최혜진512','java002$','apple512@test.com','재미있게 작성한 게시물512','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (513,'이혜진513','java004$','test513@test.com','성실히 작성한 게시물513','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (514,'최혜진514','java002$','apple514@test.com','재미있게 작성한 게시물514','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (515,'김혜진515','java006$','morning515@test.com','열심히 작성한 게시물515','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (516,'이혜진516','java004$','apple516@test.com','성실히 작성한 게시물516','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (517,'최혜진517','java002$','morning517@test.com','재미있게 작성한 게시물517','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (518,'박혜진518','java009$','apple518@test.com','최선을 다해 작성한 게시물518','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (519,'이혜진519','java004$','test519@test.com','성실히 작성한 게시물519','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (520,'김혜진520','java006$','apple520@test.com','열심히 작성한 게시물520','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (521,'최혜진521','java002$','morning521@test.com','재미있게 작성한 게시물521','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (522,'이혜진522','java004$','apple522@test.com','성실히 작성한 게시물522','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (523,'최혜진523','java002$','morning523@test.com','재미있게 작성한 게시물523','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (524,'최혜진524','java002$','apple524@test.com','재미있게 작성한 게시물524','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (525,'김혜진525','java006$','test525@test.com','열심히 작성한 게시물525','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (526,'최혜진526','java002$','apple526@test.com','재미있게 작성한 게시물526','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (527,'최혜진527','java002$','morning527@test.com','재미있게 작성한 게시물527','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (528,'이혜진528','java004$','apple528@test.com','성실히 작성한 게시물528','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (529,'최혜진529','java002$','morning529@test.com','재미있게 작성한 게시물529','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (530,'김혜진530','java006$','apple530@test.com','열심히 작성한 게시물530','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (531,'이혜진531','java004$','test531@test.com','성실히 작성한 게시물531','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (532,'박혜진532','java009$','apple532@test.com','최선을 다해 작성한 게시물532','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (533,'최혜진533','java002$','morning533@test.com','재미있게 작성한 게시물533','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (534,'이혜진534','java004$','apple534@test.com','성실히 작성한 게시물534','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (535,'김혜진535','java006$','morning535@test.com','열심히 작성한 게시물535','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (536,'최혜진536','java002$','apple536@test.com','재미있게 작성한 게시물536','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (537,'이혜진537','java004$','test537@test.com','성실히 작성한 게시물537','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (538,'최혜진538','java002$','apple538@test.com','재미있게 작성한 게시물538','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (539,'박혜진539','java009$','morning539@test.com','최선을 다해 작성한 게시물539','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (540,'김혜진540','java006$','apple540@test.com','열심히 작성한 게시물540','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (541,'최혜진541','java002$','morning541@test.com','재미있게 작성한 게시물541','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (542,'최혜진542','java002$','apple542@test.com','재미있게 작성한 게시물542','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (543,'이혜진543','java004$','test543@test.com','성실히 작성한 게시물543','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (544,'최혜진544','java002$','apple544@test.com','재미있게 작성한 게시물544','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (545,'김혜진545','java006$','morning545@test.com','열심히 작성한 게시물545','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (546,'이혜진546','java004$','apple546@test.com','성실히 작성한 게시물546','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (547,'최혜진547','java002$','morning547@test.com','재미있게 작성한 게시물547','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (548,'최혜진548','java002$','apple548@test.com','재미있게 작성한 게시물548','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (549,'이혜진549','java004$','test549@test.com','성실히 작성한 게시물549','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (550,'김혜진550','java006$','apple550@test.com','열심히 작성한 게시물550','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (551,'최혜진551','java002$','morning551@test.com','재미있게 작성한 게시물551','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/11','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (552,'이혜진552','java004$','apple552@test.com','성실히 작성한 게시물552','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (553,'박혜진553','java009$','morning553@test.com','최선을 다해 작성한 게시물553','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (554,'최혜진554','java002$','apple554@test.com','재미있게 작성한 게시물554','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (555,'김혜진555','java006$','test555@test.com','열심히 작성한 게시물555','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (556,'최혜진556','java002$','apple556@test.com','재미있게 작성한 게시물556','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (557,'최혜진557','java002$','morning557@test.com','재미있게 작성한 게시물557','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (558,'이혜진558','java004$','apple558@test.com','성실히 작성한 게시물558','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (559,'최혜진559','java002$','morning559@test.com','재미있게 작성한 게시물559','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (560,'김혜진560','java006$','apple560@test.com','열심히 작성한 게시물560','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (561,'이혜진561','java004$','test561@test.com','성실히 작성한 게시물561','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (562,'최혜진562','java002$','apple562@test.com','재미있게 작성한 게시물562','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (563,'최혜진563','java002$','morning563@test.com','재미있게 작성한 게시물563','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (564,'이혜진564','java004$','apple564@test.com','성실히 작성한 게시물564','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (565,'김혜진565','java006$','morning565@test.com','열심히 작성한 게시물565','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (566,'최혜진566','java002$','apple566@test.com','재미있게 작성한 게시물566','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (567,'이혜진567','java004$','test567@test.com','성실히 작성한 게시물567','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/05/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (568,'최혜진568','java002$','apple568@test.com','재미있게 작성한 게시물568','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (569,'최혜진569','java002$','morning569@test.com','재미있게 작성한 게시물569','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (570,'김혜진570','java006$','apple570@test.com','열심히 작성한 게시물570','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (571,'최혜진571','java002$','morning571@test.com','재미있게 작성한 게시물571','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (572,'최혜진572','java002$','apple572@test.com','재미있게 작성한 게시물572','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (573,'이혜진573','java004$','test573@test.com','성실히 작성한 게시물573','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (574,'박혜진574','java009$','apple574@test.com','최선을 다해 작성한 게시물574','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (575,'김혜진575','java006$','morning575@test.com','열심히 작성한 게시물575','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (576,'이혜진576','java004$','apple576@test.com','성실히 작성한 게시물576','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (577,'최혜진577','java002$','morning577@test.com','재미있게 작성한 게시물577','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (578,'최혜진578','java002$','apple578@test.com','재미있게 작성한 게시물578','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (579,'이혜진579','java004$','test579@test.com','성실히 작성한 게시물579','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (580,'김혜진580','java006$','apple580@test.com','열심히 작성한 게시물580','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (581,'박혜진581','java009$','morning581@test.com','최선을 다해 작성한 게시물581','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (583,'최혜진583','java002$','morning583@test.com','재미있게 작성한 게시물583','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (584,'최혜진584','java002$','apple584@test.com','재미있게 작성한 게시물584','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (585,'김혜진585','java006$','test585@test.com','열심히 작성한 게시물585','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (586,'최혜진586','java002$','apple586@test.com','재미있게 작성한 게시물586','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (587,'최혜진587','java002$','morning587@test.com','재미있게 작성한 게시물587','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (588,'이혜진588','java004$','apple588@test.com','성실히 작성한 게시물588','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (589,'최혜진589','java002$','morning589@test.com','재미있게 작성한 게시물589','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (590,'김혜진590','java006$','apple590@test.com','열심히 작성한 게시물590','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (591,'이혜진591','java004$','test591@test.com','성실히 작성한 게시물591','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (592,'최혜진592','java002$','apple592@test.com','재미있게 작성한 게시물592','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (593,'최혜진593','java002$','morning593@test.com','재미있게 작성한 게시물593','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (594,'이혜진594','java004$','apple594@test.com','성실히 작성한 게시물594','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (595,'김혜진595','java006$','morning595@test.com','열심히 작성한 게시물595','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (596,'최혜진596','java002$','apple596@test.com','재미있게 작성한 게시물596','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (597,'이혜진597','java004$','test597@test.com','성실히 작성한 게시물597','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (598,'최혜진598','java002$','apple598@test.com','재미있게 작성한 게시물598','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (599,'최혜진599','java002$','morning599@test.com','재미있게 작성한 게시물599','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (600,'김혜진600','java006$','apple600@test.com','열심히 작성한 게시물600','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (601,'최혜진601','java002$','morning601@test.com','재미있게 작성한 게시물601','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (602,'박혜진602','java009$','apple602@test.com','최선을 다해 작성한 게시물602','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/07/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (603,'이혜진603','java004$','test603@test.com','성실히 작성한 게시물603','캠핑 관련 내용물 작성','211.238.142.154',33,to_date('12/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (604,'최혜진604','java002$','apple604@test.com','재미있게 작성한 게시물604','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (605,'김혜진605','java006$','morning605@test.com','열심히 작성한 게시물605','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (606,'이혜진606','java004$','apple606@test.com','성실히 작성한 게시물606','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (607,'최혜진607','java002$','morning607@test.com','재미있게 작성한 게시물607','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (608,'최혜진608','java002$','apple608@test.com','재미있게 작성한 게시물608','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (609,'이혜진609','java004$','test609@test.com','성실히 작성한 게시물609','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (610,'김혜진610','java006$','apple610@test.com','열심히 작성한 게시물610','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (611,'최혜진611','java002$','morning611@test.com','재미있게 작성한 게시물611','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (612,'이혜진612','java004$','apple612@test.com','성실히 작성한 게시물612','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (613,'최혜진613','java002$','morning613@test.com','재미있게 작성한 게시물613','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (614,'최혜진614','java002$','apple614@test.com','재미있게 작성한 게시물614','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (615,'김혜진615','java006$','test615@test.com','열심히 작성한 게시물615','달리기 관련 내용물 작성','211.238.142.164',32,to_date('12/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (616,'박혜진616','java009$','apple616@test.com','최선을 다해 작성한 게시물616','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (617,'최혜진617','java002$','morning617@test.com','재미있게 작성한 게시물617','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (618,'이혜진618','java004$','apple618@test.com','성실히 작성한 게시물618','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (619,'최혜진619','java002$','morning619@test.com','재미있게 작성한 게시물619','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (620,'김혜진620','java006$','apple620@test.com','열심히 작성한 게시물620','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (621,'이혜진621','java004$','test621@test.com','성실히 작성한 게시물621','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (622,'최혜진622','java002$','apple622@test.com','재미있게 작성한 게시물622','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (623,'박혜진623','java009$','morning623@test.com','최선을 다해 작성한 게시물623','소모임 관련 내용물 작성','211.238.142.151',73,to_date('12/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (624,'이혜진624','java004$','apple624@test.com','성실히 작성한 게시물624','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (625,'김혜진625','java006$','morning625@test.com','열심히 작성한 게시물625','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (626,'최혜진626','java002$','apple626@test.com','재미있게 작성한 게시물626','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (627,'이혜진627','java004$','test627@test.com','성실히 작성한 게시물627','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (628,'최혜진628','java002$','apple628@test.com','재미있게 작성한 게시물628','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (629,'최혜진629','java002$','morning629@test.com','재미있게 작성한 게시물629','렌터카 관련 내용물 작성','211.238.142.167',74,to_date('12/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (630,'김혜진630','java006$','apple630@test.com','열심히 작성한 게시물630','달리기 관련 내용물 작성','211.238.142.164',29,to_date('12/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (631,'최혜진631','java002$','morning631@test.com','재미있게 작성한 게시물631','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (632,'최혜진632','java002$','apple632@test.com','재미있게 작성한 게시물632','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (633,'이혜진633','java006$','test633@test.com','아진짜 진짜 마지막 또다시 수정한 게시물633','캠핑 관련 내용물 작성

수정수정수정
수정
마지막 수정
진짜마지막
아진짜 진짜 ','211.238.142.154',48,to_date('12/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (634,'최혜진634','java002$','apple634@test.com','재미있게 작성한 게시물634','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (635,'김혜진635','java006$','morning635@test.com','열심히 작성한 게시물635','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (636,'이혜진636','java004$','apple636@test.com','성실히 작성한 게시물636','캠핑 관련 내용물 작성','211.238.142.154',28,to_date('12/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (637,'박혜진637','java009$','morning637@test.com','최선을 다해 작성한 게시물637','소모임 관련 내용물 작성','211.238.142.151',72,to_date('12/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (638,'최혜진638','java002$','apple638@test.com','수정한 재미있게 작성한 게시물638','렌터카 관련 내용물 작성','211.238.142.167',31,to_date('12/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (639,'이혜진639','java004$','test639@test.com','성실히 작성한 게시물639','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (640,'김혜진640','java006$','apple640@test.com','수정 수정한 열심히 작성한 게시물640','달리기 관련 내용물 작성
수정한 ~!
수정','211.238.142.164',29,to_date('12/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (641,'최혜진641','java002$','morning641@test.com','재미있게 작성한 게시물641','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (642,'이혜진642','java004$','apple642@test.com','성실히 작성한 게시물642','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (643,'최혜진643','java002$','morning643@test.com','수정한 재미있게 작성한 게시물643','렌터카 관련 내용물 작성
수정했어요','211.238.142.167',75,to_date('12/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (644,'박혜진644','java009$','apple644@test.com','최선을 다해 작성한 게시물644','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (645,'김혜진645','java006$','test645@test.com','열심히 작성한 게시물645','달리기 관련 내용물 작성','211.238.142.164',33,to_date('12/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (646,'최혜진646','java002$','apple646@test.com','재미있게 작성한 게시물646','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (647,'최혜진647','java002$','morning647@test.com','재미있게 작성한 게시물647','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (648,'이혜진648','java004$','apple648@test.com','성실히 작성한 게시물648','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (649,'최혜진649','java002$','morning649@test.com','재미있게 작성한 게시물649','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (650,'김혜진650','java006$','apple650@test.com','열심히 작성한 게시물650','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (651,'이혜진651','java004$','test651@test.com','성실히 작성한 게시물651','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (652,'최혜진652','java002$','apple652@test.com','재미있게 작성한 게시물652','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/08/20','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (653,'최혜진653','java002$','morning653@test.com','재미있게 작성한 게시물653','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (654,'이혜진654','java004$','apple654@test.com','성실히 작성한 게시물654','캠핑 관련 내용물 작성','211.238.142.154',27,to_date('12/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (655,'김혜진655','java006$','morning655@test.com','열심히 작성한 게시물655','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (656,'최혜진656','java002$','apple656@test.com','재미있게 작성한 게시물656','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (657,'이혜진657','java004$','test657@test.com','성실히 작성한 게시물657','캠핑 관련 내용물 작성','211.238.142.154',32,to_date('12/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (658,'박혜진658','java009$','apple658@test.com','최선을 다해 작성한 게시물658','소모임 관련 내용물 작성','211.238.142.151',27,to_date('12/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (659,'최혜진659','java002$','morning659@test.com','재미있게 작성한 게시물659','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (660,'김혜진660','java006$','apple660@test.com','열심히 작성한 게시물660','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (661,'최혜진661','java002$','morning661@test.com','재미있게 작성한 게시물661','렌터카 관련 내용물 작성','211.238.142.167',72,to_date('12/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (662,'최혜진662','java002$','apple662@test.com','재미있게 작성한 게시물662','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (663,'이혜진663','java004$','test663@test.com','성실히 작성한 게시물663','캠핑 관련 내용물 작성','211.238.142.154',33,to_date('12/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (664,'최혜진664','java002$','apple664@test.com','재미있게 작성한 게시물664','렌터카 관련 내용물 작성','211.238.142.167',35,to_date('12/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (665,'김혜진665','java006$','morning665@test.com','열심히 작성한 게시물665','달리기 관련 내용물 작성','211.238.142.164',72,to_date('12/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (667,'최혜진667','java002$','morning667@test.com','재미있게 작성한 게시물667','렌터카 관련 내용물 작성','211.238.142.167',73,to_date('12/09/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (668,'최혜진668','java002$','apple668@test.com','재미있게 작성한 게시물668','렌터카 관련 내용물 작성','211.238.142.167',27,to_date('12/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (669,'이혜진669','java004$','test669@test.com','성실히 작성한 게시물669','캠핑 관련 내용물 작성','211.238.142.154',33,to_date('12/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (670,'김혜진670','java006$','apple670@test.com','열심히 작성한 게시물670','달리기 관련 내용물 작성','211.238.142.164',27,to_date('12/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (671,'최혜진671','java002$','morning671@test.com','재미있게 작성한 게시물671','렌터카 관련 내용물 작성','211.238.142.167',75,to_date('12/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (672,'이혜진672','java004$','apple672@test.com','성실히 작성한 게시물672','캠핑 관련 내용물 작성','211.238.142.154',30,to_date('12/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (673,'김진희','1234','kjh@test.com','글올리기 테스트','게시물 작성 관련한
테스트를 진행하고 있습니다.
개행 여부 확인도 함께 처리합니다.
작성한 IP Address 도 체크합니다.','0:0:0:0:0:0:0:1',9,to_date('21/11/08','RR/MM/DD'));
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
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (3,'무동이','010-9999-9999');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (11,'정효진','010-3434-5656');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (5,'효지니','010-1111-1111');
commit;
REM INSERTING into SCOTT.TBL_STUDENT
SET DEFINE OFF;
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (1,'정효진','010-1111-1111');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (2,'정말로','010-2222-2222');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (3,'점심','010-3333-3333');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (4,'이중호','010-4444-4444');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (5,'손범석','010-5555-5555');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (6,'이찬호','010-6666-6666');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (7,'효지니','010-7777-7777');
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
