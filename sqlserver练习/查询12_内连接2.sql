--������
--sql192
--����������϶���dept�������ı���
select * from emp, dept
       where emp.deptno = 10
    
--����������϶���emp�������ı���   
select * from emp, dept
       where dept.deptno = 10    --����������������������
       
--sql199ʵ��
select *
       from emp
       join dept
       on emp.deptno = dept.deptno   --Ҳ���ԣ�on��ָ��������������
       having dept.deptno = 10    --error.having�ǶԷ���֮��Ĺ��ˣ������޷���
       
select * 
       from emp
       join dept
       on 1=1
       where dept.deptno = 10
       
select * 
       from emp
       join dept
       on dept.deptno = 10
       
--�������������A������Ա���й�����ߵ�ǰ������ÿ��Ա�������� ���� ���ʵȼ� ��������
select top 3 "E".ename, "E".sal, "S".grade, "D".dname
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
      join salgrade "S"
      on "E".sal between "S".losal and "S".hisal
      where "E".ename not like '%B%'
      order by "E".sal desc