select deptno  from emp;    --14�м�¼,����3�м�¼,��emp�ж�ȡÿһ����¼��Ѱ��deptno��������û���ҵ����������10000

select distinct deptno from emp;  --distinct deptno����˵��ظ���deptno
select distinct comm from emp;   --distinctҲ���Թ��˵��ظ���null������˵�ж��nullֻ���һ��
select distinct comm, deptno from emp;   --��comm��deptno����Ͻ��й���
select comm, distinct deptno from emp;   --�﷨����

select 10000 from emp;     --14�м�¼