SELECT USER
FROM DUAL;
--==>> SCOTT

DROP TABLE REGION;

--�� �ǽ� ���̺� ����(���� : REGION)
CREATE TABLE REGION
( REGIONID      NUMBER          -- ���� ���̵�   -- PK
, REGIONNAME    VARCHAR2(30)    -- ���� ��
, CONSTRAINT REGION_ID_PK PRIMARY KEY(REGIONID)
);
--==>> Table REGION��(��) �����Ǿ����ϴ�.

--�� ������ ���� (���� : REGIONSEQ)
CREATE SEQUENCE REGIONSEQ
NOCACHE;
--==>>Sequence REGIONSEQ��(��) �����Ǿ����ϴ�.


--�� ������ �Է�(���� ������ �Է�)
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL,'����');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL,'���');
INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(REGIONSEQ.NEXTVAL,'��û');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�. *3

SELECT REGIONID, REGIONNAME
FROM REGION;
--> �� �� ����
SELECT REGIONID, REGIONNAME FROM REGION
;
--==>>
/*
1	����
2	���
3	��û
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �ǽ� ���̺� ����(���� : POSITION)
CREATE TABLE POSITION
( POSITIONID        NUMBER          -- ���� ���̵�   --PK
, POSITIONNAME      VARCHAR2(30)    -- ������
, MINBASICPAY       NUMBER          -- �ּ� �⺻��
, CONSTRAINT POSITION_ID_PK PRIMARY KEY(POSITIONID)
);
--==>> Table POSITION��(��) �����Ǿ����ϴ�.

-- �� ������ ���� (���� : POSITIONSEQ)
CREATE SEQUENCE POSITIONSEQ
NOCACHE;
--==>> Sequence POSITIONSEQ��(��) �����Ǿ����ϴ�.


--�� ������ �Է�(���� ������ �Է�)
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '���', 1000000);     -- �鸸
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '�븮', 2000000);     -- �̹鸸
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '����', 3000000);     -- ��鸸
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY)
VALUES(POSITIONSEQ.NEXTVAL, '��', 4000000);     -- ��鸸
--==>> 1 �� ��(��) ���ԵǾ����ϴ�. *3

SELECT POSITIONID, POSITIONNAME, MINBASICPAY
FROM POSITION;
--> �� �� ����
SELECT POSITIONID, POSITIONNAME, MINBASICPAY FROM POSITION
;
--==>>
/*
1	���	1000000
2	�븮	2000000
3	����	3000000
4	��	4000000
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �ǽ� ���̺� ����(�μ� : DEPARTMENT)
CREATE TABLE DEPARTMENT
( DEPARTMENTID      NUMBER
, DEPARTMENTNAME    VARCHAR2(30)
, CONSTRAINT DEPARTMENT_ID_PK PRIMARY KEY(DEPARTMENTID)
);
--==>> Table DEPARTMENT��(��) �����Ǿ����ϴ�.


--�� ������ ���� (�μ� : DEPARTMENTSEQ)
CREATE SEQUENCE DEPARTMENTSEQ
NOCACHE;
--==>> Sequence DEPARTMENTSEQ��(��) �����Ǿ����ϴ�.

--�� ������ �Է�(�μ� ������ �Է�)
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME)
VALUES (DEPARTMENTSEQ.NEXTVAL, '���ߺ�');
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME)
VALUES (DEPARTMENTSEQ.NEXTVAL, '��ȹ��');
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME)
VALUES (DEPARTMENTSEQ.NEXTVAL, '������');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�. *3

--�� �μ� ����Ʈ Ȯ��
SELECT DEPARTMENTID, DEPARTMENTNAME
FROM DEPARTMENT;
--> �� �� ����
SELECT DEPARTMENTID, DEPARTMENTNAME FROM DEPARTMENT
;
--==>>
/*
1	���ߺ�
2	��ȹ��
3	������
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �ǽ� ���̺� ����(���� : EMPLOYEE)
-- �����ȣ, �����, �ֹι�ȣ, �������, ������, ��ȭ��ȣ, �μ�, ����, ����, �⺻��, ����
CREATE TABLE EMPLOYEE
( EMPLOYEEID    NUMBER              -- �����ȣ     -- PK
, NAME          VARCHAR2(30)        -- ��� ��
, SSN           VARCHAR2(20)        -- �ֹι�ȣ     -- ��ȣȭ ��� ����(TYPE CHECK~!!!)
, BIRTHDAY      DATE                -- �������
, LUNAR         NUMBER(1) DEFAULT 0 -- ������       -- ���0, ����1
, TELEPHONE     VARCHAR2(40)        -- ��ȭ��ȣ
, DEPARTMENTID  NUMBER              -- �μ� ���̵�
, POSITIONID    NUMBER              -- ���� ���̵�
, REGIONID      NUMBER              -- ���� ���̵�
, BASICPAY      NUMBER              -- �⺻��
, EXTRAPAY      NUMBER              -- ����
, CONSTRAINT EMPLOYEE_ID_PK PRIMARY KEY(EMPLOYEEID)
, CONSTRAINT EMPLOYEE_DEPARTMENTID_FK FOREIGN KEY(DEPARTMENTID)
                REFERENCES DEPARTMENT(DEPARTMENTID)
, CONSTRAINT EMPLOYEE_POSITIONID_FK FOREIGN KEY(POSITIONID)
                REFERENCES POSITION(POSITIONID)
, CONSTRAINT EMPLOYEE_REGIONID_FK FOREIGN KEY(REGIONID)
                REFERENCES REGION(REGIONID)
, CONSTRAINT EMPLOYEE_LUNAR_CK CHECK(LUNAR=0 OR LUNAR=1)
);
--==>> Table EMPLOYEE��(��) �����Ǿ����ϴ�.

--�� ������ ����(���� : EMPLOYEESEQ)
CREATE SEQUENCE EMPLOYEESEQ
NOCACHE;
--==>> Sequence EMPLOYEESEQ��(��) �����Ǿ����ϴ�.


--�� ������ �Է�(���� ������ �Է�)
INSERT INTO EMPLOYEE(EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID, BASICPAY, EXTRAPAY)
VALUES(EMPLOYEESEQ.NEXTVAL, '������',CRYPTPACK.ENCRYPT('9903202234567', '9903202234567')
     , TO_DATE('1999-03-20','YYYY-MM-DD'),0,'010-7389-9032',1,1,1
     , 1500000,1500000); -- ����ʸ�, ����ʸ�)
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� ���� ���� ����
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
--==>> Session��(��) ����Ǿ����ϴ�.

--�� Ȯ��
SELECT *
FROM EMPLOYEE;
--==>>
/*
1	������	iu?M?%?	1999-03-20	0	010-7389-9032	1	1	1	1500000	1500000
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.

DESC EMPLOYEE;

--�� ���� ���� ��ȸ ������ ����
SELECT E.EMPLOYEEID
     , E.NAME
     , E.SSN
     , TO_CHAR(E.BIRTHDAY,'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR
     , DECODE(E.LUNAR,0,'���',1,'����') AS LUNARNAME
     , E.TELEPHONE
     , E.DEPARTMENTID
     , (SELECT DEPARTMENTNAME
        FROM DEPARTMENT
        WHERE DEPARTMENTID = E.DEPARTMENTID) AS DEPARTMENTNAME
     , E.POSITIONID
     , (SELECT POSITIONNAME
        FROM POSITION
        WHERE POSITIONID = E.POSITIONID) AS POSITIONNAME
     , E.REGIONID
     , (SELECT REGIONNAME
        FROM REGION
        WHERE REGIONID = E.REGIONID) AS REGIONNAME
     , E.BASICPAY
     , E.EXTRAPAY
     , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY,0) AS PAY
FROM EMPLOYEE E
ORDER BY E.EMPLOYEEID;


--�� �� ����(EMPLOYEEVIEW)
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
SELECT E.EMPLOYEEID
     , E.NAME
     , E.SSN
     , TO_CHAR(E.BIRTHDAY,'YYYY-MM-DD') AS BIRTHDAY
     , E.LUNAR
     , DECODE(E.LUNAR,0,'���',1,'����') AS LUNARNAME
     , E.TELEPHONE
     , E.DEPARTMENTID
     , (SELECT DEPARTMENTNAME
        FROM DEPARTMENT
        WHERE DEPARTMENTID = E.DEPARTMENTID) AS DEPARTMENTNAME
     , E.POSITIONID
     , (SELECT POSITIONNAME
        FROM POSITION
        WHERE POSITIONID = E.POSITIONID) AS POSITIONNAME
     , E.REGIONID
     , (SELECT REGIONNAME
        FROM REGION
        WHERE REGIONID = E.REGIONID) AS REGIONNAME
     , E.BASICPAY
     , E.EXTRAPAY
     , NVL(E.BASICPAY,0) + NVL(E.EXTRAPAY,0) AS PAY
FROM EMPLOYEE E
ORDER BY E.EMPLOYEEID;
--==>> View EMPLOYEEVIEW��(��) �����Ǿ����ϴ�.


--�� ���� ������ ��ȸ ������ ����(���� ������ ���� ���ɿ��� Ȯ��)
SELECT R.REGIONID, R.REGIONNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE REGIONID=R.REGIONID) AS DELCHECK
FROM REGION R;
--==>>
/*
  REGIONID REGIONNAME                       DELCHECK
---------- ------------------------------ ----------
         1 ����                                    1
         2 ���                                    0
         3 ��û                                    0
*/
--> ������� ���� �����ʹ� ������ �Ұ����� ��Ȳ�̸�,
--  ����⡻, ����õ���� ���� �����ʹ� ������ ������ ��Ȳ����
--  �Ǻ��� �� �ִ� ������


--�� �� ����(REGIONVIEW)
CREATE OR REPLACE VIEW REGIONVIEW
AS
SELECT R.REGIONID, R.REGIONNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE REGIONID=R.REGIONID) AS DELCHECK
FROM REGION R;
--==>> View REGIONVIEW��(��) �����Ǿ����ϴ�.


--�� ���� ������ ��ȸ ������ ����(���� ������ ���� ���� ���� Ȯ��)
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE POSITIONID=P.POSITIONID) AS DELCHECK
FROM POSITION P;
--==>>
/*
POSITIONID POSITIONNAME                   MINBASICPAY   DELCHECK
---------- ------------------------------ ----------- ----------
         1 ���                               1000000          1
         2 �븮                               2000000          0
         3 ����                               3000000          0
         4 ��                               4000000          0
*/

-- �� �� ����(POSITIONVIEW)
CREATE OR REPLACE VIEW POSITIONVIEW
AS
SELECT P.POSITIONID, P.POSITIONNAME, P.MINBASICPAY
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE POSITIONID=P.POSITIONID) AS DELCHECK
FROM POSITION P;
--==>> View POSITIONVIEW��(��) �����Ǿ����ϴ�.



--�� �μ� ������ ��ȸ ������ ����(�μ� ������ ���� ���� ���� Ȯ��)
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE DEPARTMENTID=D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
--==>>
/*
1	���ߺ�	1
2	��ȹ��	0
3	������	0
*/


-- �� �� ����(DEPARTMENTVIEW)
CREATE OR REPLACE VIEW DEPARTMENTVIEW
AS
SELECT D.DEPARTMENTID, D.DEPARTMENTNAME
     , (SELECT COUNT(*)
        FROM EMPLOYEE
        WHERE DEPARTMENTID=D.DEPARTMENTID) AS DELCHECK
FROM DEPARTMENT D;
--==>> View POSITIONVIEW��(��) �����Ǿ����ϴ�.


--�� ������ �ּ� �⺻�� �˻� ������ ����
SELECT MINBASICPAY
FROM POSITION
WHERE POSITIONID=1; -- ���
--> �� �� ����
SELECT MINBASICPAY FROM POSITION WHERE POSITIONID=1
;
--==>> 1000000

--------------------------------------------------------------------------------

--�� �α���, �α׾ƿ� ���� �߰�

-- ID�� PW �÷� �����͸� ��� �ִ� ���̺��� ������ �������� �ʴ� ��Ȳ�̴�.
-- �̿� �����Ͽ�  EMPLOYEEID(������̵�) �� SSN(�ֹι�ȣ) ���ڸ�
-- 7�ڸ� ���ڸ� �̿��� �� �ֵ��� �����Ѵ�.

--�� ���� ���̺� ���� ����
--��
-- EMPLOYEE(���� ���̺�)�� SSN(�ֹι�ȣ) �÷��� �и��Ѵ�.
-- SSN -------------> SSN1, SSN2
-- SSN1 �� �ֹι�ȣ �� 6�ڸ�
-- SSN2 �� �ֹι�ȣ �� 7�ڸ�  �� ��ȣȭ ����

--��
-- EMPLOYEE(���� ���̺�)�� GRADE(���) �÷��� �߰��Ѵ�.
-- GRADE �� ������0, �Ϲݻ��1

--�� �÷� ���� SSN �� SSN1, SSN2


-- �÷� �߰�
ALTER TABLE EMPLOYEE
ADD(SSN1 CHAR(6), SSN2 VARCHAR2(50));
--==>> Table EMPLOYEE��(��) ����Ǿ����ϴ�.


SELECT *
FROM EMPLOYEE;


-- '9903202234567'

UPDATE EMPLOYEE
SET SSN1 = SUBSTR( CRYPTPACK.DECRYPT(SSN,'9903202234567'),1,6)
  , SSN2 = CRYPTPACK.ENCRYPT(SUBSTR (CRYPTPACK.DECRYPT(SSN,'9903202234567'),7,7)
                           , SUBSTR (CRYPTPACK.DECRYPT(SSN,'9903202234567'),7,7) );
--==>>1 �� ��(��) ������Ʈ�Ǿ����ϴ�.


SELECT *
FROM EMPLOYEE;
--==>>
/*
EMPLOYEEID NAME      BIRTHDAY        LUNAR TELEPHONE        DEPARTMENTID POSITIONID   REGIONID   BASICPAY   EXTRAPAY SSN1   SSN2     GRADE
---------- -------- ---------- ---------- ---------------- ------------ ---------- ---------- ---------- ---------- ------ ---------- ----------
         1 ������    1999-03-20          0 010-7389-9032              1          1          1    1500000    1500000 990320 Y{?7?       1

*/


-- ���� �ֹι�ȣ �÷� SSN ����
ALTER TABLE EMPLOYEE
DROP COLUMN SSN;
--==>> Table EMPLOYEE��(��) ����Ǿ����ϴ�.


SELECT *
FROM EMPLOYEE;
--==>> 1	������	1999-03-20	0	010-7389-9032	1	1	1	1500000	1500000	990320	Y{?7?


-- �÷� �߰� �� GRADE �� �⺻���� 1(�Ϲ� ���)�� ����
--                       0�� �����ڷ� ����
ALTER TABLE EMPLOYEE
ADD GRADE NUMBER(1) DEFAULT 1;
--==>> Table EMPLOYEE��(��) ����Ǿ����ϴ�.

SELECT *
FROM EMPLOYEE;
--==>> 1	������	1999-03-20	0	010-7389-9032	1	1	1	1500000	1500000	990320	Y{?7?	1

-- ������ ����� �����ڷ� �Ӹ�
UPDATE EMPLOYEE
SET GRADE=0
WHERE EMPLOYEEID=1;
--==>> 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

SELECT *
FROM EMPLOYEE;

-- Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� ���̺��� ������ �����߱� ������
--   �̿� ������ ��(VIEW)�� ������ ���� �ۼ�(����)
--�� �� ����(EMPLOYEEVIEW) -- �÷��� ���� �� ��ȸ�÷� �߰�����
CREATE OR REPLACE VIEW EMPLOYEEVIEW
AS
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
ORDER BY E.EMPLOYEEID;
--==>> View EMPLOYEEVIEW��(��) �����Ǿ����ϴ�.

DESC EMPLOYEEVIEW;
--==>>
/*
�̸�             ��?       ����           
-------------- -------- ------------ 
EMPLOYEEID     NOT NULL NUMBER       
NAME                    VARCHAR2(30) 
SSN                     CHAR(6)      
BIRTHDAY                VARCHAR2(10) 
LUNAR                   NUMBER(1)    
LUNARNAME               VARCHAR2(6)  
TELEPHONE               VARCHAR2(40) 
DEPARTMENTID            NUMBER       
DEPARTMENTNAME          VARCHAR2(30) 
POSITIONID              NUMBER       
POSITIONNAME            VARCHAR2(30) 
REGIONID                NUMBER       
REGIONNAME              VARCHAR2(30) 
BASICPAY                NUMBER       
EXTRAPAY                NUMBER       
PAY                     NUMBER       
GRADE                   NUMBER(1)   
*/


--�� ���� ������ �Է� ������ ����(������ ����)
INSERT INTO EMPLOYEE( EMPLOYEEID, NAME, SSN1, SSN2, BIRTHDAY, LUNAR
                     , TELEPHONE, DEPARTMENTID, POSITIONID, REGIONID
                     , BASICPAY, EXTRAPAY)
VALUES( EMPLOYEESEQ.NEXTVAL, '������', '930830', CRYPTPACK.ENCRYPT('2234567','2234567')
      , TO_DATE('1993-08-30', 'YYYY-MM-DD'), 0, '010-2944-6341', 1, 1, 1
      , 1500000, 1500000); -- ����ʸ�, ����ʸ�
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.

SELECT *
FROM EMPLOYEE;
--==>>
/*
1	������	1999-03-20	0	010-7389-9032	1	1	1	1500000	1500000	990320	Y{?7?	0
2	������	1993-08-30	0	010-2944-6341	1	1	1	1500000	1500000	930830	Y{?7?	1
*/


SELECT *
FROM EMPLOYEEVIEW;
--==>>
/*
1	������	990320	1999-03-20	0	���	010-7389-9032	1	���ߺ�	1	���	1	����	1500000	1500000	3000000	0
2	������	930830	1993-08-30	0	���	010-2944-6341	1	���ߺ�	1	���	1	����	1500000	1500000	3000000	1
*/


--�� �Ϲ� ��� �α��� ������ ����(ID �� EMPLOYEEID, PW �� SSN2)
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID='ID���ڿ�'
  AND SSN2=(SELECT SSN2
            FROM EMPLOYEE
            WHERE EMPLOYEEID='ID���ڿ�');

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2=(SELECT SSN2
            FROM EMPLOYEE
            WHERE EMPLOYEEID=2);
--==>> ������

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2
            FROM EMPLOYEE
            WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('2234561','2234561');
--==>> ��ȸ��� ���� �� �α��� ����

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND (SELECT SSN2
            FROM EMPLOYEE
            WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('2234567','2234567');
--==>> ������ �� �α��� ����
--> �Ϲ� ��� �α��� ������ �� �� ����
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID=2   AND (SELECT SSN2 FROM EMPLOYEE WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('2234567','2234567')
;
--> ġȯ
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID='ID���ڿ�'   AND (SELECT SSN2 FROM EMPLOYEE WHERE EMPLOYEEID=2) = CRYPTPACK.ENCRYPT('PW���ڿ�','PW���ڿ�')
;


--�� ������ �α��� ������ ����(ID �� EMPLOYEEID, PW �� SSN2)
SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID='ID���ڿ�'
  AND SSN2=(SELECT SSN2
            FROM EMPLOYEE
            WHERE EMPLOYEEID='ID���ڿ�')
  AND GRADE=0;


SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=2
  AND SSN2=CRYPTPACK.ENCRYPT('2234567','2234567')
  AND GRADE=0;
--==>> ��ȸ ��� ���� �� �α��� ����

SELECT NAME
FROM EMPLOYEE
WHERE EMPLOYEEID=1
  AND SSN2=CRYPTPACK.ENCRYPT('2234567','2234567')
  AND GRADE=0;
--==>> ������ �� ������ �α��� ����
--> ������ �α��� ������ �� �� ����
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID=1 AND SSN2=CRYPTPACK.ENCRYPT('2234567','2234567') AND GRADE=0
;
--> ġȯ(ID PW ���� ���·�)
SELECT NAME FROM EMPLOYEE WHERE EMPLOYEEID='ID���ڿ�' AND SSN2=CRYPTPACK.ENCRYPT('PW���ڿ�','PW���ڿ�') AND GRADE=0
;


--�� ���� ������ ���� ������ ����
DELETE
FROM EMPLOYEE
WHERE EMPLOYEEID=2;
--> �� �� ����
DELETE FROM EMPLOYEE WHERE EMPLOYEEID=2
;
--==>> 1 �� ��(��) �����Ǿ����ϴ�.


-- �ѹ�
ROLLBACK;
--==>> �ѹ� �Ϸ�.

--�� ���� ������ ���� ������ ����
UPDATE EMPLOYEE
SET NAME='������'
  , BIRTHDAY=TO_DATE('2001-01-01','YYYY-MM-DD')
  , LUNAR=0
  , TELEPHONE='010-1111-2222'
  , DEPARTMENTID=2
  , POSITIONID=2
  , REGIONID=2
  , BASICPAY=2000000 -- �̹鸸
  , EXTRAPAY=2000000 
  , SSN1='010101'
  , SSN2=CRYPTPACK.ENCRYPT('4234567','4234567')
  , GRADE=1
WHERE EMPLOYEEID=1;
--> �� �� ����
UPDATE EMPLOYEE SET NAME='������' , BIRTHDAY=TO_DATE('2001-01-01','YYYY-MM-DD'), LUNAR=0, TELEPHONE='010-1111-2222', DEPARTMENTID=2, POSITIONID=2, REGIONID=2, BASICPAY=2000000, EXTRAPAY=2000000 , SSN1='010101', SSN2=CRYPTPACK.ENCRYPT('4234567','4234567'), GRADE=1 WHERE EMPLOYEEID=1
;
--==>> 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

-- �ѹ�
ROLLBACK;
--==>> �ѹ� �Ϸ�.


--�� �μ� ����Ʈ ��ȸ ������ ����(DEPARTMENTVIEW)
SELECT DEPARTMENTID, DEPARTMENTNAME, DELCHECK
FROM DEPARTMENTVIEW
ORDER BY DEPARTMENTID;
--==>> 
/*
1	���ߺ�	1
2	��ȹ��	0
3	������	0
*/

--�� �μ� ������ �Է� ������(DEPARTMENT)
INSERT INTO DEPARTMENT(DEPARTMENTID, DEPARTMENTNAME) VALUES(DEPARTMENTSEQ.NEXTVAL,'�ѹ���')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �μ� ������ ���� ������ ����(DEPARTMENT)
DELETE
FROM DEPARTMENT
WHERE DEPARTMENTID=2;
--> �� �� ����
DELETE FROM DEPARTMENT WHERE DEPARTMENTID=2
;
--==>> 1 �� ��(��) �����Ǿ����ϴ�.


--�� �ѹ�
ROLLBACK;
--==>> �ѹ� �Ϸ�.

--�� �μ� ������ ���� ������ ����(DEPARTMENT)
UPDATE DEPARTMENT
SET DEPARTMENTNAME='�ڿ���'
WHERE DEPARTMENTID=1;
--> ���ٱ��� 
UPDATE DEPARTMENT SET DEPARTMENTNAME='�ڿ���' WHERE DEPARTMENTID=1
;
--==>> 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

--�� �ѹ�
ROLLBACK;
--==>> �ѹ� �Ϸ�.



--��  ���� ����Ʈ ��ȸ ������ ����(REGIONVIEW)
SELECT REGIONID, REGIONNAME, DELCHECK
FROM REGIONVIEW
ORDER BY REGIONID;
--> �� �� ����
SELECT REGIONID, REGIONNAME, DELCHECK FROM REGIONVIEW ORDER BY REGIONID
;
--==>>
/*
1	����	1
2	���	0
3	��û	0
*/

--�� ���� ������ ��� ������ ����(REGION)
INSERT INTO REGION(REGIONID, REGIONNAME)VALUES(REGIONSEQ.NEXTVAL, '���')
;
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� ���� ������ ���� ������ ����(REGION)
DELETE
FROM REGION
WHERE REGIONID = 2;
--> �� �� ����
DELETE FROM REGION WHERE REGIONID=4
;
--==>> 1 �� ��(��) �����Ǿ����ϴ�.

ROLLBACK;
--==>> �ѹ� �Ϸ�.

select *
from region;


--�� ���� ������ ���� ������ ����(REGION)
UPDATE REGION SET REGIONNAME='����' WHERE REGIONID=5
;
-- 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

COMMIT;
--Ŀ�� �Ϸ�.


--�� ���� ����Ʈ ��ȸ ������ ����(POSITIONVIEW)
SELECT POSITIONID, POSITIONNAME, MINBASICPAY, DELCHECK FROM POSITIONVIEW ORDER BY POSITIONID
;

--�� ���� ������ �Է� ������ ����(POSITION)
INSERT INTO POSITION(POSITIONID, POSITIONNAME, MINBASICPAY) VALUES(POSITIONSEQ.NEXTVAL, '����', 5000000)
;
-- 1 �� ��(��) ���ԵǾ����ϴ�.

COMMIT;
--Ŀ�� �Ϸ�.

--�� ���� ������ ���� ������ ����(POSITION)
DELETE FROM POSITION WHERE POSITIONID=5
;
-- 1 �� ��(��) �����Ǿ����ϴ�.

ROLLBACK;
--�ѹ� �Ϸ�.


--�� ���� ������ ���� ������ ����(POSITION)
UPDATE POSITION SET POSITIONNAME='����', MINBASICPAY=3000000 WHERE POSITIONID=2
;
-- 1 �� ��(��) ������Ʈ�Ǿ����ϴ�.

ROLLBACK;
--�ѹ� �Ϸ�.

--------------------------------------------------------------------------------

DESC POSITIONVIEW;

INSERT INTO REGION(REGIONID, REGIONNAME) VALUES(4,'����');


select *
from region;


DESC DEPARTMENT;


SELECT EMPLOYEEID, NAME, SSN, BIRTHDAY, LUNAR, LUNARNAME, TELEPHONE, DEPARTMENTID, DEPARTMENTNAME, POSITIONID, POSITIONNAME, REGIONID, REGIONNAME, BASICPAY, EXTRAPAY, PAY, GRADE FROM EMPLOYEEVIEW ORDER BY EMPLOYEEID
;
