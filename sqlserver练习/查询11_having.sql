--having:对分组之后的信息进行过滤

--输出部门平均工资大于2000的部门编号 部门的平均工资
select deptno, avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having avg(sal) > 2000;
       
--判断下列sql语句是否正确
select deptno, avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having deptno > 10;
       
select deptno, avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having "部门平均工资" > 2000;
       
select deptno, avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having count(*) > 3;
       
select deptno, count(*), avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having count(*) > 3;
       
       
select deptno, avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having ename like '%A%';
       
select deptno as "部门编号", avg(sal) as "部门平均工资"
       from emp
       group by deptno
       having deptno > 1;
       
--把姓名不包含A的所有的员工按部门编号分组
--统计输出部门平均工资大于2000的部门的部门编号 部门的平均工资
select deptno as "部门编号", avg(sal) as "部门平均工资"
          from emp
          where ename not like '%A%'
          group by deptno
          having avg(sal) > 2000;
          
--把工资大于3000所有的员工按部门编号分组
--统计输出部门平均工资大于2000的部门的部门编号 部门的平均工资
select deptno as "部门编号", avg(sal) as "部门平均工资", count(*) "部门人数", MAX(sal) "部门的最高工资"
          from emp
          where sal > 2000       --where是对原始的记录过滤
          group by deptno
          having avg(sal) > 3000;   --having对分组之后的记录过滤
         
--判断
select deptno as "部门编号", avg(sal) as "部门平均工资", count(*) "部门人数", MAX(sal) "部门的最高工资"
          from emp    
          group by deptno
          having avg(sal) > 3000
          where sal > 2000;  
       
--总结：所有select的参数顺序是不允许变化的，否则编译时出错


select COUNT(*) from emp having AVG(sal) > 1000;
             --没使用group by  但使用了having,意味着having把所有的记录当作一组来进行过滤，极少用
         
select sal into emp2 from emp where sal > 1000;
select * from emp2;
       