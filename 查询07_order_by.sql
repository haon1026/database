--asc是升序的意思 默认可以不写  desc是降序

select * from emp order by sal;   --默认是按照升序排序
select * from emp order by deptno, sal;   --先按照dept升序排序，如果deptno相同，再按sal升序排序

select * from emp order by deptno desc, sal;   
        --先按deptno降序，如果deptno相同，再按照sal升序排序
        --记住sal是升序不是降序
        --order by a desc, b, c, d    desc只对a产生影响，不会对b,c,d产生影响
        
select * from emp order by deptno, sal desc;
        --问题：desc是否会对deptno产生影响
        --答案：不会
        --先按deptno升序，如果deptno相同，再按sal降序排序