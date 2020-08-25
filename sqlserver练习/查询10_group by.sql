--use scott

--输出每个部门的编号和该部门的平均工资
select deptno, AVG(sal) as "部门平均工资" 
          from emp
          group by deptno;
          
elect deptno, AVG(sal) as "部门平均工资", ename 
          from emp
          group by deptno;       --error
          
--判断下面语句是否正确
select deptno, ename
         from emp
         group by deptno;    --分组之后统计的是组的整体信息，ename是组内的信息
         
--总结：group by 之后select中只能出现分组后的整体信息，不能出现组内的详细信息

--group a,b的用法，先按a分组，如果a相同，再按b分组，最终统计的是最先分组的信息
select deptno, job, avg(sal) 
        from emp
        group by deptno, job; --ok
        
select deptno, job, sal
        from emp
        group by deptno, job; --error

--排序        
select deptno, job, avg(sal) "平均工资", count(*) "员工个数", sum(sal) "总工资"
        from emp
        group by deptno, job
        order by deptno;
        
        
select mgr, COUNT(*) from emp group by mgr;