-- DUAL 临时的空表
SELECT  UPPER ('abcde') FROM DUAL;

--
SELECT INITCAP('smith abc aBC') UPP FROM DUAL;

--
SELECT CONCAT('a','b') as "ab" FROM DUAL;

--SUBSTR 从1开始，截取多少个
SELECT SUBSTR('abcde',2,3) FROM DUAL;

SELECT length('abcde') FROM DUAL;

SELECT REPLACE('badcabsab','a','A') FROM DUAL;

-- INSTR 找字符的下标（从1开始）
SELECT INSTR('Hello World','e') FROM DUAL;

-- 左边加*号，总长度是10个长度
SELECT LPAD('Smith',10,'*') FROM DUAL;
SELECT RPAD('Smith',10,'*') FROM DUAL;
SELECT RPAD(LPAD('Smith',10,'*'),15,'*') FROM DUAL;

--
SELECT TRIM(' Mr Smith ') FROM DUAL;
SELECT REPLACE(' Mr Smith ',' ', '') FROM DUAL;
SELECT REPLACE(TRIM(' Mr Smith '), ' ', '') FROM DUAL;

--round 四舍五入
SELECT ROUND(123.4567, -3) FROM DUAL;

-- MOD 
SELECT MOD(9,2) FROM DUAL;

-- 返回日期d1到日期d2之间的月数。
SELECT MONTHS_BETWEEN(SYSDATE,HIREDATE) FROM SCOTT.EMP;
SELECT * FROM SCOTT.EMP;

--
SELECT ADD_MONTHS(SYSDATE,1) FROM DUAL;

--
SELECT NEXT_DAY(SYSDATE,'星期一') FROM DUAL;

--
SELECT to_char(sal,'L999,999,999') FROM SCOTT.EMP;
￥  人民币
$   美元
两横线  日元

-- 
select to_number('a')+to_number('b') from dual;

--  to_date 字符串转时间类型
Select to_date('20090210','yyyyMMdd') from dual

--  nvl
SELECT NVL('TEST', 'AA') FROM DUAL;

-- nvl2
SELECT NVL2('CC', NULL, 'AA') FROM DUAL;

-- NULLIF()
SELECT NULLIF('AA', 'BB') FROM DUAL;

-- 
SELECT * FROM SCOTT.EMP;
select empno, ename, sal, comm, coalesce(sal+comm, sal, 0)总收入 from SCOTT.emp;

-- CASE
SELECT EMPNO, ENAME, SAL,
CASE DEPTNO
WHEN 10 THEN '财务部'
WHEN 20 THEN '研发部'
WHEN 30 THEN '销售部'
ELSE '未知部门'
END 部门
FROM SCOTT.EMP;

-- DECODE
SELECT EMPNO, ENAME, SAL,
DECODE(DEPTNO, 10, '财务部',
20, '研发部',
30, '销售部',
'未知部门') 部门
FROM EMP;

SELECT COUNT(1) FROM EMP;

SELECT SUM(COMM) FROM EMP;
select * from emp;

--  、集 笛卡尔集(Cross Join)
SELECT * FROM EMP; -- 员工 14
SELECT * FROM DEPT; -- 部门 4
SELECT * FROM EMP,DEPT;

-- 
SELECT EMPNO, ENAME, DNAME
  FROM EMP
  FULL JOIN DEPT
    ON EMP.DEPTNO = DEPT.DEPTNO;
    
SELECT * FROM EMP WHERE EMPNO IN(7369,7499)
UNION ALL
SELECT * FROM EMP WHERE EMPNO IN(7902,7369);

表A：
       aid number
       name varchar2()
       age number
表B：
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


-- 分页查询
SELECT *
  FROM (SELECT ROWNUM NO, E.*
          FROM (SELECT * FROM EMP ORDER BY SAL DESC) E
         WHERE ROWNUM <= 5)
 WHERE NO >= 3;
 
-- 拆分
   SELECT * FROM EMP ORDER BY SAL DESC
   
   (SELECT ROWNUM NO, E.*
          FROM (SELECT * FROM EMP ORDER BY SAL DESC) E
         WHERE ROWNUM <= 5)

-- page 1
（pageNo - 1） * pageSize(2) = 0 + 1   1*2=2
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

--处理空值排序
SELECT * FROM EMP ORDER BY COMM DESC NULLS LAST(FIRST); -- 错误
SELECT * FROM EMP ORDER BY COMM DESC NULLS LAST; -- last
SELECT * FROM EMP ORDER BY COMM DESC NULLS FIRST; -- first


--查询跳过表中的偶数行
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
insert into test1 values (1001, '张三', to_date('2020/08/30', 'yyyy/MM/dd'), 2300);
insert into test1 values (1002, '李四', to_date('2020/08/31', 'yyyy/MM/dd'), 6600);
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
START WITH 1 -- 初始是1
INCREMENT BY 1 -- 每次+1
ORDER
CACHE 20 -- 20个缓存，每次不够了生成20个待用
NOCYCLE;

SELECT MYSEQ.NEXTVAL FROM DUAL;
SELECT MYSEQ.CURRVAL FROM DUAL;
