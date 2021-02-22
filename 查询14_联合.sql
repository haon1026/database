--输出每个员工的姓名 工资 上司的姓名
select "E1".ename, "E1".sal, "E2".ename "上司"
        from emp "E1"
        join emp "E2"
        on "E1".mgr = "E2".EMPNO
union
select ename, sal, '已是最大老板' from emp where mgr is null     --ename是字符串, '已是最大老板'也是字符串

--联合:表和表之间以纵向的方式连接在一起