--�����ķ���
--���к���:ÿһ�з���һ��ֵ
--���к���:���з���һ��ֵ���ۺϺ����Ƕ��к���

select lower(ename) from emp;    --���շ��ص���14��, lower()�ǵ��к���
select max(sal) from emp;  --����1��,max()�Ƕ��к���

--�ۺϺ����ķ���
--max()
--min()
--avg()
--count()  �����

select count(*) from emp;     --����emp�������м�¼�ĸ���
select count(deptno) from emp; --����ֵ��14,˵��deptno�ظ��ļ�¼Ҳ��������Ч�ļ�¼
select count(distinct deptno) from emp; --����ֵ��3��ͳ��deptno���ظ��ĸ���
select count(comm) from emp;   --����ֵ��4,˵��commΪnull�ļ�¼���ᵱ����Ч�ļ�¼

select max(sal) "��߹���", min(sal) "��͹���", count(*) "Ա������" from emp;
select MAX(sal), lower(ename) from emp;   --error,���к����Ͷ��к������ܻ���