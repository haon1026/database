--having:�Է���֮�����Ϣ���й���

--�������ƽ�����ʴ���2000�Ĳ��ű�� ���ŵ�ƽ������
select deptno, avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having avg(sal) > 2000;
       
--�ж�����sql����Ƿ���ȷ
select deptno, avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having deptno > 10;
       
select deptno, avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having "����ƽ������" > 2000;
       
select deptno, avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having count(*) > 3;
       
select deptno, count(*), avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having count(*) > 3;
       
       
select deptno, avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having ename like '%A%';
       
select deptno as "���ű��", avg(sal) as "����ƽ������"
       from emp
       group by deptno
       having deptno > 1;
       
--������������A�����е�Ա�������ű�ŷ���
--ͳ���������ƽ�����ʴ���2000�Ĳ��ŵĲ��ű�� ���ŵ�ƽ������
select deptno as "���ű��", avg(sal) as "����ƽ������"
          from emp
          where ename not like '%A%'
          group by deptno
          having avg(sal) > 2000;
          
--�ѹ��ʴ���3000���е�Ա�������ű�ŷ���
--ͳ���������ƽ�����ʴ���2000�Ĳ��ŵĲ��ű�� ���ŵ�ƽ������
select deptno as "���ű��", avg(sal) as "����ƽ������", count(*) "��������", MAX(sal) "���ŵ���߹���"
          from emp
          where sal > 2000       --where�Ƕ�ԭʼ�ļ�¼����
          group by deptno
          having avg(sal) > 3000;   --having�Է���֮��ļ�¼����
         
--�ж�
select deptno as "���ű��", avg(sal) as "����ƽ������", count(*) "��������", MAX(sal) "���ŵ���߹���"
          from emp    
          group by deptno
          having avg(sal) > 3000
          where sal > 2000;  
       
--�ܽ᣺����select�Ĳ���˳���ǲ�����仯�ģ��������ʱ����


select COUNT(*) from emp having AVG(sal) > 1000;
             --ûʹ��group by  ��ʹ����having,��ζ��having�����еļ�¼����һ�������й��ˣ�������
         
select sal into emp2 from emp where sal > 1000;
select * from emp2;
       