select top 2 * from emp;

select top 15 percent * from emp;   --输出的是3个,不是2个


--如何把1500到3000之间工资最高的前4个输出
select * from emp where sal between 1500 and 3000;

select top 4 * from emp 
               where sal between 1500 and 3000
               order by sal desc;    --desc降序，不写默认是升序
