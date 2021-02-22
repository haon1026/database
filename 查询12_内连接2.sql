--内连接
--sql192
--输出的行数肯定是dept表行数的倍数
select * from emp, dept
       where emp.deptno = 10
    
--输出的行数肯定是emp表行数的倍数   
select * from emp, dept
       where dept.deptno = 10    --过滤条件，不是连接条件
       
--sql199实现
select *
       from emp
       join dept
       on emp.deptno = dept.deptno   --也不对，on中指定的是连接条件
       having dept.deptno = 10    --error.having是对分组之后的过滤，这里无分组
       
select * 
       from emp
       join dept
       on 1=1
       where dept.deptno = 10
       
select * 
       from emp
       join dept
       on dept.deptno = 10
       
--输出姓名不包含A的所有员工中工资最高的前三名的每个员工的姓名 工资 工资等级 部门名称
select top 3 "E".ename, "E".sal, "S".grade, "D".dname
      from emp "E"
      join dept "D"
      on "E".deptno = "D".deptno
      join salgrade "S"
      on "E".sal between "S".losal and "S".hisal
      where "E".ename not like '%B%'
      order by "E".sal desc