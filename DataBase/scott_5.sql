-- 산술 연산자
-- 연봉이 36000 이상인 사원들의 이름과 연봉을 구하시오.

SELECT ename as 사원이름, sal * 12 as 연봉
FROM emp
WHERE sal * 12 >= 36000;

-- 연산자 우선순위 -> DB에 적용? OK
SELECT 300+200*2 FROM dual;
SELECT (300+200) *2 FROM dual;


-- 부서 번호(deptno)가 10번인 사원들의 이름, 월급, 커미션, 월급+커미션을 출력.
SELECT deptno, sal,comn ,sal+comn
FROM emp
WHERE deptno = 10;

-- nvl 함수 : null 데이터를 처리해주는 함수
-- nvl (comn,0) : comm을 출력할 때 comm이 null 이면 0 으로 출력해라. null 이 아니면 그냥 출력해라.
SELECT ename, sal, nvl(comm, 0), sal+nvl(comm, 0)
FROM emp
WHERE deptno = 10;

-- 비교 연산자 배우기 (LIKE)
-- 이름의 첫글자가 S로 시작하는 사원들의 이름과 월급을 출력하시오.
SELECT ename, sal
FROM emp
WHERE ename LIKE 'S%';
-- % : 와일드 카드, 철자수와 상관 없이 어떤 철자가 와도 된다.

-- 이름의 두번째 철자가 M인 사원의 이름을 출력하시오.
SELECT ename
FROM emp
WHERE ename LIKE '_M%';
-- _ (언더바) : 와일드 카드, 어떠한 철자가 와도 상관없으나 자리수는 한 자리여야 된다는 의미이다.

-- 이름에 A를 포함하고 있는 모든 사원의 이름을 검색하시오.
SELECT ename
FROM emp
WHERE ename LIKE '%A%';

-- 비교 연산자 배우기 (IS NULL)
-- 커미션이 NULL인 사원들의 이름과 커미션을 출력하시오.
SELECT ename, comm
FROM emp
WHERE comm is null;
-- comm = null 안됨!!

-- 커미션이 NULL이 아닌 사원들의 이름과 커미션을 출력하시오.
SELECT ename, comm
FROM emp
WHERE comm is not null;

-- 비교 연산자 배우기 (IN)
-- 직업이 SALESMAN, ANALYST, MANAGER 인 사원들의 이름, 월급, 직업을 출력하시오.
SELECT ename, sal, job
FROM emp
WHERE job = 'SALESMAN' or job = 'ANALYST' or job = 'MANAGER';

-- IN을 활용하면,
SELECT ename, sal, job
FROM emp
WHERE job in ('SALESMAN', 'ANALYST', 'MANAGER');

-- 비교 연산자 배우기 (BETWEEN AND)
-- 1981년도에 입사한 사원들의 이름과 입사일을 출력하시오.
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '01/01/01' AND '01/12/31';

-- 논리 연산자 배우기 (AND,OR, NOT)
-- 직업이 SALESMAN 이고 월급이 1200 이상인 사원들의 이름, 월급, 직업 출력하시오.
SELECT ename, sal, job
FROM emp
WHERE job='SALESMAN' and sal >= 1200;