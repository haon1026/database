select * from emp;

--�������ǿյ�Ա������Ϣ
select * from emp where comm <> null;   --���Ϊ�� error
select * from emp where comm != null;   --���Ϊ�� error
select * from emp where comm = null;   --���Ϊ�� error
   --�ܽ᣺null���ܲ���<> !=����
  
--null���Բ���is not is
select * from emp where comm is null;  --�������Ϊ�յ�Ա������Ϣ
select * from emp where comm is not null;   --�������Ϊ�յ�Ա������Ϣ

--�κ����͵����ݶ�����Ϊnull
create table t1 (name nvarchar(200), cnt int, riqi datetime)
insert into t1 values (null, null, null);
select * from t1;

--���ÿ��Ա�������� ��н�������˽��� comm������һ��Ľ���
select empno,ename, sal*12+comm as "��н" from emp;  
         --error ������֤����:null���ܲ����κ���ѧ���㣬��������ԶΪ��
--��ȷ��д��       
select ename, sal*12+isnull(comm, 0) "��н" from emp;
       --isnull(comm, 0)  ���comm��null�ͷ���0�����򷵻�comm��ֵ