SELECT USER
FROM DUAL;
--==>> SCOTT

/*
�� ���� �۾� �� �����ͺ��̽� ���� ��ü �غ�
   - ��� ���� : SCOTT
   - ���̺� : TBL_STUDENT
     �����̺� ���� : SID      	NUMBER		-- PK
                   , NAME     	VARCHAR2(30)
                   , TEL      	VARCHAR2(40)

   - ���̺� : TBL_GRADE
     �����̺� ���� : SID       	NUMBER		-- PK / FK
		   , SUB1	NUMBER(3)
                   , SUB2	NUMBER(3)
                   , SUB3 	NUMBER(3)

   - �� : STUDENTVIEW
     ���� ���� : SID, NAME, TEL, SUB
				 --- ���� ���ڵ� ��

   - �� : GRADEVIEW
     ���� ���� : SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
					      ---  ---  --
                                              ���� ��� ���(�հ�, ����, ���հ�) 
*/

--�� �л����̺��� 03_1���� ����

--�� ���õ����� �Է�
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(STUDENTLISTSEQ.NEXTVAL, '����ȣ', '010-4444-4444');
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(STUDENTLISTSEQ.NEXTVAL, '�չ���', '010-5555-5555');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�. *2

SELECT *
FROM TBL_STUDENT;

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.

--�� ���� ���� ���̺� ����
DROP TABLE TBL_GRADE;
--==>> Table TBL_GRADE��(��) �����Ǿ����ϴ�.


--�� ���� ���̺� ����
CREATE TABLE TBL_GRADE
(  SID       	NUMBER		-- PK / FK
, SUB1	NUMBER(3)
, SUB2	NUMBER(3)
, SUB3 	NUMBER(3)
, CONSTRAINT GRADE_SID_PK PRIMARY KEY(SID)
, CONSTRAINT GRADE_SID_FK FOREIGN KEY(SID)
        REFERENCES TBL_STUDENT(SID)
, CONSTRAINT GRADE_SUB1_CK CHECK(SUB1 BETWEEN 0 AND 100)
, CONSTRAINT GRADE_SUB2_CK CHECK(SUB2 BETWEEN 0 AND 100)
, CONSTRAINT GRADE_SUB3_CK CHECK(SUB3 BETWEEN 0 AND 100)
);
--==>> Table TBL_GRADE��(��) �����Ǿ����ϴ�.

--�� ���õ����� �Է�
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(1, 90, 80, 70);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(2, 70, 60, 80);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(3, 92, 81, 73);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(4, 90, 66, 77);
INSERT INTO TBL_GRADE(SID, SUB1, SUB2, SUB3)
VALUES(5, 89, 91, 70);
--==>> 1 �� ��(��) ���ԵǾ����ϴ�. *5

--�� Ȯ��
SELECT *
FROM TBL_GRADE;
--==>>
/*
1	90	80	70
2	70	60	80
3	92	81	73
4	90	66	77
5	89	91	70
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �л���Ȯ�� 03_1�� ���
SELECT SID, NAME, TEL, SUB
FROM STUDENTVIEW;

DROP VIEW GRADEVIEW;
--==>> View GRADEVIEW��(��) �����Ǿ����ϴ�.

--�� �����(GRADEVIEW)
/*
CREATE OR REPLACE VIEW GRADEVIEW
AS
SELECT S.SID AS SID
     , S.NAME AS NAME
     , G.SUB1 AS SUB1
     , G SUB2 A S SUB2
     , G.SUB3 AS SUB3
     , (G.SUB1+G.SUB2+G.SUB3) AS TOT
     , TRANC((G.SUB1+G.SUB2+G.SUB3)/3) AS AVG
     , (CASE WHEN (G.SUB1+G.SUB2+G.SUB3)/3.0 < 60 ) THEN '���հ�'
           WHEN ( G.SUB1<=40) OR (G.SUB2<=40) OR (G.SUB3<=40 ) THEN '����'
           ELSE '�հ�'
       END) AS CH
FROM TBL_STUDENT S JOIN TBL_GRADE G
ON S.SID = G.SID;
*/
CREATE OR REPLACE VIEW GRADEVIEW
AS
SELECT S.SID AS SID
     , S.NAME AS NAME
     , G.SUB1 AS SUB1
     , G.SUB2 AS SUB2
     , G.SUB3 AS SUB3
     , (G.SUB1 + G.SUB2 + G.SUB3) AS TOT
     , TRUNC((G.SUB1 + G.SUB2 + G.SUB3)/3) AS AVG           -- SQL���� TRUNC �ϴ°ź��� �ڵ����� SELECT������ ����ϴ°� �ٶ�����!!
     , (CASE WHEN (G.SUB1 + G.SUB2 + G.SUB3)/3 < 60 THEN '���հ�'
             WHEN (G.SUB1 <= 40) OR (G.SUB2 <= 40) OR (G.SUB3 <= 40) THEN '����'
             ELSE '�հ�'
             END) AS CH
FROM TBL_STUDENT S LEFT JOIN TBL_GRADE G
ON S.SID = G.SID;
--==>> View GRADEVIEW��(��) �����Ǿ����ϴ�.





SELECT SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
FROM GRADEVIEW;
--==>>
/*
1	��ȿ��	90	80	70	240	80	�հ�
2	������	70	60	80	210	70	�հ�
3	����	92	81	73	246	82	�հ�
4	����ȣ	90	66	77	233	77	�հ�
5	�չ���	89	91	70	250	83	�հ�
*/

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.



















