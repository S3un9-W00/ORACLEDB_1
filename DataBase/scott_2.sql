-- �ߺ��� �����͸� �����ؼ� ����ϱ�
-- ������̺��� job�� ����ϴµ�, �ߺ��� �����͸� �����ϰ� ����غ���.

SELECT job
FROM emp;

-- Ű���� DISTINCT
SELECT DISTINCT job FROM emp;
-- Ű���� UNIQUE
SELECT UNIQUE job FROM emp;

-- �ߺ��� �� ���Ŵ� DISTINCT, UNIQUE ��� �����ϴ�.
-- �ٸ�, DISTINCT�� ANSI SQL ǥ���̹Ƿ� ��κ� DBMS���� ����� �ȴ�.
-- UNIQUE �Ϻ� DBMS������ ���� ������� �۵��Ѵ�.
-- ���� DISTINCT�� �����Ѵ�.

-- EMP ���̺� �˻��ϸ�, �μ��� ������ ����Ͻÿ�.
SELECT DISTINCT deptno FROM emp;  -- �ߺ� ���� (distinct)

-- �����͸� �����ؼ� ����ϱ�
-- ��� ���̺��� �̸��� ������ ����ϴµ�, ������ ���� ������� ����غ���.
SELECT ename, sal
FROM emp
ORDER BY sal asc; -- asc (��������)

SELECT ename, sal as ����
FROM emp
ORDER BY ���� desc; -- desc(��������)
-- ORDER BY ���� SELECT ���忡�� ���� �������� ����ȴ�.

-- ����̸�, �μ���ȣ, ������ ����ϴµ� �μ���ȣ�� �����ͺ��� �����ϰ�, �μ��������� ������ ���� �� ���� ����Ͻÿ�.
SELECT ename, deptn vo, sal
FROM emp;
ORDER BY deptno ASC, sal DESC;

SELECT ename, deptno, sal
FROM emp;
ORDER BY 2 ASC, 3 DESC;

-- WHERE�� ����1 (���ڵ����� �˻�)
-- WHERE���� Ư�� ������ �����ϴ� �ุ ����ϵ��� �Ƿ����Ѵ�.
-- ������ 3000�� ������� �̸�, ����, ������ ����غ���.
SELECT ename, sal, job
FROM emp
WHERE sal = 3000;

-- >, >=, <, <=, =, (!=, <>)
-- BETWEEN a AND b
-- ������ 2000���� 4000 ������ ������ �̸��� ������ �߷�
SELECT sal, job
FROM emp;
WHERE sal >= 2000 and sal <= 4000