drop table student1;  --ɾ��student1

create table student1
(
    stu_id int primary key,
    stu_name nvarchar(50) unique,
    stu_mail nvarchar(50) not null,
    stu_sal int check (stu_sal>=1000 and stu_sal<=8000),
    stu_sex nchar(1) default'��'
)

insert student1 values(1, '����', '1001.com', 5000);  --error
insert student1 (stu_id, stu_name, stu_mail, stu_sal) values(2, '����', '1002.com', 5000);  --ok
insert student1 (stu_id, stu_mail, stu_sal) values(3, '1003.com', 4000);   --stu_nameĬ����null

select * from student1;