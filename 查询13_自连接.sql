--�þۺϺ�����нˮ��ߵ�Ա������Ϣ
select * from emp where sal = (select max(sal) from emp)

--��������нˮ��ߵ�Ա������Ϣ
select * from emp 
        where empno not in (
            select distinct "E1".empno from emp "E1", emp "E2"
            where  "E1".sal < "E2".sal
        )
             