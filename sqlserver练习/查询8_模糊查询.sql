--ͨ���
-- % ��ʾ����0�������ַ�
select * from emp
     where ename like '%A%';    --enameֻҪ������ĸ�����    
select * from emp
     where ename like 'A%';    --enameֻҪ����ĸ��A�ľ����

-- _ ��ʾ���ⵥ���ַ�
select * from emp
     where ename like '_A%';    --enameֻҪ�ڶ�����ĸ��A�ľ����
     
-- [a-f] a��f�е����ⵥ���ַ� ֻ����a b c d e f�е�����һ���ַ�
select * from emp
     where ename like '_[A-F]%'; --��ename�еڶ����ַ���A��B��C��D��E��F�ļ�¼���
     
--[a,f]  a��f
--[^a-c] ����a��Ҳ����b,Ҳ����c�����ⵥ���ַ�
select * from emp
     where ename like '_[^A-F]%'; --��ename�еڶ����ַ�����A��B��C��D��E��F�ļ�¼���

--''��ʾ�ַ����� ""��ʾ��������ֻ����
     


create table student
(
    name nvarchar(20) null,
    age int 
);

insert into student values('����', 88);
insert into student values('Tom', 88);
insert into student values('a_b', 88);
insert into student values('c%d', 88);
insert into student values('abc_fe', 88);
insert into student values('haobin', 88);
insert into student values('Haobin', 88);
insert into student values('c%', 88);
insert into student values('long''s', 88);
select * from student;

select * from student where name like '%\%%' escape '\';    --��name�а�����%�����
select * from student where name like '%\_%' escape '\';    --��name�а�����_�����