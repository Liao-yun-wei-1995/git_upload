�гy���m��
�����b����I�k��--�s�ت��
CREATE TABLE BBB
(
  AAA VARCHAR2(20) 
, BBB VARCHAR2(20) 
);
������code�Ыت��
create table CCC
(
 AAA VARCHAR2(20)
 ,BBB VARCHAR2(20)
 );
 
 select�m��
 create table test as select * from SQL_EMP 
 
 select EMP_id,EMP_NM
 from test
 where dep='�t�ζ}�o��';
 
 primary key�m��
 create table SQL_EMP1(
 EMP_ID char(8 byte)primary key,
 EMP_NM nvarchar2(20),
 ID varchar2(10 byte),
 TEL varchar2(10 byte),
 DEP nvarchar2(20));
 
 foreign key �Ыت��ɫإ�
 create table SQL_customer1(
 ID varchar2(10 byte)primary key,
 name nvarchar2(20),
 emp char(8 byte) references SQL_EMP1(EMP_ID))
 
 foreign key �Ыئb�w�s�b���
 alter table SQL_CUSTOMER1
 add foreign key(EMP) references SQL_EMP1(EMP_ID);
 
 ��foreign key �W��
 alter table SQL_CUSTOMER1 add constraint SQL_CUSTOMER_FK1 foreign key(EMP)references SQL_EMP1(EMP_ID);
 
 ��index
 create index SQL_EMP_INDEX1 on SQL_EMP1(DEP)
 
 ��water1 table
 create table water1 as select * from SQL_TAOYUAN_WATER 
 
 �����W��
 select SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from water1;
 
 ����B��m��
 select * from SQL_EMP
 where EMP_ID > '0005111';
 
 select * from SQL_EMP 
 where DEP='�t�ζ}�o��';
 
 �޿�B��m��
 �t�ζ}�o���m����
 select* from SQL_EMP
 where DEP='�t�ζ}�o��' and EMP_NM like'��%';
 
 �t�ζ}�o���B�}�o�t�γ������
 select* from SQL_EMP
 where DEP='�t�ζ}�o��' or DEP='�}�o�t�γ�';
 
 �t�ζ}�o���m���B�}�o�t�γ��m�]
  select* from SQL_EMP
  where (DEP='�t�ζ}�o��'and EMP_NM like'��%')or (DEP='�}�o�t�γ�'and EMP_NM like'�]%');

�����W�ٷf�t����  
  select SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from water1
 where SERIAL_NUMBER>365;
 
 between�m��
 select*from CARS
 where min_price between '300' and '600'
 
 in �m��
 select *from CARS
 where min_price in ('300' ,'600');
 �i�H���in �Pbetween�m�ߪ����G�A�i�o�{in�u���]�t�̧C���欰300��600����ƦӵL�A300��600����data
 
 between ���X or �m��
 select*from CARS
 where min_price between '300' and '600'
 or min_price ='700';
 
 like �m��
 select * from cars
 where manufacturer like'__W' 
 and price ='700';
 
 ���D�����D�@
 (�d�߸�ƪ��j�p�g�n�@�P)
 select SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 where (hydrogen=7.5 or hydrogen=8)and chlorine>0.6 and place ='T22';
 
 ���D�G
 select SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 where serial_number between '521' and'529' 
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 );

distinct�W�Ҩ��D
select distinct manufacturer from cars

select distinct manufacturer , count(*) from cars group by manufacturer;

select distinct DEP , EMP_NM 
fromSQL_EMP;

�m�ߤ�
select distinct PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 �l�d�߽m��
 select*
 from SQL_EMP
 where EMP_ID in(select distinct EMP from SQL_CUSTOMER)
 
 Union�m��
 select EMP_NM,ID from SQL_EMP
 union all
 select NAME,ID from SQL_CUSTOMER;
 
 �m�ߤC
 ���union ��union all���t�O
 select distinct PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 union all
 select distinct PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 ;
 
 �m�ߤ� �Q�Τl�d��distint��Aselect as
 select PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from (
 select distinct PLACE
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6)
 )
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 select PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��
 from SQL_TAOYUAN_WATER
 order by TURBIDITY asc,SERIAL_NUMBER desc;
 
 join�m��
 select CUT.ID,CUT.NAME,EMP.EMP_NM
 from SQL_CUSTOMER CUT
 inner join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 left join�m��
 select CUT.ID,CUT.NAME,EMP.EMP_NM
 from SQL_CUSTOMER CUT
 left join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 right join�m��
  select CUT.ID, CUT.NAME, EMP.EMP_NM
 from SQL_CUSTOMER CUT
 right join SQL_EMP EMP on CUT.EMP=EMP.EMP_ID
 
 �m�ߤK(�S���X��)
 �Ĥ@�p�D
 select data.�a�I,SQL_TAOYUAN_REGIONS.place
 from
 (
 select distinct PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��,
  water_system as �s��
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 union 
 select distinct PLACE as �a�I,
 SERIAL_NUMBER as �Ǹ�,
 HYDROGEN as �B���l�@�׫���,
 TURBIDITY as �B��,
 CHLORINE as �ۥѦ��ľl��,
 water_system as �s��
 from SQL_TAOYUAN_WATER
 where (serial_number>520 and serial_number<530)
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 ) data
 left join SQL_TAOYUAN_REGIONS 
 on data.�a�I=SQL_TAOYUAN_REGIONS.place 
 
 left join SQL_TAOYUAN_REGIONS 
 on data.�s��=SQL_TAOYUAN_REGIONS.serial ;
 
 select * from SQL_TAOYUAN_WATER;
 
 �m�ߤK
 select dataTest.�Ǹ�, dataTest.�B���l�@�׫���, dataTest.�B��, dataTest.�ۥѦ��ľl��, 
 sql_taoyuan_regions.place, 
 sql_taoyuan_regions.township,
 sql_taoyuan_water_system.water_purification_plant, 
 sql_taoyuan_water_system.water_supply, 
 sql_taoyuan_water_system.serial
    --WATER_PURIFICATION_PLANT as �b���t,
    --WATER_SUPPLY as �Ѥ��t��,
    --TOWNSHIP as ��F��,
    --PLACE as ���q
 from  ( 
    select distinct PLACE as �a�I,
        SERIAL_NUMBER as �Ǹ�,
        HYDROGEN as �B���l�@�׫���,
        TURBIDITY as �B��,
        CHLORINE as �ۥѦ��ľl��,
        WATER_SYSTEM as �Ѥ��t��
    from SQL_TAOYUAN_WATER
    where (serial_number>520 and serial_number<530)
 
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
    union all
    select distinct PLACE as �a�I,
        SERIAL_NUMBER as �Ǹ�,
        HYDROGEN as �B���l�@�׫���,
        TURBIDITY as �B��,
        CHLORINE as �ۥѦ��ľl��,
        WATER_SYSTEM as �Ѥ��t��
    from SQL_TAOYUAN_WATER
    where (serial_number>520 and serial_number<530)
    or (CHLORINE in('0.76','0.77','0.66')
    and HYDROGEN !=7.8 
    and TURBIDITY=0.6 )
 ) dataTest
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 left join SQL_TAOYUAN_REGIONS
 on SQL_TAOYUAN_REGIONS.serial = dataTest.�a�I
 left join SQL_TAOYUAN_WATER_SYSTEM
 on sql_taoyuan_water_system.serial=dataTest.�Ѥ��t��;
 
 
 
 
 
 SQL�ĤG��
 
group by �m��
select count(employee_ID), employees.department_ID 
from employees
group by department_ID
; 

group by +join(������)

select departments.department_name, count(employee_ID), employees.department_ID 
from employees
group by department_ID
; 



having  


--�Ф@��table
create table sql_emp_his as select * from sql_emp;
TRUNCATE TABLE sql_emp_his;

insert�m��

insert into  sql_emp_his
select emp_id, '�p��', 'C300300300', null, '��T�O��'
from sql_emp
where emp_id='00012345';

update�m��

update sql_emp_his
set TEL='777'
where EMP_NM='�p��';

delete�m��
delete from sql_emp_his 
where id='C300300300' and tel='888';

select * from sql_emp_his;
select * from sql_emp;

�Ұ�m�ߤQ
insert into PRACTICE_EMP_123 () 

PPT SQL4 P.13 �m��
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





    
any�m��
select employee_id, last_name, job_id, salary
from employees
where salary < any
            (select salary
            from employees
            where job_id='it_prog')
and job_id<>'it_prog';
 
all �m��
select employee_id, last_name, job_id, salary
from employees
where salary < all
            (select salary
            from employees
            where job_id='it_prog')
and job_id<>'it_prog';

���W�ƽm��


�j�p�g
select employee_id, last_name, department_id
from employees
where last_name=' higgins';

select employee_id, last_name, department_id
from employees
where  LOWER(last_name)=' higgins';


PPT SQL4 P.14 �m��
select employee_id, 
--concat(first_name, last_name) name, job_id, LENGTH(last_name),
--instr(last_name, 'a') "contains a 'a' ?"
from employees;
--where substr(job_id, 4)='rep';


select * from employees ;

