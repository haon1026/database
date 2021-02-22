select "E".ename "Ա������", "D".deptno "��������"
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
      
      
--select ... from A, B ���÷�
--emp��14��8�У� dept��5��3��
select * from emp, dept;
         --�����Ľ�������70�У�11�У�������A��B�ĳ˻���������A��B֮�ͻ���˵��A���ÿһ����¼����B���ÿһ����¼�����һ���γɵ��ǵѿ�����
         
         
--select ... from A, B where ... ���÷�
--��select ... from A, B�����ĵѿ�������where�е��������й���
select * 
       from emp, dept
       where empno = 7369
       --�����Ľ�������5�У�11��
       
       
--select ... from A join B on ... ���÷�
--���70�У�11��
select *
      from emp "E"
      join dept "D"   --join������
      on 1=1       --on��������,����ʡ ��join�ͱ�����on

--���70�У�2��
select "E".ename "Ա������", "D".deptno "��������"
      from emp "E"
      join dept "D"
      on 1=1
      
--�ж�
select deptno
      from emp "E"
      join dept "D"
      on 1=1
      
select "E".deptno
      from emp "E"
      join dept "D"
      on 1=1
      
      
select "E".ename "Ա������", "D".deptno "��������"
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
--�ȼ���
select "E".ename "Ա������", "D".deptno "��������"
      from emp "E", dept "D"
      where "E".deptno = "D".deptno
      
--select ... from A, B where ...��sql192��׼
--select ... from A join B on ...��sql199��׼
--������һ�����Ƽ�ʹ��SQL199��׼


select * from emp, dept
--�ѹ��ʴ���2000��Ա���������Ͳ��ŵ��������
--SQL192
select "E".ename, "E".sal, "D".dname
          from emp "E", dept "D"
          where "E".sal > 2000 and "E".deptno = "D".deptno

--SQL199         
select E.ename, E.sal, D.deptno 
          from emp "E"
          join dept "D"
          on "E".deptno = "D".deptno
          where "E".sal > 2000
          
          
--�ѹ��ʴ���2000��Ա���������Ͳ��ŵ����ƺ͹��ʵĵȼ����
--sql199��׼

--����350������14
select *
        from emp "E"
        join dept "D"
        on 1=1
        join salgrade "G"
        on 1=1
        
--sql199��׼        
select "E".ename, "D".dname, "G".GRADE
        from emp "E"
        join dept "D"
        on "E".deptno = "D".deptno   --and "E".sal > 2000
        join salgrade "G"
        on "E".sal >= "G".LOSAL and "E".sal <= "G".HISAL
        where "E".sal > 2000
        
        
--sql192��׼
select "E".ename, "D".dname, "G".GRADE
        from emp "E", dept "D", SALGRADE "G"
        where "E".deptno = "D".deptno and "E".sal >= "G".LOSAL and "E".sal <= "G".HISAL and "E".sal > 2000
        