--�гy�÷s�W��Ʀܨ��������]�Ias Safity
create table Safity(
    village_code VARCHAR2(20),
    facility_code  VARCHAR2(20),
    branch_code VARCHAR2(20));

insert into safity (village_code, facility_code, branch_code)values('C001','F001','M001');
insert into safity (village_code, facility_code, branch_code)values('C002','F002','M001');
insert into safity (village_code, facility_code, branch_code)values('C003','F003','M001');
insert into safity (village_code, facility_code, branch_code)values('C004','F004','M001');
insert into safity (village_code, facility_code, branch_code)values('C005','F005','M002');
insert into safity (village_code, facility_code, branch_code)values('C005','F006','M002');
insert into safity (village_code, facility_code, branch_code)values('C005','F007','M002');
insert into safity (village_code, facility_code, branch_code)values('C005','F008','M002');
insert into safity(village_code, facility_code, branch_code)values('C006','F009','M003');
insert into safity(village_code, facility_code, branch_code)values('C007','F010','M003');
insert into safity(village_code, facility_code, branch_code)values('C008','F011','M003');
insert into safity(village_code, facility_code, branch_code)values('C008','F012','M003');

 --�гy�÷s�W��Ʀܤ������ as Branch
 create table Branch(
    branch_code VARCHAR2(20),
    branch_name NVARCHAR2(50),
    branch_add NVARCHAR2(50),
    branch_tel VARCHAR2(20)
    );

insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M001',	'�˫n����',	'�]�߿��˫n����ڵ�72��',	'03 747 4796');
insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M002',	'�]�ߤ���',	'�]�߿��]�ߥ������109��',	'03 732 0059');
insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M003',	'�Y������',	'�]�߿��Y����������503��', '03 766 3004');

--�гy�÷s�W��Ʀܧ������ as Village
create table Village(
    village_code VARCHAR2(20),
    village_name NVARCHAR2(50),
    village_add NVARCHAR2(50),
    village_tel VARCHAR2(20)
    );

insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C001',	'�j�H��',	'�˫n���q��1035��',	'03 758 1072');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C002',	'�˫n��',	'�˫n��˫n�����s�� 103 ��',  '037-472735');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C003',	'�s�Ψ�',	'�˫n��s�Ψ������ 14 ��',	'037-614186');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C004',	'�H����',	'���s��H����������136-1��',	'037-724839');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C005',	'��]��',	'�]�ߥ���]�������� 766 ��',	'037-333240');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C006',	'���ڨ�',	'���ڨ����ڸ�96��',	'037-660001');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C007',	'������',	'���������j��82��',	'037-661145');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C008',	'�H�q��',	'�H�q���H�q��53��1��','	037-616072');

--�гy�÷s�W��Ʀܧ������ as Village

create table Facility(
    facility_code VARCHAR2(20),
    facility_add NVARCHAR2(50),
    facility_amount NUMBER(10,2),
    facility_floor NUMBER(10,1),
    facility_type NVARCHAR2(20) 
    );

insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F001',	'�]�߿��˫n���H��20��',	'100',	'1'	, '���J');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F002',	'�]�߿��˫n��M����79��',	'3142',	'1','�j��');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F003',	'�]�߿��˫n���s�s���T�q142��',	'1072',	'1','�j��');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F004',	'�]�߿����s���ظ�1498��',	'32',	'1',	'���@�]�I');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F005',	'�]�߿��]�ߥ��̥���80��',	'106',	'1',	'���J');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F006',	'�]�߿��]�ߥ����_��117��',	'26',	'1',	'���J');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F007',	'�]�߿��]�ߥ��շR��109��',	'2038',	'2',	'�j��');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F008',	'�]�߿��]�ߥ��j�P��53��',	'128',	'2',	'�j��');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F009',	'�]�߿��Y�������ڨ��M����102��',	'353',	'1',	'���@�]�I');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F010',	'�]�߿��Y�������������@��69��',	'501',	'1',	'�p����');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F011',	'�]�߿��Y�����H�q��������65��',	'194',	'1',	'���J');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F012',	'�]�߿��Y�����H�q��������116��',	'78',	'1',	'�p����
    ');


--4-1
SELECT 
    branch.branch_name, branch.branch_tel,facility.facility_code,facility.facility_amount  FROM safity
    --left join village 
    --on village.village_code = safity.village_code
    left join Facility 
    on facility.facility_code=safity.facility_code
    left join Branch
    on branch.branch_code=safity.branch_code
    where facility.facility_amount>1000;

--4-2
--select >1000 �åBgroup�o��count

select over_1000_branch.branch_name, over_1000_branch.branch_tel, over_1000_CNT.cnt
    from (
--select >1000 �åBgroup�o��count    
        SELECT  branch.branch_name,  count(Facility.facility_code) as CNT
        FROM safity
        left join village 
        on village.village_code = safity.village_code
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000
        group by branch.branch_name) over_1000_CNT
    left join (
--select>1000 ��distinct�h�����Ƹ��
        SELECT distinct branch.branch_name, branch.branch_tel FROM safity
        left join village 
        on village.village_code = safity.village_code
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000) over_1000_branch
    on over_1000_branch.branch_name=over_1000_CNT.branch_name;
    
--4-3   

select over_1000_branch.branch_name, over_1000_branch.branch_tel, over_1000_CNT.cnt, over_1000_branch.facility_add, over_1000_branch.facility_type
    from (
--select >1000 �åBgroup�o��count    
    SELECT  branch.branch_name,  count(Facility.facility_code) as CNT
    FROM safity
    left join village 
    on village.village_code = safity.village_code
    left join Facility 
    on facility.facility_code=safity.facility_code
    left join Branch
    on branch.branch_code=safity.branch_code
    where facility.facility_amount>1000
    group by branch.branch_name) over_1000_CNT
    
    right join (
--select>1000 ���
        SELECT  branch.branch_name, branch.branch_tel, facility.facility_add,facility.facility_type FROM safity
        left join village 
        on village.village_code = safity.village_code
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000) over_1000_branch
    on over_1000_branch.branch_name=over_1000_CNT.branch_name;   
    
--4-4
select village.village_code,village.village_name, facility.facility_add, facility.facility_amount, branch.branch_name, branch.branch_tel FROM safity
    left join village 
    on village.village_code = safity.village_code
    left join Facility 
    on facility.facility_code=safity.facility_code
    left join Branch
    on branch.branch_code=safity.branch_code
    where facility.facility_add like '%��%';      
    
--4-5
select  village.village_code,village.village_name, village.village_add, facility.facility_add, facility.facility_amount FROM safity
    left join village 
    on village.village_code = safity.village_code
    left join Facility 
    on facility.facility_code=safity.facility_code
    left join Branch
    on branch.branch_code=safity.branch_code
    where facility.facility_type in ( '���J','�j��');


--5-1
update facility 
    set facility_amount='5000'
    where facility_add='�]�߿��˫n��M����79��';
    
--5-2
delete from facility 
    where facility_amount<1000;
    
    drop TABLE facility;
    
    

--test
select over_1000_branch.branch_name, over_1000_branch.branch_tel, over_1000_CNT.cnt
    from (
--select >1000 �åBgroup�o��count    
        SELECT  branch.branch_name,  count(Facility.facility_code) as CNT
        FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000
        group by branch.branch_name) over_1000_CNT
    left join (
--select>1000 ��distinct�h�����Ƹ��
        SELECT distinct branch.branch_name, branch.branch_tel FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000) over_1000_branch
    on over_1000_branch.branch_name=over_1000_CNT.branch_name;  


4-2�u�ƪ���   
SELECT  branch.branch_name, branch.branch_tel,count(Facility.facility_code) FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000    
        group by branch.branch_name, branch.branch_tel;
        
4-3�u�ƪ���      
SELECT  branch.branch_name, branch.branch_tel, facility.facility_add, facility.facility_type,count(Facility.facility_code)
FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000 
        group by branch.branch_name, branch.branch_tel, facility.facility_add, facility.facility_type;

