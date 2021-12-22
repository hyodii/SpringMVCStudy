SELECT USER
FROM DUAL;
--==>> SCOTT

/*
○ 사전 작업 → 데이터베이스 관련 객체 준비
   - 사용 계정 : SCOTT
   - 테이블 : TBL_STUDENT
     ·테이블 구조 : SID      	NUMBER		-- PK
                   , NAME     	VARCHAR2(30)
                   , TEL      	VARCHAR2(40)

   - 테이블 : TBL_GRADE
     ·테이블 구조 : SID       	NUMBER		-- PK / FK
		   , SUB1	NUMBER(3)
                   , SUB2	NUMBER(3)
                   , SUB3 	NUMBER(3)

   - 뷰 : STUDENTVIEW
     ·뷰 구조 : SID, NAME, TEL, SUB
				 --- 참조 레코드 수

   - 뷰 : GRADEVIEW
     ·뷰 구조 : SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
					      ---  ---  --
                                              총점 평균 등급(합격, 과락, 불합격) 
*/

--○ 학생테이블은 03_1에서 생성

--○ 샘플데이터 입력
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(STUDENTLISTSEQ.NEXTVAL, '이중호', '010-4444-4444');
INSERT INTO TBL_STUDENT(SID, NAME, TEL)
VALUES(STUDENTLISTSEQ.NEXTVAL, '손범석', '010-5555-5555');
--==>> 1 행 이(가) 삽입되었습니다. *2

SELECT *
FROM TBL_STUDENT;

--○ 커밋
COMMIT;
--==>> 커밋 완료.

--○ 기존 성적 테이블 제거
DROP TABLE TBL_GRADE;
--==>> Table TBL_GRADE이(가) 삭제되었습니다.


--○ 성적 테이블 생성
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
--==>> Table TBL_GRADE이(가) 생성되었습니다.

--○ 샘플데이터 입력
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
--==>> 1 행 이(가) 삽입되었습니다. *5

--○ 확인
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

--○ 커밋
COMMIT;
--==>> 커밋 완료.


--○ 학생뷰확인 03_1꺼 사용
SELECT SID, NAME, TEL, SUB
FROM STUDENTVIEW;

DROP VIEW GRADEVIEW;
--==>> View GRADEVIEW이(가) 삭제되었습니다.

--○ 뷰생성(GRADEVIEW)
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
     , (CASE WHEN (G.SUB1+G.SUB2+G.SUB3)/3.0 < 60 ) THEN '불합격'
           WHEN ( G.SUB1<=40) OR (G.SUB2<=40) OR (G.SUB3<=40 ) THEN '과락'
           ELSE '합격'
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
     , TRUNC((G.SUB1 + G.SUB2 + G.SUB3)/3) AS AVG           -- SQL에서 TRUNC 하는거보다 코딩에서 SELECT문에서 사용하는게 바람직함!!
     , (CASE WHEN (G.SUB1 + G.SUB2 + G.SUB3)/3 < 60 THEN '불합격'
             WHEN (G.SUB1 <= 40) OR (G.SUB2 <= 40) OR (G.SUB3 <= 40) THEN '과락'
             ELSE '합격'
             END) AS CH
FROM TBL_STUDENT S LEFT JOIN TBL_GRADE G
ON S.SID = G.SID;
--==>> View GRADEVIEW이(가) 생성되었습니다.





SELECT SID, NAME, SUB1, SUB2, SUB3, TOT, AVG, CH
FROM GRADEVIEW;
--==>>
/*
1	정효진	90	80	70	240	80	합격
2	정말로	70	60	80	210	70	합격
3	점심	92	81	73	246	82	합격
4	이중호	90	66	77	233	77	합격
5	손범석	89	91	70	250	83	합격
*/

--○ 커밋
COMMIT;
--==>> 커밋 완료.



















