--函数的分类
--单行函数:每一行返回一个值
--多行函数:多行返回一个值，聚合函数是多行函数

select lower(ename) from emp;    --最终返回的是14行, lower()是单行函数
select max(sal) from emp;  --返回1行,max()是多行函数

--聚合函数的分类
--max()
--min()
--avg()
--count()  求个数

select count(*) from emp;     --返回emp表中所有记录的个数
select count(deptno) from emp; --返回值是14,说明deptno重复的记录也被当作有效的记录
select count(distinct deptno) from emp; --返回值是3，统计deptno不重复的个数
select count(comm) from emp;   --返回值是4,说明comm为null的记录不会当作有效的记录

select max(sal) "最高工资", min(sal) "最低工资", count(*) "员工人数" from emp;
select MAX(sal), lower(ename) from emp;   --error,单行函数和多行函数不能混用