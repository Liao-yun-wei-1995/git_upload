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

select distinct manufacturer ,counts(*) from cars group by manufacturer

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
 or (CHLORINE in('0.76','0.77','0.66')
 and HYDROGEN !=7.8 
 and TURBIDITY=0.6 )
 --order by TURBIDITY asc,SERIAL_NUMBER desc;
 union 
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
 
 �m�ߤK
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
 