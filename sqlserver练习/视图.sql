--求出平均工资最高的部门的编号和部门的平均工资
create view c$_emp_1
as 
      select deptno, AVG(sal) "avg_sal"
      from emp
      group by deptno
      
select * from c$_emp_1

select * from c$_emp_1 
          where avg_sal = (select MAX(avg_sal) from c$_emp_1)