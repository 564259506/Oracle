-- DUAL ��ʱ�Ŀձ�
SELECT  UPPER ('abcde') FROM DUAL;

--
SELECT INITCAP('smith abc aBC') UPP FROM DUAL;

--
SELECT CONCAT('a','b') as "ab" FROM DUAL;

--SUBSTR ��1��ʼ����ȡ���ٸ�
SELECT SUBSTR('abcde',2,3) FROM DUAL;

SELECT length('abcde') FROM DUAL;

SELECT REPLACE('badcabsab','a','A') FROM DUAL;

-- INSTR ���ַ����±꣨��1��ʼ��
SELECT INSTR('Hello World','e') FROM DUAL;

-- ��߼�*�ţ��ܳ�����10������
SELECT LPAD('Smith',10,'*') FROM DUAL;
SELECT RPAD('Smith',10,'*') FROM DUAL;
SELECT RPAD(LPAD('Smith',10,'*'),15,'*') FROM DUAL;

--
SELECT TRIM(' Mr Smith ') FROM DUAL;
SELECT REPLACE(' Mr Smith ',' ', '') FROM DUAL;
SELECT REPLACE(TRIM(' Mr Smith '), ' ', '') FROM DUAL;

--round ��������
SELECT ROUND(123.4567, -3) FROM DUAL;

-- MOD 
SELECT MOD(9,2) FROM DUAL;

-- ��������d1������d2֮���������
SELECT MONTHS_BETWEEN(SYSDATE,HIREDATE) FROM SCOTT.EMP;
SELECT * FROM SCOTT.EMP;

--
SELECT ADD_MONTHS(SYSDATE,1) FROM DUAL;

--
SELECT NEXT_DAY(SYSDATE,'����һ') FROM DUAL;

--
SELECT to_char(sal,'L999,999,999') FROM SCOTT.EMP;
��  �����
$   ��Ԫ
������  ��Ԫ

-- 
select to_number('a')+to_number('b') from dual;

--  to_date �ַ���תʱ������
Select to_date('20090210','yyyyMMdd') from dual

--  nvl
SELECT NVL('TEST', 'AA') FROM DUAL;

-- nvl2
SELECT NVL2('CC', NULL, 'AA') FROM DUAL;

-- NULLIF()
SELECT NULLIF('AA', 'BB') FROM DUAL;

-- 
SELECT * FROM SCOTT.EMP;
select empno, ename, sal, comm, coalesce(sal+comm, sal, 0)������ from SCOTT.emp;

-- CASE
SELECT EMPNO, ENAME, SAL,
CASE DEPTNO
WHEN 10 THEN '����'
WHEN 20 THEN '�з���'
WHEN 30 THEN '���۲�'
ELSE 'δ֪����'
END ����
FROM SCOTT.EMP;

-- DECODE
SELECT EMPNO, ENAME, SAL,
DECODE(DEPTNO, 10, '����',
20, '�з���',
30, '���۲�',
'δ֪����') ����
FROM EMP;

SELECT COUNT(1) FROM EMP;

SELECT SUM(COMM) FROM EMP;
select * from emp;

--  ���� �ѿ�����(Cross Join)
SELECT * FROM EMP; -- Ա�� 14
SELECT * FROM DEPT; -- ���� 4
SELECT * FROM EMP,DEPT;

-- 
SELECT EMPNO, ENAME, DNAME
  FROM EMP
  FULL JOIN DEPT
    ON EMP.DEPTNO = DEPT.DEPTNO;
    
SELECT * FROM EMP WHERE EMPNO IN(7369,7499)
UNION ALL
SELECT * FROM EMP WHERE EMPNO IN(7902,7369);

��A��
       aid number
       name varchar2()
       age number
��B��
       bid number
       username varchar2()
       age number

emp -ename deptno
dept- deptno loc

-- ERROR
SELECT ENAME, DEPTNO FROM EMP
UNION
SELECT DEPTNO, LOC FROM DEPT;

-- TRUE
SELECT ENAME, DEPTNO FROM EMP
UNION
SELECT LOC, DEPTNO FROM DEPT;

--
SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO IN(10,20)

SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO > ANY(10,20)

SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO > ALL(10,20)

-- TOPNO
SELECT * FROM DEPT;
SELECT * FROM DEPT WHERE ROWNUM = 1 OR ROWNUM = 2 ORDER BY DEPTNO DESC;

SELECT ROWNUM,DEPT.* FROM DEPT ORDER BY DEPTNO DESC;


-- ��ҳ��ѯ
SELECT *
  FROM (SELECT ROWNUM NO, E.*
          FROM (SELECT * FROM EMP ORDER BY SAL DESC) E
         WHERE ROWNUM <= 5)
 WHERE NO >= 3;
 
-- ���
   SELECT * FROM EMP ORDER BY SAL DESC
   
   (SELECT ROWNUM NO, E.*
          FROM (SELECT * FROM EMP ORDER BY SAL DESC) E
         WHERE ROWNUM <= 5)

-- page 1
��pageNo - 1�� * pageSize(2) = 0 + 1   1*2=2
-- page 2
(2-1)*2=2 + 1  2*2=4
-- page 3
(3-1)*2=4+1=5   2*3=6

SELECT *
  FROM (SELECT ROWNUM NO, E.* FROM (SELECT * FROM EMP ORDER BY SAL DESC) E)
 WHERE NO >= 5
   AND NO <= 6;


SELECT ROWNUM NO, E.* FROM (SELECT * FROM EMP ORDER BY SAL DESC) E




-- 
SELECT *
  FROM (SELECT ENAME, JOB FROM EMP ORDER BY DBMS_RANDOM.VALUE())
 WHERE ROWNUM <= 5

--�����ֵ����
SELECT * FROM EMP ORDER BY COMM DESC NULLS LAST(FIRST); -- ����
SELECT * FROM EMP ORDER BY COMM DESC NULLS LAST; -- last
SELECT * FROM EMP ORDER BY COMM DESC NULLS FIRST; -- first


--��ѯ�������е�ż����
SELECT ENAME FROM 
  (SELECT ROW_NUMBER() OVER (ORDER BY ENAME) RN,ENAME FROM EMP) X 
WHERE MOD(RN,2)=1; -- MOD(RN,2)=1

-- 
SELECT ENAME, SAL, SUM(SAL) OVER(), AVG(SAL) OVER(ORDER BY ENAME) FROM EMP;

-- 
select table_name from all_tables where owner='SCOTT';

select * from all_tab_columns where table_name='EMP';

Desc v$logfile;

create table test1(eid number(10), name varchar2(20),birth date,salary number(8,2));
insert into test1 values (1001, '����', to_date('2020/08/30', 'yyyy/MM/dd'), 2300);
insert into test1 values (1002, '����', to_date('2020/08/31', 'yyyy/MM/dd'), 6600);
select * from test1;


create table test2(eid number(10), name varchar2(20),birth date,salary number(8,2));
select * from test2;

merge into test2
using test1
on (test1.eid = test2.eid)
when matched then
  update set name = test1.name, birth = test1.birth, salary = test1.salary
when not matched then
  insert
    (eid, name, birth, salary)
  values
    (test1.eid, test1.name, test1.birth, test1.salary);


CREATE SEQUENCE MYSEQ
START WITH 1 -- ��ʼ��1
INCREMENT BY 1 -- ÿ��+1
ORDER
CACHE 20 -- 20�����棬ÿ�β���������20������
NOCYCLE;

SELECT MYSEQ.NEXTVAL FROM DUAL;
SELECT MYSEQ.CURRVAL FROM DUAL;
