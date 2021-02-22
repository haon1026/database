select "E".ename "员工姓名", "D".deptno "部门名称"
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
      
      
--select ... from A, B 的用法
--emp是14行8列， dept是5行3列
select * from emp, dept;
         --产生的结果：输出70行，11列，行数是A和B的乘积，列数是A和B之和或者说把A表的每一条记录都和B表的每一条记录组合在一起，形成的是笛卡尔积
         
         
--select ... from A, B where ... 的用法
--对select ... from A, B产生的笛卡尔积用where中的条件进行过滤
select * 
       from emp, dept
       where empno = 7369
       --产生的结果：输出5行，11列
       
       
--select ... from A join B on ... 的用法
--输出70行，11列
select *
      from emp "E"
      join dept "D"   --join是连接
      on 1=1       --on连接条件,不能省 有join就必须有on

--输出70行，2列
select "E".ename "员工姓名", "D".deptno "部门名称"
      from emp "E"
      join dept "D"
      on 1=1
      
--判断
select deptno
      from emp "E"
      join dept "D"
      on 1=1
      
select "E".deptno
      from emp "E"
      join dept "D"
      on 1=1
      
      
select "E".ename "员工姓名", "D".deptno "部门名称"
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
--等价于
select "E".ename "员工姓名", "D".deptno "部门名称"
      from emp "E", dept "D"
      where "E".deptno = "D".deptno
      
--select ... from A, B where ...是sql192标准
--select ... from A join B on ...是sql199标准
--输出结果一样，推荐使用SQL199标准


select * from emp, dept
--把工资大于2000的员工的姓名和部门的名称输出
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
          
          
--把工资大于2000的员工的姓名和部门的名称和工资的等级输出
--sql199标准

--行是350，列是14
select *
        from emp "E"
        join dept "D"
        on 1=1
        join salgrade "G"
        on 1=1
        
--sql199标准        
select "E".ename, "D".dname, "G".GRADE
        from emp "E"
        join dept "D"
        on "E".deptno = "D".deptno   --and "E".sal > 2000
        join salgrade "G"
        on "E".sal >= "G".LOSAL and "E".sal <= "G".HISAL
        where "E".sal > 2000
        
        
--sql192标准
select "E".ename, "D".dname, "G".GRADE
        from emp "E", dept "D", SALGRADE "G"
        where "E".deptno = "D".deptno and "E".sal >= "G".LOSAL and "E".sal <= "G".HISAL and "E".sal > 2000
        