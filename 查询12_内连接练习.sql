--1
--���ÿ��Ա�������� ���ű�� нˮ ��нˮ�ĵȼ�
--sql199
select "E".ename, "E".deptno, "E".sal, "S".grade
        from emp "E"
        join salgrade "S"
        on "E".sal >= "S".LOSAL and "E".sal <= "S".HISAL
        
--sql192
select "E".ename, "E".deptno, "E".sal, "S".grade
        from emp "E" , salgrade "S"
        where "E".sal >= "S".LOSAL and "E".sal <= "S".HISAL


--2
--����ÿ�����ŵı�� �ò�������Ա����ƽ������ ƽ�����ʵĵȼ�
--sql199
select "T".deptno, "T"."avg_sal" "����ƽ������", S.grade "���ʵȼ�"
        from (
             select deptno, avg(sal) as "avg_sal"         --����ʱ�������������ı�
                from emp 
                group by deptno
        ) "T"
        join salgrade "S"
        on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
--�ȼ���
select "T".deptno, "T"."avg_sal" "����ƽ������", S.grade "���ʵȼ�"
       from salgrade "S"
       join(
              select deptno, avg(sal) as "avg_sal"         
                from emp 
                group by deptno
       ) "T"
       on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
--�ȼ��� SQL192
select "T".deptno, "T"."avg_sal" "����ƽ������", S.grade "���ʵȼ�"
       from salgrade "S", (
                             select deptno, avg(sal) as "avg_sal"         
                                  from emp 
                                  group by deptno
                          ) "T"
       where "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal


--3
--����ÿ�����ŵı�� �������� �ò�������Ա����ƽ������ ƽ�����ʵĵȼ�
select "T".deptno, "D".dname "��������", "T"."avg_sal" "����ƽ������", S.grade "���ʵȼ�"
        from (
             select deptno, avg(sal) as "avg_sal"         --����ʱ�������������ı�
                from emp 
                group by deptno
        ) "T"
        join salgrade "S"
        on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
        join dept "D"
        on "T".deptno = "D".deptno


--4
--���emp���������쵼����Ϣ
select * from     --�Լ�д��,���Ե�������쵼����Ϣ��һ������Ļ�������֮�����Ϣ
            (    select mgr 
                 from emp 
                 group by mgr
                 having mgr is not null
            ) "T"
            join emp "E"
            on "T".mgr = "E".empno
--�ȼ���
select * from emp          --��ʦ��
            where empno in (select mgr from emp)
      
--˼����
--���emp�������з��쵼����Ϣ   
select * from emp          
            where empno not in (select mgr from emp)   
        --error, in��null�����������������
select * from emp          
            where empno not in (select mgr from emp where mgr is not null)
       --ok


--5
--���ƽ��нˮ��ߵĲ��ŵı�źͲ��ŵ�ƽ������
select top 1 deptno, avg(sal) "����ƽ������"
        from emp
        group by deptno
        order by avg(sal) desc

select "E".* 
          from (
                   select deptno, AVG(sal) "avg_sal"
                   from emp 
                   group by deptno
          )"E"
          where "E"."avg_sal" = (
                   select MAX("avg_sal") from (
                                     select deptno, AVG(sal) "avg_sal"
                                        from emp 
                                        group by deptno
                                )"T"
          )
          


--6
--��һ���˹�����ͣ���������ų�����
--ʣ�µ����й�����͵�����ǰ3���˵����� ���� ���ű�� �������� ���ʵȼ� ���
select top 3  "T".ename, "T".sal, "T".deptno, "D".dname, "S".GRADE
        from (
                  select * 
                  from emp "E"
                  where sal > (select MIN(sal) from emp )
        ) "T"           --���������������Χ��һ���Ļ���û�г�ͻ
        join dept "D"
        on "T".deptno = "D".deptno
        join salgrade "S"
        on "T".sal between "S".LOSAL and "S".HISAL
        order by "T".sal asc