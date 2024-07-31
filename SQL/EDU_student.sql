承硑絤策
钡翴龄--穝
CREATE TABLE BBB
(
  AAA VARCHAR2(20) 
, BBB VARCHAR2(20) 
);
钡ゴcode承
create table CCC
(
 AAA VARCHAR2(20)
 ,BBB VARCHAR2(20)
 );
 
 select絤策
 create table test as select * from SQL_EMP 
 
 select EMP_id,EMP_NM
 from test
 where dep='╰参秨祇场';
 
 primary key絤策
 create table SQL_EMP1(
 EMP_ID char(8 byte)primary key,
 EMP_NM nvarchar2(20),
 ID varchar2(10 byte),
 TEL varchar2(10 byte),
 DEP nvarchar2(20));
 
 foreign key 承ミ
 create table SQL_customer1(
 ID varchar2(10 byte)primary key,
 name nvarchar2(20),
 emp char(8 byte) references SQL_EMP1(EMP_ID))
 
 foreign key 承
 alter table SQL_CUSTOMER1
 add foreign key(EMP) references SQL_EMP1(EMP_ID);
 
 эforeign key 嘿
 alter table SQL_CUSTOMER1 add constraint SQL_CUSTOMER_FK1 foreign key(EMP)references SQL_EMP1(EMP_ID);
 
 index
 create index SQL_EMP_INDEX1 on SQL_EMP1(DEP)
 
 承water1 table
 create table water1 as select * from SQL_TAOYUAN_WATER 
 
 э逆嘿
 select SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from water1;
 
 ゑ耕笲衡絤策
 select * from SQL_EMP
 where EMP_ID > '0005111';
 
 select * from SQL_EMP 
 where DEP='╰参秨祇场';
 
 呸胯笲衡絤策
 ╰参秨祇场﹎
 select* from SQL_EMP
 where DEP='╰参秨祇场' and EMP_NM like'%';
 
 ╰参秨祇场秨祇╰参场戈
 select* from SQL_EMP
 where DEP='╰参秨祇场' or DEP='秨祇╰参场';
 
 ╰参秨祇场﹎秨祇╰参场﹎甝
  select* from SQL_EMP
  where (DEP='╰参秨祇场'and EMP_NM like'%')or (DEP='秨祇╰参场'and EMP_NM like'甝%');

э逆嘿穎皌兵ン  
  select SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from water1
 where SERIAL_NUMBER>365;
 
 between絤策
 select*from CARS
 where min_price between '300' and '600'
 
 in 絤策
 select *from CARS
 where min_price in ('300' ,'600');
 ゑ耕in 籔between絤策挡狦祇瞷inΤ程基300の600戈τ礚300600丁data
 
 between 挡 or 絤策
 select*from CARS
 where min_price between '300' and '600'
 or min_price ='700';
 
 like 絤策
 select * from cars
 where manufacturer like'__W' 
 and price ='700';
 
 策肈き拜肈
 (琩高戈糶璶璓)
 select SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 where (hydrogen=7.5 or hydrogen=8)and chlorine>0.6 and place ='T22';
 
 拜肈
 select SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 where serial_number between '521' and'529' 
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 );

distinct揭ㄒ肈
select distinct manufacturer from cars

select distinct manufacturer , count(*) from cars group by manufacturer;

select distinct DEP , EMP_NM 
fromSQL_EMP;

絤策せ
select distinct PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 琩高絤策
 select*
 from SQL_EMP
 where EMP_ID in(select distinct EMP from SQL_CUSTOMER)
 
 Union絤策
 select EMP_NM,ID from SQL_EMP
 union all
 select NAME,ID from SQL_CUSTOMER;
 
 絤策
 ゑ耕union のunion all畉
 select distinct PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 union all
 select distinct PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 ;
 
 絤策せ ノ琩高distintselect as
 select PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from (
 select distinct PLACE
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6)
 )
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 select PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇
 from SQL_TAOYUAN_WATER
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 join絤策
 select CUT.ID,CUT.NAME,EMP.EMP_NM
 from SQL_CUSTOMER CUT
 inner join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 left join絤策
 select CUT.ID,CUT.NAME,EMP.EMP_NM
 from SQL_CUSTOMER CUT
 left join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 right join絤策
  select CUT.ID, CUT.NAME, EMP.EMP_NM
 from SQL_CUSTOMER CUT
 right join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 絤策(⊿暗ㄓ)
 材肈
 select data.翴,SQL_TAOYUAN_REGIONS.place
 from
 (
 select distinct PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇,
  water_system as 絪腹
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 union 
 select distinct PLACE as 翴,
 SERIAL_NUMBER as 腹,
 HYDROGEN as 睟瞒緻计,
 TURBIDITY as 緽,
 CHLORINE as パΤ緇,
 water_system as 絪腹
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 ) data
 left join SQL_TAOYUAN_REGIONS 
 on data.翴=SQL_TAOYUAN_REGIONS.place 
 
 left join SQL_TAOYUAN_REGIONS 
 on data.絪腹=SQL_TAOYUAN_REGIONS.serial ;
 
 select * from SQL_TAOYUAN_WATER;
 
 絤策
 select dataTest.腹, dataTest.睟瞒緻计, dataTest.緽, dataTest.パΤ緇粹, 
 sql_taoyuan_regions.place, 
 sql_taoyuan_regions.township,
 sql_taoyuan_water_system.water_purification_plant, 
 sql_taoyuan_water_system.water_supply, 
 sql_taoyuan_water_system.serial
    --WATER_PURIFICATION_PLANT as 瞓紅,
    --WATER_SUPPLY as ㄑ╰参,
    --TOWNSHIP as ︽現跋,
    --PLACE as 隔琿
 from  ( 
    select distinct PLACE as 翴,
        SERIAL_NUMBER as 腹,
        HYDROGEN as 睟瞒緻计,
        TURBIDITY as 緽,
        CHLORINE as パΤ緇粹,
        WATER_SYSTEM as ㄑ╰参
    from SQL_TAOYUAN_WATER
    where (serial_number>520 and serial_number<530)
 
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
    union all
    select distinct PLACE as 翴,
        SERIAL_NUMBER as 腹,
        HYDROGEN as 睟瞒緻计,
        TURBIDITY as 緽,
        CHLORINE as パΤ緇粹,
        WATER_SYSTEM as ㄑ╰参
    from SQL_TAOYUAN_WATER
    where (serial_number>520 and serial_number<530)
    or (CHLORINE in('0.76','0.77','0.66')
    and HYDROGEN !=7.8 
    and TURBIDITY=0.6 )
 ) dataTest
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 left join SQL_TAOYUAN_REGIONS
 on SQL_TAOYUAN_REGIONS.serial = dataTest.翴
 left join SQL_TAOYUAN_WATER_SYSTEM
 on sql_taoyuan_water_system.serial=dataTest.ㄑ╰参;
 
 
 
 
 
 SQL材绑
 
group by 絤策
select count(employee_ID), employees.department_ID 
from employees
group by department_ID
; 

group by +join(ゼЧΘ)

select departments.department_name, count(employee_ID), employees.department_ID 
from employees
group by department_ID
; 



having  


--承table
create table sql_emp_his as select * from sql_emp;
TRUNCATE TABLE sql_emp_his;

insert絤策

insert into  sql_emp_his
select emp_id, 'フ', 'C300300300', null, '戈癟狾遏'
from sql_emp
where emp_id='00012345';

update絤策

update sql_emp_his
set TEL='777'
where EMP_NM='フ';

delete絤策
delete from sql_emp_his 
where id='C300300300' and tel='888';

select * from sql_emp_his;
select * from sql_emp;

揭绑絤策
insert into PRACTICE_EMP_123 () 

PPT SQL4 P.13 絤策
select last_name, job_id, salary 
from employees 
where job_id =
    (select job_id 
    from employees
    where job_id='141')
and
    salary >
    (select salary 
    from employees
    where employee_id='143');





    
any絤策
select employee_id, last_name, job_id, salary
from employees
where salary < any
            (select salary
            from employees
            where job_id='it_prog')
and job_id<>'it_prog';
 
all 絤策
select employee_id, last_name, job_id, salary
from employees
where salary < all
            (select salary
            from employees
            where job_id='it_prog')
and job_id<>'it_prog';

タ砏て絤策


糶
select employee_id, last_name, department_id
from employees
where last_name=' higgins';

select employee_id, last_name, department_id
from employees
where  LOWER(last_name)=' higgins';


PPT SQL4 P.14 絤策
select employee_id, 
--concat(first_name, last_name) name, job_id, LENGTH(last_name),
--instr(last_name, 'a') "contains a 'a' ?"
from employees;
--where substr(job_id, 4)='rep';


select * from employees ;

