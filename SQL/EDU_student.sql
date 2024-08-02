--創造並新增資料至防空避難設施as Safity
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

 --創造並新增資料至分局資料 as Branch
 create table Branch(
    branch_code VARCHAR2(20),
    branch_name NVARCHAR2(50),
    branch_add NVARCHAR2(50),
    branch_tel VARCHAR2(20)
    );

insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M001',	'竹南分局',	'苗栗縣竹南鎮民族街72號',	'03 747 4796');
insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M002',	'苗栗分局',	'苗栗縣苗栗市金鳳街109號',	'03 732 0059');
insert into Branch(branch_code,  branch_name, branch_add,  branch_tel)VALUES('M003',	'頭份分局',	'苗栗縣頭份市中興路503號', '03 766 3004');

--創造並新增資料至村里資料 as Village
create table Village(
    village_code VARCHAR2(20),
    village_name NVARCHAR2(50),
    village_add NVARCHAR2(50),
    village_tel VARCHAR2(20)
    );

insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C001',	'大埔里',	'竹南鎮公義路1035號',	'03 758 1072');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C002',	'竹南里',	'竹南鎮竹南里中山路 103 號',  '037-472735');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C003',	'山佳里',	'竹南鎮山佳里國光街 14 號',	'037-614186');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C004',	'埔頂里',	'後龍鎮埔頂里中興路136-1號',	'037-724839');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C005',	'綠苗里',	'苗栗市綠苗里中正路 766 號',	'037-333240');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C006',	'民族里',	'民族里民族路96號',	'037-660001');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C007',	'忠孝里',	'忠孝里光大街82號',	'037-661145');
insert into Village (village_code,  village_name, village_add,  village_tel)VALUES('C008',	'信義里',	'信義里信義路53巷1號','	037-616072');

--創造並新增資料至村里資料 as Village

create table Facility(
    facility_code VARCHAR2(20),
    facility_add NVARCHAR2(50),
    facility_amount NUMBER(10,2),
    facility_floor NUMBER(10,1),
    facility_type NVARCHAR2(20) 
    );

insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F001',	'苗栗縣竹南鎮中埔街20號',	'100',	'1'	, '公寓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F002',	'苗栗縣竹南鎮和平街79號',	'3142',	'1','大樓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F003',	'苗栗縣竹南鎮龍山路三段142號',	'1072',	'1','大樓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F004',	'苗栗縣後龍鎮中華路1498號',	'32',	'1',	'公共設施');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F005',	'苗栗縣苗栗市米市街80號',	'106',	'1',	'公寓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F006',	'苗栗縣苗栗市光復路117號',	'26',	'1',	'公寓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F007',	'苗栗縣苗栗市博愛街109號',	'2038',	'2',	'大樓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F008',	'苗栗縣苗栗市大同路53號',	'128',	'2',	'大樓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F009',	'苗栗縣頭份市民族里和平路102號',	'353',	'1',	'公共設施');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F010',	'苗栗縣頭份市忠孝忠孝一路69號',	'501',	'1',	'私營單位');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F011',	'苗栗縣頭份市信義里中正路65號',	'194',	'1',	'公寓');
insert into Facility (facility_code ,facility_add,facility_amount,facility_floor,facility_type)VALUES('F012',	'苗栗縣頭份市信義里中正路116號',	'78',	'1',	'私營單位
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
--select >1000 並且group得到count

select over_1000_branch.branch_name, over_1000_branch.branch_tel, over_1000_CNT.cnt
    from (
--select >1000 並且group得到count    
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
--select>1000 用distinct去除重複資料
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
--select >1000 並且group得到count    
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
--select>1000 資料
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
    where facility.facility_add like '%中%';      
    
--4-5
select  village.village_code,village.village_name, village.village_add, facility.facility_add, facility.facility_amount FROM safity
    left join village 
    on village.village_code = safity.village_code
    left join Facility 
    on facility.facility_code=safity.facility_code
    left join Branch
    on branch.branch_code=safity.branch_code
    where facility.facility_type in ( '公寓','大樓');


--5-1
update facility 
    set facility_amount='5000'
    where facility_add='苗栗縣竹南鎮和平街79號';
    
--5-2
delete from facility 
    where facility_amount<1000;
    
    drop TABLE facility;
    
    

--test
select over_1000_branch.branch_name, over_1000_branch.branch_tel, over_1000_CNT.cnt
    from (
--select >1000 並且group得到count    
        SELECT  branch.branch_name,  count(Facility.facility_code) as CNT
        FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000
        group by branch.branch_name) over_1000_CNT
    left join (
--select>1000 用distinct去除重複資料
        SELECT distinct branch.branch_name, branch.branch_tel FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000) over_1000_branch
    on over_1000_branch.branch_name=over_1000_CNT.branch_name;  


4-2優化版本   
SELECT  branch.branch_name, branch.branch_tel,count(Facility.facility_code) FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000    
        group by branch.branch_name, branch.branch_tel;
        
4-3優化版本      
SELECT  branch.branch_name, branch.branch_tel, facility.facility_add, facility.facility_type,count(Facility.facility_code)
FROM safity
        left join Facility 
        on facility.facility_code=safity.facility_code
        left join Branch
        on branch.branch_code=safity.branch_code
        where facility.facility_amount>1000 
        group by branch.branch_name, branch.branch_tel, facility.facility_add, facility.facility_type;

