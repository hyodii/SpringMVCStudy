SELECT USER
FROM DUAL;
--==>> SCOTT

DROP TABLE TBL_MEMBERLIST;
--==>> Table TBL_MEMBERLIST��(��) �����Ǿ����ϴ�.

--�� �ǽ� ���̱� ����(TBL_MEMBERLIST)
CREATE TABLE TBL_MEMBERLIST
( MID        NUMBER      --PK
, NAME       VARCHAR2(30)
, TELEPHONE  VARCHAR2(40)
, CONSTRAINT MEMBERLIST_MID_PK PRIMARY KEY(MID)
);
--==>> Table TBL_MEMBERLIST��(��) �����Ǿ����ϴ�.

--�� ���� ������ ����
DROP SEQUENCE MEMBERLISTSEQ;
--==>> Sequence MEMBERLISTSEQ��(��) �����Ǿ����ϴ�.

--�� �ǽ� ������ ����(MEMBERLISTSEQ)
CREATE SEQUENCE MEMBERLISTSEQ
NOCACHE;
--==>> Sequence MEMBERLISTSEQ��(��) �����Ǿ����ϴ�.

--�� ������ �Է�
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '������', '010-1111-1111');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.

--�� Ȯ��
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
ORDER BY MID;
--==>> 1	������	010-1111-1111

--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.


--�� �ο� �� Ȯ��
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBERLIST;
--==>> 1

--�� ������ �߰� �Է�
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '��ҿ�', '010-2222-2222');
--==>> 1 �� ��(��) ���ԵǾ����ϴ�.


--�� Ŀ��
COMMIT;
--==>> Ŀ�� �Ϸ�.








