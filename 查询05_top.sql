select top 2 * from emp;

select top 15 percent * from emp;   --�������3��,����2��


--��ΰ�1500��3000֮�乤����ߵ�ǰ4�����
select * from emp where sal between 1500 and 3000;

select top 4 * from emp 
               where sal between 1500 and 3000
               order by sal desc;    --desc���򣬲�дĬ��������
