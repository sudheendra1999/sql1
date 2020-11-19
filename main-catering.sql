create database c1;
use c1;
create table catering(
service_id int,bookings date,types_ varchar(100),advance varchar(100));
insert into catering values(1002,'2019-01-03','nonveg','paid');
insert into catering values(1003,'2019-01-05','veg','paid');
insert into catering values(1004,'2019-01-07','veg','paid');
insert into catering values(1005,'2019-01-09','veg','paid');
insert into catering values(1006,'2019-01-15','nonveg','paid');
insert into catering values(1007,'2019-02-03','veg','paid');
insert into catering values(1008,'2019-02-05','veg','paid');
insert into catering values(1009,'2019-02-07','nonveg','paid');
insert into catering values(1010,'2019-02-09','nonveg','paid');
insert into catering values(1011,'2019-03-10','veg','paid');
insert into catering values(1012,'2019-03-11','veg','paid');
insert into catering values(1013,'2019-03-15','veg','paid');
insert into catering values(1014,'2019-03-17','veg','paid');
insert into catering values(1015,'2019-03-19','veg','paid');
insert into catering values(1016,'2019-03-21','veg','paid');
insert into catering values(1017,'2019-04-04','nonveg','paid');
insert into catering values(1018,'2019-08-01','nonveg','paid');
insert into catering values(1019,'2019-08-03','nonveg','paid');
insert into catering values(1020,'2019-08-05','nonveg','paid');
insert into catering values(1021,'2019-08-07','nonveg','paid');
select * from catering;
insert into catering values(1022,'2019-09-07','veg','paid');
insert into catering values(1023,'2019-09-10','veg','paid');
insert into catering values(1024,'2019-10-10','veg','paid');
insert into catering values(1025,'2019-10-10','veg','paid');
insert into catering values(1026,'2019-10-11','veg','paid');
insert into catering values(1027,'2019-10-13','veg','paid');
insert into catering values(1028,'2019-11-01','nonveg','paid');
insert into catering values(1029,'2019-11-10','nonveg','paid');
insert into catering values(1030,'2019-12-01','nonveg','paid');
insert into catering values(1031,'2019-12-03','nonveg','paid');
insert into catering values(1032,'2019-12-25','nonveg','paid');
insert into catering values(1033,'2019-12-25','nonveg','paid');
insert into catering values(1034,'2019-12-25','nonveg','paid');
insert into catering values(1035,'2020-01-01','veg','paid');
insert into catering values(1036,'2020-01-03','veg','paid');
insert into catering values(1037,'2020-01-17','veg','paid');
insert into catering values(1038,'2020-01-21','nonveg','paid');
insert into catering values(1039,'2020-01-29','nonveg','paid');
select * from catering;
alter table catering add upcomings varchar(100);
alter table catering add canceled varchar(100);

update catering set canceled='yes'
where service_id=1009;

update catering set canceled='yes'
where service_id=1012;

update catering set canceled='yes'
where service_id=1026;

update catering set canceled='yes'
where service_id=1032;


select * from catering;




--this is for upcommings
select * from catering
where upcomings='yes'
order by service_id;

--this is for advanced paid
select * from catering
where advance='paid';

--count of advance paid
select count(advance) from catering
where advance='paid';

--this are cancled
select * from catering
where canceled ='yes'
order by service_id;



--this is for veg
select * from catering
where types_='veg';

--count of veg
select count(types_) from catering
where types_='veg';

--count of non veg
select count(types_) from catering
where types_='nonveg';



--total bookings
SELECT count(bookings) from catering 
where canceled is null;

--average bookings in last six months
	--bokkings in jan-2020 (ans-5)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2020-01-01'and '2020-01-30') AND canceled is null;
	--bookings in dec-2019 (ans-4)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2019-12-01'and '2019-12-30') AND canceled is null;
	--bookings in nov-2019 (ans-2)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2019-11-01'and '2019-11-30') AND canceled is null;
	--bookings in oct-2019 (ans-3)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2019-10-01'and '2019-10-30') AND canceled is null;
	--bookings in sep-2019 (ans-2)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2019-09-01'and '2019-09-30') AND canceled is null;
	--bookings in aug-2019 (ans-4)
		SELECT COUNT(bookings) from catering
        WHERE (bookings BETWEEN '2019-08-01'and '2019-08-30') AND canceled is null;
--average bookings in 6 months (total=20 in 6 month avg=20/6)
	--avg=3.333

use c1
create table tool( month_ varchar(30),order_ int);
select * from tool;
insert into tool values('jan',5);
insert into tool values('dec',4);
insert into tool values('nov',2);
insert into tool values('oct',3);
insert into tool values('sep',2);
insert into tool values('aug',4);

--avg oredres in last 6 month
SELECT AVG(order_) from tool;

--heighest bookings in last 6 months
SELECT max(order_) from tool;

--orers in next 30 days
Select *from tool
where month_='jan';


--end--



