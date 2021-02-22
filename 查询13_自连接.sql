--用聚合函数求薪水最高的员工的信息
select * from emp where sal = (select max(sal) from emp)

--自连接求薪水最高的员工的信息
select * from emp 
        where empno not in (
            select distinct "E1".empno from emp "E1", emp "E2"
            where  "E1".sal < "E2".sal
        )
             