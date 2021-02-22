create table dept
(
   dept_id int primary key,
   dept_name nvarchar(100) not null,
   dept_address nvarchar(100),
)

create table emp
( --不能写成{
   emp_id int constraint pk_id_hahaha primary key,
   emp_name nvarchar(20) not null,
   emp_sex nchar(1),
   dept_id int constraint fk_dept_id_heihei foreign key references dept(dept_id)     --结尾，可加可不加
)

create table student
(
   stu_id int primary key,
   stu_sal int check (stu_sal>=1000 and stu_sal<=8000),   --check约束
   stu_sex nchar(1) default('男'),   ---default约束，()可以省 在数据库中字符串是必须用''括起来 ""表示数据的名字
   stu_name nvarchar(200) unique     --unique约束, 保证属性不重复，允许为空，SQL有且只能有一列
)
insert into student(stu_id, stu_sal, stu_name) values (1, 1000,'张三');
insert into student values (2, 2000, '女', '小梅');
insert into student values (3, 2000, '女', null);