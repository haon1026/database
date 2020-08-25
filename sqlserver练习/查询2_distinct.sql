select deptno  from emp;    --14行记录,不是3行记录,从emp中读取每一条记录，寻找deptno输出，如果没有找到，输出常量10000

select distinct deptno from emp;  --distinct deptno会过滤掉重复的deptno
select distinct comm from emp;   --distinct也可以过滤掉重复的null，或者说有多个null只输出一个
select distinct comm, deptno from emp;   --把comm和deptno的组合进行过滤
select comm, distinct deptno from emp;   --语法错误

select 10000 from emp;     --14行记录