select * from emp;
      -- *表示所有
      -- from emp表示从emp表查询
      
      
      
select empno, ename from emp;

select ename, sal from emp;

select ename, sal*12 as "年薪" from emp;
           --as可以省略，记住："年薪" 不要写成 '年薪' 也不要写成 年薪，有利于移植

select ename, sal*12 as "年薪", sal "月薪", job from emp;

select 5 from emp;
           --可运行，是ok的
           --输出的行数是emp表的行数 每行只有一个字段，值是5
          
select 5;
        -- 可运行，是ok的
        -- 不推荐