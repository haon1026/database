create table dept
(
   dept_id int primary key,
   dept_name nvarchar(100) not null,
   dept_address nvarchar(100),
)

create table emp
( --����д��{
   emp_id int constraint pk_id_hahaha primary key,
   emp_name nvarchar(20) not null,
   emp_sex nchar(1),
   dept_id int constraint fk_dept_id_heihei foreign key references dept(dept_id)     --��β���ɼӿɲ���
)

create table student
(
   stu_id int primary key,
   stu_sal int check (stu_sal>=1000 and stu_sal<=8000),   --checkԼ��
   stu_sex nchar(1) default('��'),   ---defaultԼ����()����ʡ �����ݿ����ַ����Ǳ�����''������ ""��ʾ���ݵ�����
   stu_name nvarchar(200) unique     --uniqueԼ��, ��֤���Բ��ظ�������Ϊ�գ�SQL����ֻ����һ��
)
insert into student(stu_id, stu_sal, stu_name) values (1, 1000,'����');
insert into student values (2, 2000, 'Ů', 'С÷');
insert into student values (3, 2000, 'Ů', null);