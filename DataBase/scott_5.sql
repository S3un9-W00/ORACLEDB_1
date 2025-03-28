-- ��� ������
-- ������ 36000 �̻��� ������� �̸��� ������ ���Ͻÿ�.

SELECT ename as ����̸�, sal * 12 as ����
FROM emp
WHERE sal * 12 >= 36000;

-- ������ �켱���� -> DB�� ����? OK
SELECT 300+200*2 FROM dual;
SELECT (300+200) *2 FROM dual;


-- �μ� ��ȣ(deptno)�� 10���� ������� �̸�, ����, Ŀ�̼�, ����+Ŀ�̼��� ���.
SELECT deptno, sal,comn ,sal+comn
FROM emp
WHERE deptno = 10;

-- nvl �Լ� : null �����͸� ó�����ִ� �Լ�
-- nvl (comn,0) : comm�� ����� �� comm�� null �̸� 0 ���� ����ض�. null �� �ƴϸ� �׳� ����ض�.
SELECT ename, sal, nvl(comm, 0), sal+nvl(comm, 0)
FROM emp
WHERE deptno = 10;

-- �� ������ ���� (LIKE)
-- �̸��� ù���ڰ� S�� �����ϴ� ������� �̸��� ������ ����Ͻÿ�.
SELECT ename, sal
FROM emp
WHERE ename LIKE 'S%';
-- % : ���ϵ� ī��, ö�ڼ��� ��� ���� � ö�ڰ� �͵� �ȴ�.

-- �̸��� �ι�° ö�ڰ� M�� ����� �̸��� ����Ͻÿ�.
SELECT ename
FROM emp
WHERE ename LIKE '_M%';
-- _ (�����) : ���ϵ� ī��, ��� ö�ڰ� �͵� ��������� �ڸ����� �� �ڸ����� �ȴٴ� �ǹ��̴�.

-- �̸��� A�� �����ϰ� �ִ� ��� ����� �̸��� �˻��Ͻÿ�.
SELECT ename
FROM emp
WHERE ename LIKE '%A%';

-- �� ������ ���� (IS NULL)
-- Ŀ�̼��� NULL�� ������� �̸��� Ŀ�̼��� ����Ͻÿ�.
SELECT ename, comm
FROM emp
WHERE comm is null;
-- comm = null �ȵ�!!

-- Ŀ�̼��� NULL�� �ƴ� ������� �̸��� Ŀ�̼��� ����Ͻÿ�.
SELECT ename, comm
FROM emp
WHERE comm is not null;

-- �� ������ ���� (IN)
-- ������ SALESMAN, ANALYST, MANAGER �� ������� �̸�, ����, ������ ����Ͻÿ�.
SELECT ename, sal, job
FROM emp
WHERE job = 'SALESMAN' or job = 'ANALYST' or job = 'MANAGER';

-- IN�� Ȱ���ϸ�,
SELECT ename, sal, job
FROM emp
WHERE job in ('SALESMAN', 'ANALYST', 'MANAGER');

-- �� ������ ���� (BETWEEN AND)
-- 1981�⵵�� �Ի��� ������� �̸��� �Ի����� ����Ͻÿ�.
SELECT ename, hiredate
FROM emp
WHERE hiredate BETWEEN '01/01/01' AND '01/12/31';

-- �� ������ ���� (AND,OR, NOT)
-- ������ SALESMAN �̰� ������ 1200 �̻��� ������� �̸�, ����, ���� ����Ͻÿ�.
SELECT ename, sal, job
FROM emp
WHERE job='SALESMAN' and sal >= 1200;