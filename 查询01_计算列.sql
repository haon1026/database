select * from emp;
      -- *��ʾ����
      -- from emp��ʾ��emp���ѯ
      
      
      
select empno, ename from emp;

select ename, sal from emp;

select ename, sal*12 as "��н" from emp;
           --as����ʡ�ԣ���ס��"��н" ��Ҫд�� '��н' Ҳ��Ҫд�� ��н����������ֲ

select ename, sal*12 as "��н", sal "��н", job from emp;

select 5 from emp;
           --�����У���ok��
           --�����������emp������� ÿ��ֻ��һ���ֶΣ�ֵ��5
          
select 5;
        -- �����У���ok��
        -- ���Ƽ�