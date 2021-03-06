--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-12岿-23-2021   
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
	"LUNAR" NUMBER(1,0) DEFAULT 0 -- 剧澜仿       -- 剧仿0, 澜仿1
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
     , E.SSN1 AS SSN        -- 荐沥
     , TO_CHAR(E.BIRTHDAY,'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR AS LUNAR
     , DECODE(E.LUNAR,0,'剧仿',1,'澜仿') AS LUNARNAME
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
     , E.GRADE AS GRADE -- 荐沥
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
     , (CASE WHEN (G.SUB1 + G.SUB2 + G.SUB3)/3 < 60 THEN '阂钦拜'
             WHEN (G.SUB1 <= 40) OR (G.SUB2 <= 40) OR (G.SUB3 <= 40) THEN '苞遏'
             ELSE '钦拜'
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
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (1,'俺惯何');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (2,'扁裙何');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (3,'康诀何');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (4,'醚公何');
Insert into SCOTT.DEPARTMENT (DEPARTMENTID,DEPARTMENTNAME) values (5,'付纳泼何');
commit;
REM INSERTING into SCOTT.EMPLOYEE
SET DEFINE OFF;
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (1,'辫柳锐',to_date('99/03/20','RR/MM/DD'),0,'010-7389-9032',1,1,1,1500000,1500000,'990320','Y{?7?',0);
Insert into SCOTT.EMPLOYEE (EMPLOYEEID,NAME,BIRTHDAY,LUNAR,TELEPHONE,DEPARTMENTID,POSITIONID,REGIONID,BASICPAY,EXTRAPAY,SSN1,SSN2,GRADE) values (4,'辫家楷',to_date('93/07/30','RR/MM/DD'),0,'010-9211-0575',2,2,4,2500000,250000,'930730','Y{?7?',1);
commit;
REM INSERTING into SCOTT.POSITION
SET DEFINE OFF;
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (1,'荤盔',1000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (2,'措府',2000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (3,'何厘',3000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (4,'惑公',4000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (5,'傈公',5000000);
Insert into SCOTT.POSITION (POSITIONID,POSITIONNAME,MINBASICPAY) values (6,'冠措府',6000000);
commit;
REM INSERTING into SCOTT.REGION
SET DEFINE OFF;
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (1,'辑匡');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (2,'版扁');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (3,'牢玫');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (8,'何魂');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (4,'力林');
Insert into SCOTT.REGION (REGIONID,REGIONNAME) values (9,'付魂');
commit;
REM INSERTING into SCOTT.TBL_BOARD
SET DEFINE OFF;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (1,'沥固拳','1234','hwa@test.com','累己抛胶飘','郴侩拱累己','211.238.142.153',111,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (2,'辑铰闭','1234','ssk@test.com','铰闭捞 免悼','郴啊 官肺 铰闭捞促','211.238.142.153',16,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (3,'颊促沥','1234','sdj@test.com','颊促沥 免悼','辑匡 芭贸 付访','211.238.142.153',15,to_date('21/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (5,'辫驱柳5','java006$','morning5@test.com','凯缴洒 累己茄 霸矫拱5','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('10/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (6,'捞驱柳6','java004$','apple6@test.com','己角洒 累己茄 霸矫拱6','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (7,'冠驱柳7','java009$','morning7@test.com','弥急阑 促秦 累己茄 霸矫拱7','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('10/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (8,'弥驱柳8','java002$','apple8@test.com','犁固乐霸 累己茄 霸矫拱8','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (9,'捞驱柳9','java004$','test9@test.com','己角洒 累己茄 霸矫拱9','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (10,'辫驱柳10','java006$','apple10@test.com','凯缴洒 累己茄 霸矫拱10','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('10/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (11,'弥驱柳11','java002$','morning11@test.com','犁固乐霸 累己茄 霸矫拱11','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (12,'捞驱柳12','java004$','apple12@test.com','己角洒 累己茄 霸矫拱12','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (13,'弥驱柳13','java002$','morning13@test.com','犁固乐霸 累己茄 霸矫拱13','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (14,'冠驱柳14','java009$','apple14@test.com','弥急阑 促秦 累己茄 霸矫拱14','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('10/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (15,'辫驱柳15','java006$','test15@test.com','凯缴洒 累己茄 霸矫拱15','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('10/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (16,'弥驱柳16','java002$','apple16@test.com','犁固乐霸 累己茄 霸矫拱16','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (17,'弥驱柳17','java002$','morning17@test.com','犁固乐霸 累己茄 霸矫拱17','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (18,'捞驱柳18','java004$','apple18@test.com','己角洒 累己茄 霸矫拱18','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (19,'弥驱柳19','java002$','morning19@test.com','犁固乐霸 累己茄 霸矫拱19','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (20,'辫驱柳20','java006$','apple20@test.com','凯缴洒 累己茄 霸矫拱20','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('10/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (21,'捞驱柳21','java004$','test21@test.com','己角洒 累己茄 霸矫拱21','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (22,'弥驱柳22','java002$','apple22@test.com','犁固乐霸 累己茄 霸矫拱22','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (23,'弥驱柳23','java002$','morning23@test.com','犁固乐霸 累己茄 霸矫拱23','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (24,'捞驱柳24','java004$','apple24@test.com','己角洒 累己茄 霸矫拱24','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (25,'辫驱柳25','java006$','morning25@test.com','凯缴洒 累己茄 霸矫拱25','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('10/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (26,'弥驱柳26','java002$','apple26@test.com','犁固乐霸 累己茄 霸矫拱26','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (27,'捞驱柳27','java004$','test27@test.com','己角洒 累己茄 霸矫拱27','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (28,'冠驱柳28','java009$','apple28@test.com','弥急阑 促秦 累己茄 霸矫拱28','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('10/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (29,'弥驱柳29','java002$','morning29@test.com','犁固乐霸 累己茄 霸矫拱29','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (30,'辫驱柳30','java006$','apple30@test.com','凯缴洒 累己茄 霸矫拱30','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('10/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (31,'弥驱柳31','java002$','morning31@test.com','犁固乐霸 累己茄 霸矫拱31','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (32,'弥驱柳32','java002$','apple32@test.com','犁固乐霸 累己茄 霸矫拱32','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (33,'捞驱柳33','java004$','test33@test.com','己角洒 累己茄 霸矫拱33','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (34,'弥驱柳34','java002$','apple34@test.com','犁固乐霸 累己茄 霸矫拱34','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (35,'辫驱柳35','java006$','morning35@test.com','凯缴洒 累己茄 霸矫拱35','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('10/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (36,'捞驱柳36','java004$','apple36@test.com','己角洒 累己茄 霸矫拱36','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/12/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (37,'弥驱柳37','java002$','morning37@test.com','犁固乐霸 累己茄 霸矫拱37','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (38,'弥驱柳38','java002$','apple38@test.com','犁固乐霸 累己茄 霸矫拱38','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (39,'捞驱柳39','java004$','test39@test.com','己角洒 累己茄 霸矫拱39','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (40,'辫驱柳40','java006$','apple40@test.com','凯缴洒 累己茄 霸矫拱40','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('10/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (41,'弥驱柳41','java002$','morning41@test.com','犁固乐霸 累己茄 霸矫拱41','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (42,'捞驱柳42','java004$','apple42@test.com','己角洒 累己茄 霸矫拱42','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (43,'弥驱柳43','java002$','morning43@test.com','犁固乐霸 累己茄 霸矫拱43','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (44,'弥驱柳44','java002$','apple44@test.com','犁固乐霸 累己茄 霸矫拱44','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (45,'辫驱柳45','java006$','test45@test.com','凯缴洒 累己茄 霸矫拱45','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('10/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (46,'弥驱柳46','java002$','apple46@test.com','犁固乐霸 累己茄 霸矫拱46','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (47,'弥驱柳47','java002$','morning47@test.com','犁固乐霸 累己茄 霸矫拱47','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (48,'捞驱柳48','java004$','apple48@test.com','己角洒 累己茄 霸矫拱48','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (49,'冠驱柳49','java009$','morning49@test.com','弥急阑 促秦 累己茄 霸矫拱49','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('10/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (50,'辫驱柳50','java006$','apple50@test.com','凯缴洒 累己茄 霸矫拱50','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('10/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (51,'捞驱柳51','java004$','test51@test.com','己角洒 累己茄 霸矫拱51','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('10/12/28','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (52,'弥驱柳52','java002$','apple52@test.com','犁固乐霸 累己茄 霸矫拱52','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('10/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (53,'弥驱柳53','java002$','morning53@test.com','犁固乐霸 累己茄 霸矫拱53','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('10/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (54,'捞驱柳54','java004$','apple54@test.com','己角洒 累己茄 霸矫拱54','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('10/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (55,'辫驱柳55','java006$','morning55@test.com','凯缴洒 累己茄 霸矫拱55','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (56,'冠驱柳56','java009$','apple56@test.com','弥急阑 促秦 累己茄 霸矫拱56','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (57,'捞驱柳57','java004$','test57@test.com','己角洒 累己茄 霸矫拱57','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (58,'弥驱柳58','java002$','apple58@test.com','犁固乐霸 累己茄 霸矫拱58','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (59,'弥驱柳59','java002$','morning59@test.com','犁固乐霸 累己茄 霸矫拱59','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (60,'辫驱柳60','java006$','apple60@test.com','凯缴洒 累己茄 霸矫拱60','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (61,'弥驱柳61','java002$','morning61@test.com','犁固乐霸 累己茄 霸矫拱61','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (62,'弥驱柳62','java002$','apple62@test.com','犁固乐霸 累己茄 霸矫拱62','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (63,'捞驱柳63','java004$','test63@test.com','己角洒 累己茄 霸矫拱63','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (64,'弥驱柳64','java002$','apple64@test.com','犁固乐霸 累己茄 霸矫拱64','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (65,'辫驱柳65','java006$','morning65@test.com','凯缴洒 累己茄 霸矫拱65','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (66,'捞驱柳66','java004$','apple66@test.com','己角洒 累己茄 霸矫拱66','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (67,'弥驱柳67','java002$','morning67@test.com','犁固乐霸 累己茄 霸矫拱67','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (68,'弥驱柳68','java002$','apple68@test.com','犁固乐霸 累己茄 霸矫拱68','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (69,'捞驱柳69','java004$','test69@test.com','己角洒 累己茄 霸矫拱69','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (70,'辫驱柳70','java006$','apple70@test.com','凯缴洒 累己茄 霸矫拱70','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (71,'弥驱柳71','java002$','morning71@test.com','犁固乐霸 累己茄 霸矫拱71','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (72,'捞驱柳72','java004$','apple72@test.com','己角洒 累己茄 霸矫拱72','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (73,'弥驱柳73','java002$','morning73@test.com','犁固乐霸 累己茄 霸矫拱73','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (74,'弥驱柳74','java002$','apple74@test.com','犁固乐霸 累己茄 霸矫拱74','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (75,'辫驱柳75','java006$','test75@test.com','凯缴洒 累己茄 霸矫拱75','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (76,'弥驱柳76','java002$','apple76@test.com','犁固乐霸 累己茄 霸矫拱76','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (77,'冠驱柳77','java009$','morning77@test.com','弥急阑 促秦 累己茄 霸矫拱77','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (78,'捞驱柳78','java004$','apple78@test.com','己角洒 累己茄 霸矫拱78','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (79,'弥驱柳79','java002$','morning79@test.com','犁固乐霸 累己茄 霸矫拱79','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (80,'辫驱柳80','java006$','apple80@test.com','凯缴洒 累己茄 霸矫拱80','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (81,'捞驱柳81','java004$','test81@test.com','己角洒 累己茄 霸矫拱81','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (82,'弥驱柳82','java002$','apple82@test.com','犁固乐霸 累己茄 霸矫拱82','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (83,'弥驱柳83','java002$','morning83@test.com','犁固乐霸 累己茄 霸矫拱83','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (84,'捞驱柳84','java004$','apple84@test.com','己角洒 累己茄 霸矫拱84','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (85,'辫驱柳85','java006$','morning85@test.com','凯缴洒 累己茄 霸矫拱85','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (86,'弥驱柳86','java002$','apple86@test.com','犁固乐霸 累己茄 霸矫拱86','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (87,'捞驱柳87','java004$','test87@test.com','己角洒 累己茄 霸矫拱87','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (88,'弥驱柳88','java002$','apple88@test.com','犁固乐霸 累己茄 霸矫拱88','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (89,'弥驱柳89','java002$','morning89@test.com','犁固乐霸 累己茄 霸矫拱89','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (90,'辫驱柳90','java006$','apple90@test.com','凯缴洒 累己茄 霸矫拱90','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (91,'冠驱柳91','java009$','morning91@test.com','弥急阑 促秦 累己茄 霸矫拱91','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (92,'弥驱柳92','java002$','apple92@test.com','犁固乐霸 累己茄 霸矫拱92','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (93,'捞驱柳93','java004$','test93@test.com','己角洒 累己茄 霸矫拱93','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (94,'弥驱柳94','java002$','apple94@test.com','犁固乐霸 累己茄 霸矫拱94','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (95,'辫驱柳95','java006$','morning95@test.com','凯缴洒 累己茄 霸矫拱95','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (96,'捞驱柳96','java004$','apple96@test.com','己角洒 累己茄 霸矫拱96','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (97,'弥驱柳97','java002$','morning97@test.com','犁固乐霸 累己茄 霸矫拱97','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (98,'冠驱柳98','java009$','apple98@test.com','弥急阑 促秦 累己茄 霸矫拱98','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (99,'捞驱柳99','java004$','test99@test.com','己角洒 累己茄 霸矫拱99','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (100,'辫驱柳100','java006$','apple100@test.com','凯缴洒 累己茄 霸矫拱100','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (101,'弥驱柳101','java002$','morning101@test.com','犁固乐霸 累己茄 霸矫拱101','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (102,'捞驱柳102','java004$','apple102@test.com','己角洒 累己茄 霸矫拱102','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (103,'弥驱柳103','java002$','morning103@test.com','犁固乐霸 累己茄 霸矫拱103','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (104,'弥驱柳104','java002$','apple104@test.com','犁固乐霸 累己茄 霸矫拱104','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (105,'辫驱柳105','java006$','test105@test.com','凯缴洒 累己茄 霸矫拱105','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (106,'弥驱柳106','java002$','apple106@test.com','犁固乐霸 累己茄 霸矫拱106','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (107,'弥驱柳107','java002$','morning107@test.com','犁固乐霸 累己茄 霸矫拱107','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (108,'捞驱柳108','java004$','apple108@test.com','己角洒 累己茄 霸矫拱108','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (109,'弥驱柳109','java002$','morning109@test.com','犁固乐霸 累己茄 霸矫拱109','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (110,'辫驱柳110','java006$','apple110@test.com','凯缴洒 累己茄 霸矫拱110','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (111,'捞驱柳111','java004$','test111@test.com','己角洒 累己茄 霸矫拱111','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (112,'冠驱柳112','java009$','apple112@test.com','弥急阑 促秦 累己茄 霸矫拱112','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (113,'弥驱柳113','java002$','morning113@test.com','犁固乐霸 累己茄 霸矫拱113','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (114,'捞驱柳114','java004$','apple114@test.com','己角洒 累己茄 霸矫拱114','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (115,'辫驱柳115','java006$','morning115@test.com','凯缴洒 累己茄 霸矫拱115','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (116,'弥驱柳116','java002$','apple116@test.com','犁固乐霸 累己茄 霸矫拱116','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (117,'捞驱柳117','java004$','test117@test.com','己角洒 累己茄 霸矫拱117','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (118,'弥驱柳118','java002$','apple118@test.com','犁固乐霸 累己茄 霸矫拱118','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (119,'冠驱柳119','java009$','morning119@test.com','弥急阑 促秦 累己茄 霸矫拱119','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (120,'辫驱柳120','java006$','apple120@test.com','凯缴洒 累己茄 霸矫拱120','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (121,'弥驱柳121','java002$','morning121@test.com','犁固乐霸 累己茄 霸矫拱121','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (122,'弥驱柳122','java002$','apple122@test.com','犁固乐霸 累己茄 霸矫拱122','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (123,'捞驱柳123','java004$','test123@test.com','己角洒 累己茄 霸矫拱123','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (124,'弥驱柳124','java002$','apple124@test.com','犁固乐霸 累己茄 霸矫拱124','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (125,'辫驱柳125','java006$','morning125@test.com','凯缴洒 累己茄 霸矫拱125','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (126,'捞驱柳126','java004$','apple126@test.com','己角洒 累己茄 霸矫拱126','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (127,'弥驱柳127','java002$','morning127@test.com','犁固乐霸 累己茄 霸矫拱127','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (128,'弥驱柳128','java002$','apple128@test.com','犁固乐霸 累己茄 霸矫拱128','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (129,'捞驱柳129','java004$','test129@test.com','己角洒 累己茄 霸矫拱129','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (130,'辫驱柳130','java006$','apple130@test.com','凯缴洒 累己茄 霸矫拱130','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (131,'弥驱柳131','java002$','morning131@test.com','犁固乐霸 累己茄 霸矫拱131','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (132,'捞驱柳132','java004$','apple132@test.com','己角洒 累己茄 霸矫拱132','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (133,'冠驱柳133','java009$','morning133@test.com','弥急阑 促秦 累己茄 霸矫拱133','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (134,'弥驱柳134','java002$','apple134@test.com','犁固乐霸 累己茄 霸矫拱134','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (135,'辫驱柳135','java006$','test135@test.com','凯缴洒 累己茄 霸矫拱135','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/03/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (136,'弥驱柳136','java002$','apple136@test.com','犁固乐霸 累己茄 霸矫拱136','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (137,'弥驱柳137','java002$','morning137@test.com','犁固乐霸 累己茄 霸矫拱137','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (138,'捞驱柳138','java004$','apple138@test.com','己角洒 累己茄 霸矫拱138','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (139,'弥驱柳139','java002$','morning139@test.com','犁固乐霸 累己茄 霸矫拱139','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (140,'辫驱柳140','java006$','apple140@test.com','凯缴洒 累己茄 霸矫拱140','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (141,'捞驱柳141','java004$','test141@test.com','己角洒 累己茄 霸矫拱141','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (142,'弥驱柳142','java002$','apple142@test.com','犁固乐霸 累己茄 霸矫拱142','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (143,'弥驱柳143','java002$','morning143@test.com','犁固乐霸 累己茄 霸矫拱143','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (144,'捞驱柳144','java004$','apple144@test.com','己角洒 累己茄 霸矫拱144','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (145,'辫驱柳145','java006$','morning145@test.com','凯缴洒 累己茄 霸矫拱145','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (146,'弥驱柳146','java002$','apple146@test.com','犁固乐霸 累己茄 霸矫拱146','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (147,'捞驱柳147','java004$','test147@test.com','己角洒 累己茄 霸矫拱147','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (148,'弥驱柳148','java002$','apple148@test.com','犁固乐霸 累己茄 霸矫拱148','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (149,'弥驱柳149','java002$','morning149@test.com','犁固乐霸 累己茄 霸矫拱149','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (150,'辫驱柳150','java006$','apple150@test.com','凯缴洒 累己茄 霸矫拱150','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (151,'弥驱柳151','java002$','morning151@test.com','犁固乐霸 累己茄 霸矫拱151','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/07','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (152,'弥驱柳152','java002$','apple152@test.com','犁固乐霸 累己茄 霸矫拱152','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (153,'捞驱柳153','java004$','test153@test.com','己角洒 累己茄 霸矫拱153','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (154,'冠驱柳154','java009$','apple154@test.com','弥急阑 促秦 累己茄 霸矫拱154','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (155,'辫驱柳155','java006$','morning155@test.com','凯缴洒 累己茄 霸矫拱155','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (156,'捞驱柳156','java004$','apple156@test.com','己角洒 累己茄 霸矫拱156','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (157,'弥驱柳157','java002$','morning157@test.com','犁固乐霸 累己茄 霸矫拱157','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (158,'弥驱柳158','java002$','apple158@test.com','犁固乐霸 累己茄 霸矫拱158','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (159,'捞驱柳159','java004$','test159@test.com','己角洒 累己茄 霸矫拱159','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (160,'辫驱柳160','java006$','apple160@test.com','凯缴洒 累己茄 霸矫拱160','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (161,'冠驱柳161','java009$','morning161@test.com','弥急阑 促秦 累己茄 霸矫拱161','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (162,'捞驱柳162','java004$','apple162@test.com','己角洒 累己茄 霸矫拱162','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (163,'弥驱柳163','java002$','morning163@test.com','犁固乐霸 累己茄 霸矫拱163','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (164,'弥驱柳164','java002$','apple164@test.com','犁固乐霸 累己茄 霸矫拱164','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (165,'辫驱柳165','java006$','test165@test.com','凯缴洒 累己茄 霸矫拱165','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (166,'弥驱柳166','java002$','apple166@test.com','犁固乐霸 累己茄 霸矫拱166','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (167,'弥驱柳167','java002$','morning167@test.com','犁固乐霸 累己茄 霸矫拱167','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (168,'捞驱柳168','java004$','apple168@test.com','己角洒 累己茄 霸矫拱168','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (169,'弥驱柳169','java002$','morning169@test.com','犁固乐霸 累己茄 霸矫拱169','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (170,'辫驱柳170','java006$','apple170@test.com','凯缴洒 累己茄 霸矫拱170','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (171,'捞驱柳171','java004$','test171@test.com','己角洒 累己茄 霸矫拱171','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (172,'弥驱柳172','java002$','apple172@test.com','犁固乐霸 累己茄 霸矫拱172','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (173,'弥驱柳173','java002$','morning173@test.com','犁固乐霸 累己茄 霸矫拱173','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (174,'捞驱柳174','java004$','apple174@test.com','己角洒 累己茄 霸矫拱174','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (175,'辫驱柳175','java006$','morning175@test.com','凯缴洒 累己茄 霸矫拱175','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (176,'弥驱柳176','java002$','apple176@test.com','犁固乐霸 累己茄 霸矫拱176','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (177,'捞驱柳177','java004$','test177@test.com','己角洒 累己茄 霸矫拱177','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (178,'弥驱柳178','java002$','apple178@test.com','犁固乐霸 累己茄 霸矫拱178','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (179,'弥驱柳179','java002$','morning179@test.com','犁固乐霸 累己茄 霸矫拱179','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (180,'辫驱柳180','java006$','apple180@test.com','凯缴洒 累己茄 霸矫拱180','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (181,'弥驱柳181','java002$','morning181@test.com','犁固乐霸 累己茄 霸矫拱181','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (182,'冠驱柳182','java009$','apple182@test.com','弥急阑 促秦 累己茄 霸矫拱182','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (183,'捞驱柳183','java004$','test183@test.com','己角洒 累己茄 霸矫拱183','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (184,'弥驱柳184','java002$','apple184@test.com','犁固乐霸 累己茄 霸矫拱184','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (185,'辫驱柳185','java006$','morning185@test.com','凯缴洒 累己茄 霸矫拱185','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/05/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (186,'捞驱柳186','java004$','apple186@test.com','己角洒 累己茄 霸矫拱186','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (187,'弥驱柳187','java002$','morning187@test.com','犁固乐霸 累己茄 霸矫拱187','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (188,'弥驱柳188','java002$','apple188@test.com','犁固乐霸 累己茄 霸矫拱188','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (189,'捞驱柳189','java004$','test189@test.com','己角洒 累己茄 霸矫拱189','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (190,'辫驱柳190','java006$','apple190@test.com','凯缴洒 累己茄 霸矫拱190','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (191,'弥驱柳191','java002$','morning191@test.com','犁固乐霸 累己茄 霸矫拱191','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (192,'捞驱柳192','java004$','apple192@test.com','己角洒 累己茄 霸矫拱192','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (193,'弥驱柳193','java002$','morning193@test.com','犁固乐霸 累己茄 霸矫拱193','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (194,'弥驱柳194','java002$','apple194@test.com','犁固乐霸 累己茄 霸矫拱194','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (195,'辫驱柳195','java006$','test195@test.com','凯缴洒 累己茄 霸矫拱195','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (196,'冠驱柳196','java009$','apple196@test.com','弥急阑 促秦 累己茄 霸矫拱196','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (197,'弥驱柳197','java002$','morning197@test.com','犁固乐霸 累己茄 霸矫拱197','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (198,'捞驱柳198','java004$','apple198@test.com','己角洒 累己茄 霸矫拱198','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (199,'弥驱柳199','java002$','morning199@test.com','犁固乐霸 累己茄 霸矫拱199','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (200,'辫驱柳200','java006$','apple200@test.com','凯缴洒 累己茄 霸矫拱200','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (201,'捞驱柳201','java004$','test201@test.com','己角洒 累己茄 霸矫拱201','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/05/27','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (202,'弥驱柳202','java002$','apple202@test.com','犁固乐霸 累己茄 霸矫拱202','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (203,'冠驱柳203','java009$','morning203@test.com','弥急阑 促秦 累己茄 霸矫拱203','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (204,'捞驱柳204','java004$','apple204@test.com','己角洒 累己茄 霸矫拱204','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (205,'辫驱柳205','java006$','morning205@test.com','凯缴洒 累己茄 霸矫拱205','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (206,'弥驱柳206','java002$','apple206@test.com','犁固乐霸 累己茄 霸矫拱206','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (207,'捞驱柳207','java004$','test207@test.com','己角洒 累己茄 霸矫拱207','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (208,'弥驱柳208','java002$','apple208@test.com','犁固乐霸 累己茄 霸矫拱208','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (209,'弥驱柳209','java002$','morning209@test.com','犁固乐霸 累己茄 霸矫拱209','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (210,'辫驱柳210','java006$','apple210@test.com','凯缴洒 累己茄 霸矫拱210','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (211,'弥驱柳211','java002$','morning211@test.com','犁固乐霸 累己茄 霸矫拱211','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (212,'弥驱柳212','java002$','apple212@test.com','犁固乐霸 累己茄 霸矫拱212','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (213,'捞驱柳213','java004$','test213@test.com','己角洒 累己茄 霸矫拱213','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (214,'弥驱柳214','java002$','apple214@test.com','犁固乐霸 累己茄 霸矫拱214','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (215,'辫驱柳215','java006$','morning215@test.com','凯缴洒 累己茄 霸矫拱215','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (216,'捞驱柳216','java004$','apple216@test.com','己角洒 累己茄 霸矫拱216','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/06/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (217,'冠驱柳217','java009$','morning217@test.com','弥急阑 促秦 累己茄 霸矫拱217','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (218,'弥驱柳218','java002$','apple218@test.com','犁固乐霸 累己茄 霸矫拱218','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (219,'捞驱柳219','java004$','test219@test.com','己角洒 累己茄 霸矫拱219','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (220,'辫驱柳220','java006$','apple220@test.com','凯缴洒 累己茄 霸矫拱220','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (221,'弥驱柳221','java002$','morning221@test.com','犁固乐霸 累己茄 霸矫拱221','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (222,'捞驱柳222','java004$','apple222@test.com','己角洒 累己茄 霸矫拱222','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (223,'弥驱柳223','java002$','morning223@test.com','犁固乐霸 累己茄 霸矫拱223','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (224,'冠驱柳224','java009$','apple224@test.com','弥急阑 促秦 累己茄 霸矫拱224','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (225,'辫驱柳225','java006$','test225@test.com','凯缴洒 累己茄 霸矫拱225','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (226,'弥驱柳226','java002$','apple226@test.com','犁固乐霸 累己茄 霸矫拱226','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (227,'弥驱柳227','java002$','morning227@test.com','犁固乐霸 累己茄 霸矫拱227','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (228,'捞驱柳228','java004$','apple228@test.com','己角洒 累己茄 霸矫拱228','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (229,'弥驱柳229','java002$','morning229@test.com','犁固乐霸 累己茄 霸矫拱229','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (230,'辫驱柳230','java006$','apple230@test.com','凯缴洒 累己茄 霸矫拱230','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (231,'捞驱柳231','java004$','test231@test.com','己角洒 累己茄 霸矫拱231','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (232,'弥驱柳232','java002$','apple232@test.com','犁固乐霸 累己茄 霸矫拱232','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (233,'弥驱柳233','java002$','morning233@test.com','犁固乐霸 累己茄 霸矫拱233','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (234,'捞驱柳234','java004$','apple234@test.com','己角洒 累己茄 霸矫拱234','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (235,'辫驱柳235','java006$','morning235@test.com','凯缴洒 累己茄 霸矫拱235','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (236,'弥驱柳236','java002$','apple236@test.com','犁固乐霸 累己茄 霸矫拱236','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (237,'捞驱柳237','java004$','test237@test.com','己角洒 累己茄 霸矫拱237','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (238,'冠驱柳238','java009$','apple238@test.com','弥急阑 促秦 累己茄 霸矫拱238','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (239,'弥驱柳239','java002$','morning239@test.com','犁固乐霸 累己茄 霸矫拱239','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (240,'辫驱柳240','java006$','apple240@test.com','凯缴洒 累己茄 霸矫拱240','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (241,'弥驱柳241','java002$','morning241@test.com','犁固乐霸 累己茄 霸矫拱241','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (242,'弥驱柳242','java002$','apple242@test.com','犁固乐霸 累己茄 霸矫拱242','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (243,'捞驱柳243','java004$','test243@test.com','己角洒 累己茄 霸矫拱243','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (244,'弥驱柳244','java002$','apple244@test.com','犁固乐霸 累己茄 霸矫拱244','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (245,'辫驱柳245','java006$','morning245@test.com','凯缴洒 累己茄 霸矫拱245','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (246,'捞驱柳246','java004$','apple246@test.com','己角洒 累己茄 霸矫拱246','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (247,'弥驱柳247','java002$','morning247@test.com','犁固乐霸 累己茄 霸矫拱247','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (248,'弥驱柳248','java002$','apple248@test.com','犁固乐霸 累己茄 霸矫拱248','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (249,'捞驱柳249','java004$','test249@test.com','己角洒 累己茄 霸矫拱249','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (250,'辫驱柳250','java006$','apple250@test.com','凯缴洒 累己茄 霸矫拱250','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (251,'弥驱柳251','java002$','morning251@test.com','犁固乐霸 累己茄 霸矫拱251','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/16','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (252,'捞驱柳252','java004$','apple252@test.com','己角洒 累己茄 霸矫拱252','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (253,'弥驱柳253','java002$','morning253@test.com','犁固乐霸 累己茄 霸矫拱253','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (254,'弥驱柳254','java002$','apple254@test.com','犁固乐霸 累己茄 霸矫拱254','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (255,'辫驱柳255','java006$','test255@test.com','凯缴洒 累己茄 霸矫拱255','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (256,'弥驱柳256','java002$','apple256@test.com','犁固乐霸 累己茄 霸矫拱256','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (257,'弥驱柳257','java002$','morning257@test.com','犁固乐霸 累己茄 霸矫拱257','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (258,'捞驱柳258','java004$','apple258@test.com','己角洒 累己茄 霸矫拱258','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (259,'冠驱柳259','java009$','morning259@test.com','弥急阑 促秦 累己茄 霸矫拱259','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (260,'辫驱柳260','java006$','apple260@test.com','凯缴洒 累己茄 霸矫拱260','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (261,'捞驱柳261','java004$','test261@test.com','己角洒 累己茄 霸矫拱261','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (262,'弥驱柳262','java002$','apple262@test.com','犁固乐霸 累己茄 霸矫拱262','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (263,'弥驱柳263','java002$','morning263@test.com','犁固乐霸 累己茄 霸矫拱263','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (264,'捞驱柳264','java004$','apple264@test.com','己角洒 累己茄 霸矫拱264','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (265,'辫驱柳265','java006$','morning265@test.com','凯缴洒 累己茄 霸矫拱265','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (266,'冠驱柳266','java009$','apple266@test.com','弥急阑 促秦 累己茄 霸矫拱266','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (267,'捞驱柳267','java004$','test267@test.com','己角洒 累己茄 霸矫拱267','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (268,'弥驱柳268','java002$','apple268@test.com','犁固乐霸 累己茄 霸矫拱268','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (269,'弥驱柳269','java002$','morning269@test.com','犁固乐霸 累己茄 霸矫拱269','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (270,'辫驱柳270','java006$','apple270@test.com','凯缴洒 累己茄 霸矫拱270','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (271,'弥驱柳271','java002$','morning271@test.com','犁固乐霸 累己茄 霸矫拱271','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (272,'弥驱柳272','java002$','apple272@test.com','犁固乐霸 累己茄 霸矫拱272','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (273,'捞驱柳273','java004$','test273@test.com','己角洒 累己茄 霸矫拱273','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (274,'弥驱柳274','java002$','apple274@test.com','犁固乐霸 累己茄 霸矫拱274','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (275,'辫驱柳275','java006$','morning275@test.com','凯缴洒 累己茄 霸矫拱275','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (276,'捞驱柳276','java004$','apple276@test.com','己角洒 累己茄 霸矫拱276','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (277,'弥驱柳277','java002$','morning277@test.com','犁固乐霸 累己茄 霸矫拱277','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (278,'弥驱柳278','java002$','apple278@test.com','犁固乐霸 累己茄 霸矫拱278','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (279,'捞驱柳279','java004$','test279@test.com','己角洒 累己茄 霸矫拱279','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (280,'辫驱柳280','java006$','apple280@test.com','凯缴洒 累己茄 霸矫拱280','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (281,'弥驱柳281','java002$','morning281@test.com','犁固乐霸 累己茄 霸矫拱281','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (282,'捞驱柳282','java004$','apple282@test.com','己角洒 累己茄 霸矫拱282','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (283,'弥驱柳283','java002$','morning283@test.com','犁固乐霸 累己茄 霸矫拱283','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (284,'弥驱柳284','java002$','apple284@test.com','犁固乐霸 累己茄 霸矫拱284','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (285,'辫驱柳285','java006$','test285@test.com','凯缴洒 累己茄 霸矫拱285','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (286,'弥驱柳286','java002$','apple286@test.com','犁固乐霸 累己茄 霸矫拱286','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (287,'冠驱柳287','java009$','morning287@test.com','弥急阑 促秦 累己茄 霸矫拱287','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (288,'捞驱柳288','java004$','apple288@test.com','己角洒 累己茄 霸矫拱288','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (289,'弥驱柳289','java002$','morning289@test.com','犁固乐霸 累己茄 霸矫拱289','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (290,'辫驱柳290','java006$','apple290@test.com','凯缴洒 累己茄 霸矫拱290','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (291,'捞驱柳291','java004$','test291@test.com','己角洒 累己茄 霸矫拱291','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (292,'弥驱柳292','java002$','apple292@test.com','犁固乐霸 累己茄 霸矫拱292','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (293,'弥驱柳293','java002$','morning293@test.com','犁固乐霸 累己茄 霸矫拱293','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (294,'捞驱柳294','java004$','apple294@test.com','己角洒 累己茄 霸矫拱294','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (295,'辫驱柳295','java006$','morning295@test.com','凯缴洒 累己茄 霸矫拱295','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (296,'弥驱柳296','java002$','apple296@test.com','犁固乐霸 累己茄 霸矫拱296','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (297,'捞驱柳297','java004$','test297@test.com','己角洒 累己茄 霸矫拱297','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (298,'弥驱柳298','java002$','apple298@test.com','犁固乐霸 累己茄 霸矫拱298','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (299,'弥驱柳299','java002$','morning299@test.com','犁固乐霸 累己茄 霸矫拱299','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (300,'辫驱柳300','java006$','apple300@test.com','凯缴洒 累己茄 霸矫拱300','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/09/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (301,'冠驱柳301','java009$','morning301@test.com','弥急阑 促秦 累己茄 霸矫拱301','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/09/04','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (302,'弥驱柳302','java002$','apple302@test.com','犁固乐霸 累己茄 霸矫拱302','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (303,'捞驱柳303','java004$','test303@test.com','己角洒 累己茄 霸矫拱303','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (304,'弥驱柳304','java002$','apple304@test.com','犁固乐霸 累己茄 霸矫拱304','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (305,'辫驱柳305','java006$','morning305@test.com','凯缴洒 累己茄 霸矫拱305','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (306,'捞驱柳306','java004$','apple306@test.com','己角洒 累己茄 霸矫拱306','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (307,'弥驱柳307','java002$','morning307@test.com','犁固乐霸 累己茄 霸矫拱307','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (308,'冠驱柳308','java009$','apple308@test.com','弥急阑 促秦 累己茄 霸矫拱308','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/09/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (309,'捞驱柳309','java004$','test309@test.com','己角洒 累己茄 霸矫拱309','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/09/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (310,'辫驱柳310','java006$','apple310@test.com','凯缴洒 累己茄 霸矫拱310','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/09/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (311,'弥驱柳311','java002$','morning311@test.com','犁固乐霸 累己茄 霸矫拱311','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (312,'捞驱柳312','java004$','apple312@test.com','己角洒 累己茄 霸矫拱312','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/09/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (313,'弥驱柳313','java002$','morning313@test.com','犁固乐霸 累己茄 霸矫拱313','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (314,'弥驱柳314','java002$','apple314@test.com','犁固乐霸 累己茄 霸矫拱314','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (315,'辫驱柳315','java006$','test315@test.com','凯缴洒 累己茄 霸矫拱315','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/09/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (316,'弥驱柳316','java002$','apple316@test.com','犁固乐霸 累己茄 霸矫拱316','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (317,'弥驱柳317','java002$','morning317@test.com','犁固乐霸 累己茄 霸矫拱317','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (318,'捞驱柳318','java004$','apple318@test.com','己角洒 累己茄 霸矫拱318','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/09/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (319,'弥驱柳319','java002$','morning319@test.com','犁固乐霸 累己茄 霸矫拱319','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (320,'辫驱柳320','java006$','apple320@test.com','凯缴洒 累己茄 霸矫拱320','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/09/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (321,'捞驱柳321','java004$','test321@test.com','己角洒 累己茄 霸矫拱321','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/09/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (322,'冠驱柳322','java009$','apple322@test.com','弥急阑 促秦 累己茄 霸矫拱322','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/09/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (323,'弥驱柳323','java002$','morning323@test.com','犁固乐霸 累己茄 霸矫拱323','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/09/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (324,'捞驱柳324','java004$','apple324@test.com','己角洒 累己茄 霸矫拱324','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/09/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (325,'辫驱柳325','java006$','morning325@test.com','凯缴洒 累己茄 霸矫拱325','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/09/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (326,'弥驱柳326','java002$','apple326@test.com','犁固乐霸 累己茄 霸矫拱326','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/09/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (327,'捞驱柳327','java004$','test327@test.com','己角洒 累己茄 霸矫拱327','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/09/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (328,'弥驱柳328','java002$','apple328@test.com','犁固乐霸 累己茄 霸矫拱328','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (329,'冠驱柳329','java009$','morning329@test.com','弥急阑 促秦 累己茄 霸矫拱329','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/10/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (330,'辫驱柳330','java006$','apple330@test.com','凯缴洒 累己茄 霸矫拱330','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/10/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (331,'弥驱柳331','java002$','morning331@test.com','犁固乐霸 累己茄 霸矫拱331','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (332,'弥驱柳332','java002$','apple332@test.com','犁固乐霸 累己茄 霸矫拱332','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (333,'捞驱柳333','java004$','test333@test.com','己角洒 累己茄 霸矫拱333','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/10/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (334,'弥驱柳334','java002$','apple334@test.com','犁固乐霸 累己茄 霸矫拱334','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (335,'辫驱柳335','java006$','morning335@test.com','凯缴洒 累己茄 霸矫拱335','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/10/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (336,'捞驱柳336','java004$','apple336@test.com','己角洒 累己茄 霸矫拱336','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/10/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (337,'弥驱柳337','java002$','morning337@test.com','犁固乐霸 累己茄 霸矫拱337','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (338,'弥驱柳338','java002$','apple338@test.com','犁固乐霸 累己茄 霸矫拱338','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (339,'捞驱柳339','java004$','test339@test.com','己角洒 累己茄 霸矫拱339','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/10/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (340,'辫驱柳340','java006$','apple340@test.com','凯缴洒 累己茄 霸矫拱340','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/10/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (341,'弥驱柳341','java002$','morning341@test.com','犁固乐霸 累己茄 霸矫拱341','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (342,'捞驱柳342','java004$','apple342@test.com','己角洒 累己茄 霸矫拱342','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/10/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (343,'冠驱柳343','java009$','morning343@test.com','弥急阑 促秦 累己茄 霸矫拱343','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/10/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (344,'弥驱柳344','java002$','apple344@test.com','犁固乐霸 累己茄 霸矫拱344','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (345,'辫驱柳345','java006$','test345@test.com','凯缴洒 累己茄 霸矫拱345','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/10/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (346,'弥驱柳346','java002$','apple346@test.com','犁固乐霸 累己茄 霸矫拱346','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (347,'弥驱柳347','java002$','morning347@test.com','犁固乐霸 累己茄 霸矫拱347','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (348,'捞驱柳348','java004$','apple348@test.com','己角洒 累己茄 霸矫拱348','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/10/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (349,'弥驱柳349','java002$','morning349@test.com','犁固乐霸 累己茄 霸矫拱349','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (350,'辫驱柳350','java006$','apple350@test.com','凯缴洒 累己茄 霸矫拱350','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/10/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (351,'捞驱柳351','java004$','test351@test.com','己角洒 累己茄 霸矫拱351','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/10/24','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (352,'弥驱柳352','java002$','apple352@test.com','犁固乐霸 累己茄 霸矫拱352','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (353,'弥驱柳353','java002$','morning353@test.com','犁固乐霸 累己茄 霸矫拱353','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/10/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (354,'捞驱柳354','java004$','apple354@test.com','己角洒 累己茄 霸矫拱354','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/10/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (355,'辫驱柳355','java006$','morning355@test.com','凯缴洒 累己茄 霸矫拱355','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/10/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (356,'弥驱柳356','java002$','apple356@test.com','犁固乐霸 累己茄 霸矫拱356','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (357,'捞驱柳357','java004$','test357@test.com','己角洒 累己茄 霸矫拱357','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/10/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (358,'弥驱柳358','java002$','apple358@test.com','犁固乐霸 累己茄 霸矫拱358','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/10/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (359,'弥驱柳359','java002$','morning359@test.com','犁固乐霸 累己茄 霸矫拱359','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (360,'辫驱柳360','java006$','apple360@test.com','凯缴洒 累己茄 霸矫拱360','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/11/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (361,'弥驱柳361','java002$','morning361@test.com','犁固乐霸 累己茄 霸矫拱361','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (362,'弥驱柳362','java002$','apple362@test.com','犁固乐霸 累己茄 霸矫拱362','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (363,'捞驱柳363','java004$','test363@test.com','己角洒 累己茄 霸矫拱363','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/11/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (364,'冠驱柳364','java009$','apple364@test.com','弥急阑 促秦 累己茄 霸矫拱364','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/11/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (365,'辫驱柳365','java006$','morning365@test.com','凯缴洒 累己茄 霸矫拱365','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/11/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (366,'捞驱柳366','java004$','apple366@test.com','己角洒 累己茄 霸矫拱366','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/11/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (367,'弥驱柳367','java002$','morning367@test.com','犁固乐霸 累己茄 霸矫拱367','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (368,'弥驱柳368','java002$','apple368@test.com','犁固乐霸 累己茄 霸矫拱368','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (369,'捞驱柳369','java004$','test369@test.com','己角洒 累己茄 霸矫拱369','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/11/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (370,'辫驱柳370','java006$','apple370@test.com','凯缴洒 累己茄 霸矫拱370','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/11/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (371,'冠驱柳371','java009$','morning371@test.com','弥急阑 促秦 累己茄 霸矫拱371','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/11/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (372,'捞驱柳372','java004$','apple372@test.com','己角洒 累己茄 霸矫拱372','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/11/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (373,'弥驱柳373','java002$','morning373@test.com','犁固乐霸 累己茄 霸矫拱373','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (374,'弥驱柳374','java002$','apple374@test.com','犁固乐霸 累己茄 霸矫拱374','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (375,'辫驱柳375','java006$','test375@test.com','凯缴洒 累己茄 霸矫拱375','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/11/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (376,'弥驱柳376','java002$','apple376@test.com','犁固乐霸 累己茄 霸矫拱376','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (377,'弥驱柳377','java002$','morning377@test.com','犁固乐霸 累己茄 霸矫拱377','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (378,'捞驱柳378','java004$','apple378@test.com','己角洒 累己茄 霸矫拱378','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/11/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (379,'弥驱柳379','java002$','morning379@test.com','犁固乐霸 累己茄 霸矫拱379','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (380,'辫驱柳380','java006$','apple380@test.com','凯缴洒 累己茄 霸矫拱380','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/11/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (381,'捞驱柳381','java004$','test381@test.com','己角洒 累己茄 霸矫拱381','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/11/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (382,'弥驱柳382','java002$','apple382@test.com','犁固乐霸 累己茄 霸矫拱382','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (383,'弥驱柳383','java002$','morning383@test.com','犁固乐霸 累己茄 霸矫拱383','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/11/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (384,'捞驱柳384','java004$','apple384@test.com','己角洒 累己茄 霸矫拱384','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/11/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (385,'辫驱柳385','java006$','morning385@test.com','凯缴洒 累己茄 霸矫拱385','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/11/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (386,'弥驱柳386','java002$','apple386@test.com','犁固乐霸 累己茄 霸矫拱386','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (387,'捞驱柳387','java004$','test387@test.com','己角洒 累己茄 霸矫拱387','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/11/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (388,'弥驱柳388','java002$','apple388@test.com','犁固乐霸 累己茄 霸矫拱388','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/11/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (389,'弥驱柳389','java002$','morning389@test.com','犁固乐霸 累己茄 霸矫拱389','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (390,'辫驱柳390','java006$','apple390@test.com','凯缴洒 累己茄 霸矫拱390','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/12/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (391,'弥驱柳391','java002$','morning391@test.com','犁固乐霸 累己茄 霸矫拱391','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (392,'冠驱柳392','java009$','apple392@test.com','弥急阑 促秦 累己茄 霸矫拱392','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/12/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (393,'捞驱柳393','java004$','test393@test.com','己角洒 累己茄 霸矫拱393','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/12/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (394,'弥驱柳394','java002$','apple394@test.com','犁固乐霸 累己茄 霸矫拱394','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (395,'辫驱柳395','java006$','morning395@test.com','凯缴洒 累己茄 霸矫拱395','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/12/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (396,'捞驱柳396','java004$','apple396@test.com','己角洒 累己茄 霸矫拱396','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/12/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (397,'弥驱柳397','java002$','morning397@test.com','犁固乐霸 累己茄 霸矫拱397','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (398,'弥驱柳398','java002$','apple398@test.com','犁固乐霸 累己茄 霸矫拱398','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (399,'捞驱柳399','java004$','test399@test.com','己角洒 累己茄 霸矫拱399','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/12/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (400,'辫驱柳400','java006$','apple400@test.com','凯缴洒 累己茄 霸矫拱400','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/12/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (401,'弥驱柳401','java002$','morning401@test.com','犁固乐霸 累己茄 霸矫拱401','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/13','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (402,'捞驱柳402','java004$','apple402@test.com','己角洒 累己茄 霸矫拱402','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/12/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (403,'弥驱柳403','java002$','morning403@test.com','犁固乐霸 累己茄 霸矫拱403','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (404,'弥驱柳404','java002$','apple404@test.com','犁固乐霸 累己茄 霸矫拱404','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (405,'辫驱柳405','java006$','test405@test.com','凯缴洒 累己茄 霸矫拱405','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('11/12/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (406,'冠驱柳406','java009$','apple406@test.com','弥急阑 促秦 累己茄 霸矫拱406','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('11/12/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (407,'弥驱柳407','java002$','morning407@test.com','犁固乐霸 累己茄 霸矫拱407','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (408,'捞驱柳408','java004$','apple408@test.com','己角洒 累己茄 霸矫拱408','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/12/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (409,'弥驱柳409','java002$','morning409@test.com','犁固乐霸 累己茄 霸矫拱409','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (410,'辫驱柳410','java006$','apple410@test.com','凯缴洒 累己茄 霸矫拱410','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('11/12/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (411,'捞驱柳411','java004$','test411@test.com','己角洒 累己茄 霸矫拱411','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/12/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (412,'弥驱柳412','java002$','apple412@test.com','犁固乐霸 累己茄 霸矫拱412','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (413,'冠驱柳413','java009$','morning413@test.com','弥急阑 促秦 累己茄 霸矫拱413','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('11/12/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (414,'捞驱柳414','java004$','apple414@test.com','己角洒 累己茄 霸矫拱414','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('11/12/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (415,'辫驱柳415','java006$','morning415@test.com','凯缴洒 累己茄 霸矫拱415','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('11/12/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (416,'弥驱柳416','java002$','apple416@test.com','犁固乐霸 累己茄 霸矫拱416','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (417,'捞驱柳417','java004$','test417@test.com','己角洒 累己茄 霸矫拱417','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('11/12/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (418,'弥驱柳418','java002$','apple418@test.com','犁固乐霸 累己茄 霸矫拱418','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('11/12/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (419,'弥驱柳419','java002$','morning419@test.com','犁固乐霸 累己茄 霸矫拱419','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('11/12/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (420,'辫驱柳420','java006$','apple420@test.com','凯缴洒 累己茄 霸矫拱420','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/01/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (421,'弥驱柳421','java002$','morning421@test.com','犁固乐霸 累己茄 霸矫拱421','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (422,'弥驱柳422','java002$','apple422@test.com','犁固乐霸 累己茄 霸矫拱422','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (423,'捞驱柳423','java004$','test423@test.com','己角洒 累己茄 霸矫拱423','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/01/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (424,'弥驱柳424','java002$','apple424@test.com','犁固乐霸 累己茄 霸矫拱424','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (425,'辫驱柳425','java006$','morning425@test.com','凯缴洒 累己茄 霸矫拱425','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/01/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (426,'捞驱柳426','java004$','apple426@test.com','己角洒 累己茄 霸矫拱426','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/01/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (427,'冠驱柳427','java009$','morning427@test.com','弥急阑 促秦 累己茄 霸矫拱427','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/01/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (428,'弥驱柳428','java002$','apple428@test.com','犁固乐霸 累己茄 霸矫拱428','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (429,'捞驱柳429','java004$','test429@test.com','己角洒 累己茄 霸矫拱429','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/01/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (430,'辫驱柳430','java006$','apple430@test.com','凯缴洒 累己茄 霸矫拱430','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/01/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (431,'弥驱柳431','java002$','morning431@test.com','犁固乐霸 累己茄 霸矫拱431','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (432,'捞驱柳432','java004$','apple432@test.com','己角洒 累己茄 霸矫拱432','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/01/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (433,'弥驱柳433','java002$','morning433@test.com','犁固乐霸 累己茄 霸矫拱433','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (434,'冠驱柳434','java009$','apple434@test.com','弥急阑 促秦 累己茄 霸矫拱434','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/01/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (435,'辫驱柳435','java006$','test435@test.com','凯缴洒 累己茄 霸矫拱435','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/01/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (436,'弥驱柳436','java002$','apple436@test.com','犁固乐霸 累己茄 霸矫拱436','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (437,'弥驱柳437','java002$','morning437@test.com','犁固乐霸 累己茄 霸矫拱437','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (438,'捞驱柳438','java004$','apple438@test.com','己角洒 累己茄 霸矫拱438','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/01/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (439,'弥驱柳439','java002$','morning439@test.com','犁固乐霸 累己茄 霸矫拱439','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (440,'辫驱柳440','java006$','apple440@test.com','凯缴洒 累己茄 霸矫拱440','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/01/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (441,'捞驱柳441','java004$','test441@test.com','己角洒 累己茄 霸矫拱441','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/01/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (442,'弥驱柳442','java002$','apple442@test.com','犁固乐霸 累己茄 霸矫拱442','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (443,'弥驱柳443','java002$','morning443@test.com','犁固乐霸 累己茄 霸矫拱443','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (444,'捞驱柳444','java004$','apple444@test.com','己角洒 累己茄 霸矫拱444','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/01/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (445,'辫驱柳445','java006$','morning445@test.com','凯缴洒 累己茄 霸矫拱445','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/01/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (446,'弥驱柳446','java002$','apple446@test.com','犁固乐霸 累己茄 霸矫拱446','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/01/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (447,'捞驱柳447','java004$','test447@test.com','己角洒 累己茄 霸矫拱447','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/01/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (448,'冠驱柳448','java009$','apple448@test.com','弥急阑 促秦 累己茄 霸矫拱448','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/01/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (449,'弥驱柳449','java002$','morning449@test.com','犁固乐霸 累己茄 霸矫拱449','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/01/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (450,'辫驱柳450','java006$','apple450@test.com','凯缴洒 累己茄 霸矫拱450','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/01/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (451,'弥驱柳451','java002$','morning451@test.com','犁固乐霸 累己茄 霸矫拱451','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (452,'弥驱柳452','java002$','apple452@test.com','犁固乐霸 累己茄 霸矫拱452','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (453,'捞驱柳453','java004$','test453@test.com','己角洒 累己茄 霸矫拱453','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/02/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (454,'弥驱柳454','java002$','apple454@test.com','犁固乐霸 累己茄 霸矫拱454','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (455,'辫驱柳455','java006$','morning455@test.com','凯缴洒 累己茄 霸矫拱455','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/02/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (456,'捞驱柳456','java004$','apple456@test.com','己角洒 累己茄 霸矫拱456','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/02/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (457,'弥驱柳457','java002$','morning457@test.com','犁固乐霸 累己茄 霸矫拱457','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (458,'弥驱柳458','java002$','apple458@test.com','犁固乐霸 累己茄 霸矫拱458','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (459,'捞驱柳459','java004$','test459@test.com','己角洒 累己茄 霸矫拱459','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/02/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (460,'辫驱柳460','java006$','apple460@test.com','凯缴洒 累己茄 霸矫拱460','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/02/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (461,'弥驱柳461','java002$','morning461@test.com','犁固乐霸 累己茄 霸矫拱461','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (462,'捞驱柳462','java004$','apple462@test.com','己角洒 累己茄 霸矫拱462','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/02/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (463,'弥驱柳463','java002$','morning463@test.com','犁固乐霸 累己茄 霸矫拱463','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (464,'弥驱柳464','java002$','apple464@test.com','犁固乐霸 累己茄 霸矫拱464','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (465,'辫驱柳465','java006$','test465@test.com','凯缴洒 累己茄 霸矫拱465','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/02/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (466,'弥驱柳466','java002$','apple466@test.com','犁固乐霸 累己茄 霸矫拱466','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (467,'弥驱柳467','java002$','morning467@test.com','犁固乐霸 累己茄 霸矫拱467','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (468,'捞驱柳468','java004$','apple468@test.com','己角洒 累己茄 霸矫拱468','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/02/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (469,'冠驱柳469','java009$','morning469@test.com','弥急阑 促秦 累己茄 霸矫拱469','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/02/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (470,'辫驱柳470','java006$','apple470@test.com','凯缴洒 累己茄 霸矫拱470','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/02/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (471,'捞驱柳471','java004$','test471@test.com','己角洒 累己茄 霸矫拱471','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/02/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (472,'弥驱柳472','java002$','apple472@test.com','犁固乐霸 累己茄 霸矫拱472','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (473,'弥驱柳473','java002$','morning473@test.com','犁固乐霸 累己茄 霸矫拱473','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (474,'捞驱柳474','java004$','apple474@test.com','己角洒 累己茄 霸矫拱474','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/02/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (475,'辫驱柳475','java006$','morning475@test.com','凯缴洒 累己茄 霸矫拱475','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/02/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (476,'冠驱柳476','java009$','apple476@test.com','弥急阑 促秦 累己茄 霸矫拱476','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/02/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (477,'捞驱柳477','java004$','test477@test.com','己角洒 累己茄 霸矫拱477','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/02/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (478,'弥驱柳478','java002$','apple478@test.com','犁固乐霸 累己茄 霸矫拱478','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/02/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (479,'弥驱柳479','java002$','morning479@test.com','犁固乐霸 累己茄 霸矫拱479','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/02/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (480,'辫驱柳480','java006$','apple480@test.com','凯缴洒 累己茄 霸矫拱480','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/03/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (481,'弥驱柳481','java002$','morning481@test.com','犁固乐霸 累己茄 霸矫拱481','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (482,'弥驱柳482','java002$','apple482@test.com','犁固乐霸 累己茄 霸矫拱482','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (483,'捞驱柳483','java004$','test483@test.com','己角洒 累己茄 霸矫拱483','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/03/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (484,'弥驱柳484','java002$','apple484@test.com','犁固乐霸 累己茄 霸矫拱484','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (485,'辫驱柳485','java006$','morning485@test.com','凯缴洒 累己茄 霸矫拱485','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/03/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (486,'捞驱柳486','java004$','apple486@test.com','己角洒 累己茄 霸矫拱486','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/03/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (487,'弥驱柳487','java002$','morning487@test.com','犁固乐霸 累己茄 霸矫拱487','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (488,'弥驱柳488','java002$','apple488@test.com','犁固乐霸 累己茄 霸矫拱488','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (489,'捞驱柳489','java004$','test489@test.com','己角洒 累己茄 霸矫拱489','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/03/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (490,'辫驱柳490','java006$','apple490@test.com','凯缴洒 累己茄 霸矫拱490','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/03/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (491,'弥驱柳491','java002$','morning491@test.com','犁固乐霸 累己茄 霸矫拱491','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (492,'捞驱柳492','java004$','apple492@test.com','己角洒 累己茄 霸矫拱492','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/03/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (493,'弥驱柳493','java002$','morning493@test.com','犁固乐霸 累己茄 霸矫拱493','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (494,'弥驱柳494','java002$','apple494@test.com','犁固乐霸 累己茄 霸矫拱494','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (495,'辫驱柳495','java006$','test495@test.com','凯缴洒 累己茄 霸矫拱495','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/03/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (496,'弥驱柳496','java002$','apple496@test.com','犁固乐霸 累己茄 霸矫拱496','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (497,'冠驱柳497','java009$','morning497@test.com','弥急阑 促秦 累己茄 霸矫拱497','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/03/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (498,'捞驱柳498','java004$','apple498@test.com','己角洒 累己茄 霸矫拱498','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/03/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (499,'弥驱柳499','java002$','morning499@test.com','犁固乐霸 累己茄 霸矫拱499','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (500,'辫驱柳500','java006$','apple500@test.com','凯缴洒 累己茄 霸矫拱500','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/03/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (501,'捞驱柳501','java004$','test501@test.com','己角洒 累己茄 霸矫拱501','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/03/22','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (502,'弥驱柳502','java002$','apple502@test.com','犁固乐霸 累己茄 霸矫拱502','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (503,'弥驱柳503','java002$','morning503@test.com','犁固乐霸 累己茄 霸矫拱503','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (504,'捞驱柳504','java004$','apple504@test.com','己角洒 累己茄 霸矫拱504','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/03/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (505,'辫驱柳505','java006$','morning505@test.com','凯缴洒 累己茄 霸矫拱505','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/03/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (506,'弥驱柳506','java002$','apple506@test.com','犁固乐霸 累己茄 霸矫拱506','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (507,'捞驱柳507','java004$','test507@test.com','己角洒 累己茄 霸矫拱507','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/03/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (508,'弥驱柳508','java002$','apple508@test.com','犁固乐霸 累己茄 霸矫拱508','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/03/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (509,'弥驱柳509','java002$','morning509@test.com','犁固乐霸 累己茄 霸矫拱509','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/03/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (510,'辫驱柳510','java006$','apple510@test.com','凯缴洒 累己茄 霸矫拱510','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/03/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (511,'冠驱柳511','java009$','morning511@test.com','弥急阑 促秦 累己茄 霸矫拱511','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/04/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (512,'弥驱柳512','java002$','apple512@test.com','犁固乐霸 累己茄 霸矫拱512','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (513,'捞驱柳513','java004$','test513@test.com','己角洒 累己茄 霸矫拱513','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/04/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (514,'弥驱柳514','java002$','apple514@test.com','犁固乐霸 累己茄 霸矫拱514','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (515,'辫驱柳515','java006$','morning515@test.com','凯缴洒 累己茄 霸矫拱515','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/04/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (516,'捞驱柳516','java004$','apple516@test.com','己角洒 累己茄 霸矫拱516','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/04/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (517,'弥驱柳517','java002$','morning517@test.com','犁固乐霸 累己茄 霸矫拱517','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (518,'冠驱柳518','java009$','apple518@test.com','弥急阑 促秦 累己茄 霸矫拱518','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/04/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (519,'捞驱柳519','java004$','test519@test.com','己角洒 累己茄 霸矫拱519','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/04/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (520,'辫驱柳520','java006$','apple520@test.com','凯缴洒 累己茄 霸矫拱520','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/04/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (521,'弥驱柳521','java002$','morning521@test.com','犁固乐霸 累己茄 霸矫拱521','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (522,'捞驱柳522','java004$','apple522@test.com','己角洒 累己茄 霸矫拱522','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/04/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (523,'弥驱柳523','java002$','morning523@test.com','犁固乐霸 累己茄 霸矫拱523','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (524,'弥驱柳524','java002$','apple524@test.com','犁固乐霸 累己茄 霸矫拱524','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (525,'辫驱柳525','java006$','test525@test.com','凯缴洒 累己茄 霸矫拱525','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/04/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (526,'弥驱柳526','java002$','apple526@test.com','犁固乐霸 累己茄 霸矫拱526','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (527,'弥驱柳527','java002$','morning527@test.com','犁固乐霸 累己茄 霸矫拱527','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (528,'捞驱柳528','java004$','apple528@test.com','己角洒 累己茄 霸矫拱528','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/04/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (529,'弥驱柳529','java002$','morning529@test.com','犁固乐霸 累己茄 霸矫拱529','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (530,'辫驱柳530','java006$','apple530@test.com','凯缴洒 累己茄 霸矫拱530','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/04/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (531,'捞驱柳531','java004$','test531@test.com','己角洒 累己茄 霸矫拱531','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/04/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (532,'冠驱柳532','java009$','apple532@test.com','弥急阑 促秦 累己茄 霸矫拱532','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/04/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (533,'弥驱柳533','java002$','morning533@test.com','犁固乐霸 累己茄 霸矫拱533','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/04/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (534,'捞驱柳534','java004$','apple534@test.com','己角洒 累己茄 霸矫拱534','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/04/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (535,'辫驱柳535','java006$','morning535@test.com','凯缴洒 累己茄 霸矫拱535','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/04/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (536,'弥驱柳536','java002$','apple536@test.com','犁固乐霸 累己茄 霸矫拱536','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (537,'捞驱柳537','java004$','test537@test.com','己角洒 累己茄 霸矫拱537','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/04/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (538,'弥驱柳538','java002$','apple538@test.com','犁固乐霸 累己茄 霸矫拱538','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/04/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (539,'冠驱柳539','java009$','morning539@test.com','弥急阑 促秦 累己茄 霸矫拱539','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/04/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (540,'辫驱柳540','java006$','apple540@test.com','凯缴洒 累己茄 霸矫拱540','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/04/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (541,'弥驱柳541','java002$','morning541@test.com','犁固乐霸 累己茄 霸矫拱541','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (542,'弥驱柳542','java002$','apple542@test.com','犁固乐霸 累己茄 霸矫拱542','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (543,'捞驱柳543','java004$','test543@test.com','己角洒 累己茄 霸矫拱543','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/05/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (544,'弥驱柳544','java002$','apple544@test.com','犁固乐霸 累己茄 霸矫拱544','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (545,'辫驱柳545','java006$','morning545@test.com','凯缴洒 累己茄 霸矫拱545','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/05/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (546,'捞驱柳546','java004$','apple546@test.com','己角洒 累己茄 霸矫拱546','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/05/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (547,'弥驱柳547','java002$','morning547@test.com','犁固乐霸 累己茄 霸矫拱547','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (548,'弥驱柳548','java002$','apple548@test.com','犁固乐霸 累己茄 霸矫拱548','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (549,'捞驱柳549','java004$','test549@test.com','己角洒 累己茄 霸矫拱549','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/05/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (550,'辫驱柳550','java006$','apple550@test.com','凯缴洒 累己茄 霸矫拱550','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/05/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (551,'弥驱柳551','java002$','morning551@test.com','犁固乐霸 累己茄 霸矫拱551','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/11','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (552,'捞驱柳552','java004$','apple552@test.com','己角洒 累己茄 霸矫拱552','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/05/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (553,'冠驱柳553','java009$','morning553@test.com','弥急阑 促秦 累己茄 霸矫拱553','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/05/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (554,'弥驱柳554','java002$','apple554@test.com','犁固乐霸 累己茄 霸矫拱554','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (555,'辫驱柳555','java006$','test555@test.com','凯缴洒 累己茄 霸矫拱555','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/05/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (556,'弥驱柳556','java002$','apple556@test.com','犁固乐霸 累己茄 霸矫拱556','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (557,'弥驱柳557','java002$','morning557@test.com','犁固乐霸 累己茄 霸矫拱557','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (558,'捞驱柳558','java004$','apple558@test.com','己角洒 累己茄 霸矫拱558','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/05/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (559,'弥驱柳559','java002$','morning559@test.com','犁固乐霸 累己茄 霸矫拱559','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (560,'辫驱柳560','java006$','apple560@test.com','凯缴洒 累己茄 霸矫拱560','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/05/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (561,'捞驱柳561','java004$','test561@test.com','己角洒 累己茄 霸矫拱561','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/05/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (562,'弥驱柳562','java002$','apple562@test.com','犁固乐霸 累己茄 霸矫拱562','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (563,'弥驱柳563','java002$','morning563@test.com','犁固乐霸 累己茄 霸矫拱563','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (564,'捞驱柳564','java004$','apple564@test.com','己角洒 累己茄 霸矫拱564','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/05/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (565,'辫驱柳565','java006$','morning565@test.com','凯缴洒 累己茄 霸矫拱565','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/05/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (566,'弥驱柳566','java002$','apple566@test.com','犁固乐霸 累己茄 霸矫拱566','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (567,'捞驱柳567','java004$','test567@test.com','己角洒 累己茄 霸矫拱567','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/05/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (568,'弥驱柳568','java002$','apple568@test.com','犁固乐霸 累己茄 霸矫拱568','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/05/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (569,'弥驱柳569','java002$','morning569@test.com','犁固乐霸 累己茄 霸矫拱569','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (570,'辫驱柳570','java006$','apple570@test.com','凯缴洒 累己茄 霸矫拱570','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/05/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (571,'弥驱柳571','java002$','morning571@test.com','犁固乐霸 累己茄 霸矫拱571','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/05/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (572,'弥驱柳572','java002$','apple572@test.com','犁固乐霸 累己茄 霸矫拱572','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (573,'捞驱柳573','java004$','test573@test.com','己角洒 累己茄 霸矫拱573','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/06/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (574,'冠驱柳574','java009$','apple574@test.com','弥急阑 促秦 累己茄 霸矫拱574','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/06/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (575,'辫驱柳575','java006$','morning575@test.com','凯缴洒 累己茄 霸矫拱575','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/06/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (576,'捞驱柳576','java004$','apple576@test.com','己角洒 累己茄 霸矫拱576','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/06/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (577,'弥驱柳577','java002$','morning577@test.com','犁固乐霸 累己茄 霸矫拱577','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (578,'弥驱柳578','java002$','apple578@test.com','犁固乐霸 累己茄 霸矫拱578','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (579,'捞驱柳579','java004$','test579@test.com','己角洒 累己茄 霸矫拱579','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/06/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (580,'辫驱柳580','java006$','apple580@test.com','凯缴洒 累己茄 霸矫拱580','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/06/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (581,'冠驱柳581','java009$','morning581@test.com','弥急阑 促秦 累己茄 霸矫拱581','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/06/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (583,'弥驱柳583','java002$','morning583@test.com','犁固乐霸 累己茄 霸矫拱583','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (584,'弥驱柳584','java002$','apple584@test.com','犁固乐霸 累己茄 霸矫拱584','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (585,'辫驱柳585','java006$','test585@test.com','凯缴洒 累己茄 霸矫拱585','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/06/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (586,'弥驱柳586','java002$','apple586@test.com','犁固乐霸 累己茄 霸矫拱586','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (587,'弥驱柳587','java002$','morning587@test.com','犁固乐霸 累己茄 霸矫拱587','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (588,'捞驱柳588','java004$','apple588@test.com','己角洒 累己茄 霸矫拱588','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/06/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (589,'弥驱柳589','java002$','morning589@test.com','犁固乐霸 累己茄 霸矫拱589','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (590,'辫驱柳590','java006$','apple590@test.com','凯缴洒 累己茄 霸矫拱590','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/06/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (591,'捞驱柳591','java004$','test591@test.com','己角洒 累己茄 霸矫拱591','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/06/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (592,'弥驱柳592','java002$','apple592@test.com','犁固乐霸 累己茄 霸矫拱592','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (593,'弥驱柳593','java002$','morning593@test.com','犁固乐霸 累己茄 霸矫拱593','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (594,'捞驱柳594','java004$','apple594@test.com','己角洒 累己茄 霸矫拱594','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/06/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (595,'辫驱柳595','java006$','morning595@test.com','凯缴洒 累己茄 霸矫拱595','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/06/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (596,'弥驱柳596','java002$','apple596@test.com','犁固乐霸 累己茄 霸矫拱596','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (597,'捞驱柳597','java004$','test597@test.com','己角洒 累己茄 霸矫拱597','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/06/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (598,'弥驱柳598','java002$','apple598@test.com','犁固乐霸 累己茄 霸矫拱598','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/06/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (599,'弥驱柳599','java002$','morning599@test.com','犁固乐霸 累己茄 霸矫拱599','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (600,'辫驱柳600','java006$','apple600@test.com','凯缴洒 累己茄 霸矫拱600','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/06/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (601,'弥驱柳601','java002$','morning601@test.com','犁固乐霸 累己茄 霸矫拱601','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/06/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (602,'冠驱柳602','java009$','apple602@test.com','弥急阑 促秦 累己茄 霸矫拱602','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/07/01','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (603,'捞驱柳603','java004$','test603@test.com','己角洒 累己茄 霸矫拱603','姆俏 包访 郴侩拱 累己','211.238.142.154',33,to_date('12/07/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (604,'弥驱柳604','java002$','apple604@test.com','犁固乐霸 累己茄 霸矫拱604','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (605,'辫驱柳605','java006$','morning605@test.com','凯缴洒 累己茄 霸矫拱605','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/07/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (606,'捞驱柳606','java004$','apple606@test.com','己角洒 累己茄 霸矫拱606','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/07/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (607,'弥驱柳607','java002$','morning607@test.com','犁固乐霸 累己茄 霸矫拱607','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (608,'弥驱柳608','java002$','apple608@test.com','犁固乐霸 累己茄 霸矫拱608','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (609,'捞驱柳609','java004$','test609@test.com','己角洒 累己茄 霸矫拱609','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/07/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (610,'辫驱柳610','java006$','apple610@test.com','凯缴洒 累己茄 霸矫拱610','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/07/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (611,'弥驱柳611','java002$','morning611@test.com','犁固乐霸 累己茄 霸矫拱611','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (612,'捞驱柳612','java004$','apple612@test.com','己角洒 累己茄 霸矫拱612','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/07/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (613,'弥驱柳613','java002$','morning613@test.com','犁固乐霸 累己茄 霸矫拱613','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (614,'弥驱柳614','java002$','apple614@test.com','犁固乐霸 累己茄 霸矫拱614','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (615,'辫驱柳615','java006$','test615@test.com','凯缴洒 累己茄 霸矫拱615','崔府扁 包访 郴侩拱 累己','211.238.142.164',32,to_date('12/07/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (616,'冠驱柳616','java009$','apple616@test.com','弥急阑 促秦 累己茄 霸矫拱616','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/07/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (617,'弥驱柳617','java002$','morning617@test.com','犁固乐霸 累己茄 霸矫拱617','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (618,'捞驱柳618','java004$','apple618@test.com','己角洒 累己茄 霸矫拱618','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/07/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (619,'弥驱柳619','java002$','morning619@test.com','犁固乐霸 累己茄 霸矫拱619','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (620,'辫驱柳620','java006$','apple620@test.com','凯缴洒 累己茄 霸矫拱620','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/07/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (621,'捞驱柳621','java004$','test621@test.com','己角洒 累己茄 霸矫拱621','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/07/20','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (622,'弥驱柳622','java002$','apple622@test.com','犁固乐霸 累己茄 霸矫拱622','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (623,'冠驱柳623','java009$','morning623@test.com','弥急阑 促秦 累己茄 霸矫拱623','家葛烙 包访 郴侩拱 累己','211.238.142.151',73,to_date('12/07/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (624,'捞驱柳624','java004$','apple624@test.com','己角洒 累己茄 霸矫拱624','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/07/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (625,'辫驱柳625','java006$','morning625@test.com','凯缴洒 累己茄 霸矫拱625','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/07/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (626,'弥驱柳626','java002$','apple626@test.com','犁固乐霸 累己茄 霸矫拱626','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (627,'捞驱柳627','java004$','test627@test.com','己角洒 累己茄 霸矫拱627','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/07/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (628,'弥驱柳628','java002$','apple628@test.com','犁固乐霸 累己茄 霸矫拱628','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (629,'弥驱柳629','java002$','morning629@test.com','犁固乐霸 累己茄 霸矫拱629','坊磐墨 包访 郴侩拱 累己','211.238.142.167',74,to_date('12/07/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (630,'辫驱柳630','java006$','apple630@test.com','凯缴洒 累己茄 霸矫拱630','崔府扁 包访 郴侩拱 累己','211.238.142.164',29,to_date('12/07/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (631,'弥驱柳631','java002$','morning631@test.com','犁固乐霸 累己茄 霸矫拱631','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/07/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (632,'弥驱柳632','java002$','apple632@test.com','犁固乐霸 累己茄 霸矫拱632','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/07/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (633,'捞驱柳633','java006$','test633@test.com','酒柳楼 柳楼 付瘤阜 肚促矫 荐沥茄 霸矫拱633','姆俏 包访 郴侩拱 累己

荐沥荐沥荐沥
荐沥
付瘤阜 荐沥
柳楼付瘤阜
酒柳楼 柳楼 ','211.238.142.154',48,to_date('12/08/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (634,'弥驱柳634','java002$','apple634@test.com','犁固乐霸 累己茄 霸矫拱634','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/08/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (635,'辫驱柳635','java006$','morning635@test.com','凯缴洒 累己茄 霸矫拱635','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/08/03','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (636,'捞驱柳636','java004$','apple636@test.com','己角洒 累己茄 霸矫拱636','姆俏 包访 郴侩拱 累己','211.238.142.154',28,to_date('12/08/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (637,'冠驱柳637','java009$','morning637@test.com','弥急阑 促秦 累己茄 霸矫拱637','家葛烙 包访 郴侩拱 累己','211.238.142.151',72,to_date('12/08/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (638,'弥驱柳638','java002$','apple638@test.com','荐沥茄 犁固乐霸 累己茄 霸矫拱638','坊磐墨 包访 郴侩拱 累己','211.238.142.167',31,to_date('12/08/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (639,'捞驱柳639','java004$','test639@test.com','己角洒 累己茄 霸矫拱639','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/08/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (640,'辫驱柳640','java006$','apple640@test.com','荐沥 荐沥茄 凯缴洒 累己茄 霸矫拱640','崔府扁 包访 郴侩拱 累己
荐沥茄 ~!
荐沥','211.238.142.164',29,to_date('12/08/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (641,'弥驱柳641','java002$','morning641@test.com','犁固乐霸 累己茄 霸矫拱641','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (642,'捞驱柳642','java004$','apple642@test.com','己角洒 累己茄 霸矫拱642','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/08/10','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (643,'弥驱柳643','java002$','morning643@test.com','荐沥茄 犁固乐霸 累己茄 霸矫拱643','坊磐墨 包访 郴侩拱 累己
荐沥沁绢夸','211.238.142.167',75,to_date('12/08/11','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (644,'冠驱柳644','java009$','apple644@test.com','弥急阑 促秦 累己茄 霸矫拱644','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/08/12','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (645,'辫驱柳645','java006$','test645@test.com','凯缴洒 累己茄 霸矫拱645','崔府扁 包访 郴侩拱 累己','211.238.142.164',33,to_date('12/08/13','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (646,'弥驱柳646','java002$','apple646@test.com','犁固乐霸 累己茄 霸矫拱646','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/08/14','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (647,'弥驱柳647','java002$','morning647@test.com','犁固乐霸 累己茄 霸矫拱647','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/15','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (648,'捞驱柳648','java004$','apple648@test.com','己角洒 累己茄 霸矫拱648','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/08/16','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (649,'弥驱柳649','java002$','morning649@test.com','犁固乐霸 累己茄 霸矫拱649','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/17','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (650,'辫驱柳650','java006$','apple650@test.com','凯缴洒 累己茄 霸矫拱650','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/08/18','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (651,'捞驱柳651','java004$','test651@test.com','己角洒 累己茄 霸矫拱651','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/08/19','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (652,'弥驱柳652','java002$','apple652@test.com','犁固乐霸 累己茄 霸矫拱652','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/08/20','RR/MM/DD'));
commit;
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (653,'弥驱柳653','java002$','morning653@test.com','犁固乐霸 累己茄 霸矫拱653','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/21','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (654,'捞驱柳654','java004$','apple654@test.com','己角洒 累己茄 霸矫拱654','姆俏 包访 郴侩拱 累己','211.238.142.154',27,to_date('12/08/22','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (655,'辫驱柳655','java006$','morning655@test.com','凯缴洒 累己茄 霸矫拱655','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/08/23','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (656,'弥驱柳656','java002$','apple656@test.com','犁固乐霸 累己茄 霸矫拱656','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/08/24','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (657,'捞驱柳657','java004$','test657@test.com','己角洒 累己茄 霸矫拱657','姆俏 包访 郴侩拱 累己','211.238.142.154',32,to_date('12/08/25','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (658,'冠驱柳658','java009$','apple658@test.com','弥急阑 促秦 累己茄 霸矫拱658','家葛烙 包访 郴侩拱 累己','211.238.142.151',27,to_date('12/08/26','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (659,'弥驱柳659','java002$','morning659@test.com','犁固乐霸 累己茄 霸矫拱659','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/27','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (660,'辫驱柳660','java006$','apple660@test.com','凯缴洒 累己茄 霸矫拱660','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/08/28','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (661,'弥驱柳661','java002$','morning661@test.com','犁固乐霸 累己茄 霸矫拱661','坊磐墨 包访 郴侩拱 累己','211.238.142.167',72,to_date('12/08/29','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (662,'弥驱柳662','java002$','apple662@test.com','犁固乐霸 累己茄 霸矫拱662','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/08/30','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (663,'捞驱柳663','java004$','test663@test.com','己角洒 累己茄 霸矫拱663','姆俏 包访 郴侩拱 累己','211.238.142.154',33,to_date('12/08/31','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (664,'弥驱柳664','java002$','apple664@test.com','犁固乐霸 累己茄 霸矫拱664','坊磐墨 包访 郴侩拱 累己','211.238.142.167',35,to_date('12/09/01','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (665,'辫驱柳665','java006$','morning665@test.com','凯缴洒 累己茄 霸矫拱665','崔府扁 包访 郴侩拱 累己','211.238.142.164',72,to_date('12/09/02','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (667,'弥驱柳667','java002$','morning667@test.com','犁固乐霸 累己茄 霸矫拱667','坊磐墨 包访 郴侩拱 累己','211.238.142.167',73,to_date('12/09/04','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (668,'弥驱柳668','java002$','apple668@test.com','犁固乐霸 累己茄 霸矫拱668','坊磐墨 包访 郴侩拱 累己','211.238.142.167',27,to_date('12/09/05','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (669,'捞驱柳669','java004$','test669@test.com','己角洒 累己茄 霸矫拱669','姆俏 包访 郴侩拱 累己','211.238.142.154',33,to_date('12/09/06','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (670,'辫驱柳670','java006$','apple670@test.com','凯缴洒 累己茄 霸矫拱670','崔府扁 包访 郴侩拱 累己','211.238.142.164',27,to_date('12/09/07','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (671,'弥驱柳671','java002$','morning671@test.com','犁固乐霸 累己茄 霸矫拱671','坊磐墨 包访 郴侩拱 累己','211.238.142.167',75,to_date('12/09/08','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (672,'捞驱柳672','java004$','apple672@test.com','己角洒 累己茄 霸矫拱672','姆俏 包访 郴侩拱 累己','211.238.142.154',30,to_date('12/09/09','RR/MM/DD'));
Insert into SCOTT.TBL_BOARD (NUM,NAME,PWD,EMAIL,SUBJECT,CONTENT,IPADDR,HITCOUNT,CREATED) values (673,'辫柳锐','1234','kjh@test.com','臂棵府扁 抛胶飘','霸矫拱 累己 包访茄
抛胶飘甫 柳青窍绊 乐嚼聪促.
俺青 咯何 犬牢档 窃膊 贸府钦聪促.
累己茄 IP Address 档 眉农钦聪促.','0:0:0:0:0:0:0:1',9,to_date('21/11/08','RR/MM/DD'));
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
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (3,'公悼捞','010-9999-9999');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (11,'沥瓤柳','010-3434-5656');
Insert into SCOTT.TBL_MEMBERLIST (MID,NAME,TELEPHONE) values (5,'瓤瘤聪','010-1111-1111');
commit;
REM INSERTING into SCOTT.TBL_STUDENT
SET DEFINE OFF;
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (1,'沥瓤柳','010-1111-1111');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (2,'沥富肺','010-2222-2222');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (3,'痢缴','010-3333-3333');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (4,'捞吝龋','010-4444-4444');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (5,'颊裹籍','010-5555-5555');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (6,'捞蛮龋','010-6666-6666');
Insert into SCOTT.TBL_STUDENT (SID,NAME,TEL) values (7,'瓤瘤聪','010-7777-7777');
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
