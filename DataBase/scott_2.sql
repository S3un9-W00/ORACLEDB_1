-- 중복된 데이터를 제거해서 출력하기
-- 사원테이블에서 job을 출력하는데, 중복된 데이터를 제외하고 출력해보자.

SELECT job
FROM emp;

-- 키워드 DISTINCT
SELECT DISTINCT job FROM emp;
-- 키워드 UNIQUE
SELECT UNIQUE job FROM emp;

-- 중복된 값 제거는 DISTINCT, UNIQUE 모두 가능하다.
-- 다만, DISTINCT는 ANSI SQL 표준이므로 대부분 DBMS에서 사용이 된다.
-- UNIQUE 일부 DBMS에서만 같은 기능으로 작동한다.
-- 따라서 DISTINCT를 권장한다.

-- EMP 테이블만 검색하며, 부서의 갯수를 출력하시오.
SELECT DISTINCT deptno FROM emp;  -- 중복 제거 (distinct)

-- 데이터를 정렬해서 출력하기
-- 사원 테이블에서 이름과 월급을 출력하는데, 월급이 낮은 사원부터 출력해보자.
SELECT ename, sal
FROM emp
ORDER BY sal asc; -- asc (오름차순)

SELECT ename, sal as 월급
FROM emp
ORDER BY 월급 desc; -- desc(내림차순)
-- ORDER BY 절은 SELECT 문장에서 가장 마지막에 실행된다.

-- 사원이름, 부서번호, 월급을 출력하는데 부서번호가 낮은것부터 정렬하고, 부서내에서는 월급이 높은 것 부터 출력하시오.
SELECT ename, deptn vo, sal
FROM emp;
ORDER BY deptno ASC, sal DESC;

SELECT ename, deptno, sal
FROM emp;
ORDER BY 2 ASC, 3 DESC;

-- WHERE절 배우기1 (숫자데이터 검색)
-- WHERE절은 특정 조건을 만족하는 행만 출력하도록 피러링한다.
-- 월급이 3000인 사원들의 이름, 월급, 직업을 출력해보자.
SELECT ename, sal, job
FROM emp
WHERE sal = 3000;

-- >, >=, <, <=, =, (!=, <>)
-- BETWEEN a AND b
-- 월급이 2000에서 4000 사이인 직원의 이름과 월급을 추려
SELECT sal, job
FROM emp;
WHERE sal >= 2000 and sal <= 4000