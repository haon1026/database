--通配符
-- % 表示任意0个或多个字符
select * from emp
     where ename like '%A%';    --ename只要含有字母就输出    
select * from emp
     where ename like 'A%';    --ename只要首字母是A的就输出

-- _ 表示任意单个字符
select * from emp
     where ename like '_A%';    --ename只要第二个字母是A的就输出
     
-- [a-f] a到f中的任意单个字符 只能是a b c d e f中的任意一个字符
select * from emp
     where ename like '_[A-F]%'; --把ename中第二个字符是A或B或C或D或E或F的记录输出
     
--[a,f]  a或f
--[^a-c] 不是a，也不是b,也不是c的任意单个字符
select * from emp
     where ename like '_[^A-F]%'; --把ename中第二个字符不是A或B或C或D或E或F的记录输出

--''表示字符串， ""表示对象的名字或别名
     


create table student
(
    name nvarchar(20) null,
    age int 
);

insert into student values('张三', 88);
insert into student values('Tom', 88);
insert into student values('a_b', 88);
insert into student values('c%d', 88);
insert into student values('abc_fe', 88);
insert into student values('haobin', 88);
insert into student values('Haobin', 88);
insert into student values('c%', 88);
insert into student values('long''s', 88);
select * from student;

select * from student where name like '%\%%' escape '\';    --把name中包含有%的输出
select * from student where name like '%\_%' escape '\';    --把name中包含有_的输出