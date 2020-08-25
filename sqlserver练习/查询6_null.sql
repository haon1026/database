select * from emp;

--输出奖金非空的员工的信息
select * from emp where comm <> null;   --输出为空 error
select * from emp where comm != null;   --输出为空 error
select * from emp where comm = null;   --输出为空 error
   --总结：null不能参与<> !=运算
  
--null可以参与is not is
select * from emp where comm is null;  --输出奖金为空的员工的信息
select * from emp where comm is not null;   --输出奖金不为空的员工的信息

--任何类型的数据都允许为null
create table t1 (name nvarchar(200), cnt int, riqi datetime)
insert into t1 values (null, null, null);
select * from t1;

--输出每个员工的姓名 年薪（包含了奖金） comm假设是一年的奖金
select empno,ename, sal*12+comm as "年薪" from emp;  
         --error 本程序证明了:null不能参与任何数学运算，否则结果永远为空
--正确的写法       
select ename, sal*12+isnull(comm, 0) "年薪" from emp;
       --isnull(comm, 0)  如果comm是null就返回0，否则返回comm的值