--1
--求出每个员工的姓名 部门编号 薪水 和薪水的等级
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
--查找每个部门的编号 该部门所有员工的平均工资 平均工资的等级
--sql199
select "T".deptno, "T"."avg_sal" "部门平均工资", S.grade "工资等级"
        from (
             select deptno, avg(sal) as "avg_sal"         --建临时表，再连接其他的表
                from emp 
                group by deptno
        ) "T"
        join salgrade "S"
        on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
--等价于
select "T".deptno, "T"."avg_sal" "部门平均工资", S.grade "工资等级"
       from salgrade "S"
       join(
              select deptno, avg(sal) as "avg_sal"         
                from emp 
                group by deptno
       ) "T"
       on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
--等价于 SQL192
select "T".deptno, "T"."avg_sal" "部门平均工资", S.grade "工资等级"
       from salgrade "S", (
                             select deptno, avg(sal) as "avg_sal"         
                                  from emp 
                                  group by deptno
                          ) "T"
       where "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal


--3
--查找每个部门的编号 部门名称 该部门所有员工的平均工资 平均工资的等级
select "T".deptno, "D".dname "部门名称", "T"."avg_sal" "部门平均工资", S.grade "工资等级"
        from (
             select deptno, avg(sal) as "avg_sal"         --建临时表，再连接其他的表
                from emp 
                group by deptno
        ) "T"
        join salgrade "S"
        on "T".avg_sal <= "S".hisal and "T".avg_sal >= "S".losal
        join dept "D"
        on "T".deptno = "D".deptno


--4
--求出emp表中所有领导的信息
select * from     --自己写的,可以单独输出领导的信息，一起输出的话是连接之后的信息
            (    select mgr 
                 from emp 
                 group by mgr
                 having mgr is not null
            ) "T"
            join emp "E"
            on "T".mgr = "E".empno
--等价于
select * from emp          --老师答案
            where empno in (select mgr from emp)
      
--思考体
--求出emp表中所有非领导的信息   
select * from emp          
            where empno not in (select mgr from emp)   
        --error, in与null的组合所带来的问题
select * from emp          
            where empno not in (select mgr from emp where mgr is not null)
       --ok


--5
--求出平均薪水最高的部门的编号和部门的平均工资
select top 1 deptno, avg(sal) "部门平均工资"
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
--有一个人工资最低，把这个人排除掉，
--剩下的人中工资最低的人中前3个人的姓名 工资 部门编号 部门名称 工资等级 输出
select top 3  "T".ename, "T".sal, "T".deptno, "D".dname, "S".GRADE
        from (
                  select * 
                  from emp "E"
                  where sal > (select MIN(sal) from emp )
        ) "T"           --如果别名重名，范围不一样的话就没有冲突
        join dept "D"
        on "T".deptno = "D".deptno
        join salgrade "S"
        on "T".sal between "S".LOSAL and "S".HISAL
        order by "T".sal asc