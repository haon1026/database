--use scott

--���ÿ�����ŵı�ź͸ò��ŵ�ƽ������
select deptno, AVG(sal) as "����ƽ������" 
          from emp
          group by deptno;
          
elect deptno, AVG(sal) as "����ƽ������", ename 
          from emp
          group by deptno;       --error
          
--�ж���������Ƿ���ȷ
select deptno, ename
         from emp
         group by deptno;    --����֮��ͳ�Ƶ������������Ϣ��ename�����ڵ���Ϣ
         
--�ܽ᣺group by ֮��select��ֻ�ܳ��ַ�����������Ϣ�����ܳ������ڵ���ϸ��Ϣ

--group a,b���÷����Ȱ�a���飬���a��ͬ���ٰ�b���飬����ͳ�Ƶ������ȷ������Ϣ
select deptno, job, avg(sal) 
        from emp
        group by deptno, job; --ok
        
select deptno, job, sal
        from emp
        group by deptno, job; --error

--����        
select deptno, job, avg(sal) "ƽ������", count(*) "Ա������", sum(sal) "�ܹ���"
        from emp
        group by deptno, job
        order by deptno;
        
        
select mgr, COUNT(*) from emp group by mgr;