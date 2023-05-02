/* US Crime Data Exploration and Analysis */
/*Q1)	Create a SQL database containing data related to the case number, primary crime category, crime description, crime location, 
and arrest status using the dataset */
create database usacrime;
use usacrime;
select * from crime_us;
create table usacrimes(case_number varchar(100),primary_crime_category varchar(100),crime_description
varchar(100),crime_location varchar(100),arrest_status boolean);
desc usacrimes;

/*Q2- Make a database in SQL where theft costs more than $500.*/
use usacrime;
select * from crime_us;
select id,block,IUCR, primarytype,Description from crime_us 
where primarytype="Theft" and description="over $500";
create view minicrime as
select id,block,IUCR, primarytype,Description from crime_us 
where primarytype="Theft" and description="over $500";
select * from minicrime;

/*Q3-Determine the overall number of cases for each major category of crime.*/
use usacrime;
select * from crime_us;
select primarytype,count(casenumber) as Number_of_cases
from crime_us
group by primarytype;

/*Q4-Apply 1NF normalization to the dataset provided.*/
use usacrime;
select * from crime_us;
select id,locationdescription from crime_us;
create table usfinals(id bigint,locationdescription varchar(100));
desc usfinals;
insert into usfinals(id,locationdescription)
values(12704864,"Commercial");
insert into usfinals(id,locationdescription)
values(12704864,"Bussiness");

insert into usfinals(id,locationdescription)
values(12598249,"Commercial");
insert into usfinals(id,locationdescription)
values(12598249,"Bussiness");

insert into usfinals(id,locationdescription)
values(12700296,"Nursing");
insert into usfinals(id,locationdescription)
values(12700296,"Retirement Home");

insert into usfinals(id,locationdescription)
values(12585553,"Parking LoT");
insert into usfinals(id,locationdescription)
values(12585553,"Garage");

insert into usfinals(id,locationdescription)
values(12582232,"Parking LoT");
insert into usfinals(id,locationdescription)
values(12582232,"Garage-Non Resedential");


insert into usfinals(id,locationdescription)
values(12587890,"Tavern");
insert into usfinals(id,locationdescription)
values(12587890,"Liquor Store");

insert into usfinals(id,locationdescription)
values(12583238,"Bar");
insert into usfinals(id,locationdescription)
values(12583238,"Tavern");

insert into usfinals(id,locationdescription)
values(12582793,"Bar");
insert into usfinals(id,locationdescription)
values(12582793,"Tavern");

insert into usfinals(id,locationdescription)
values(12583634,"Tavern");
insert into usfinals(id,locationdescription)
values(12583634,"Liquor Store");

insert into usfinals(id,locationdescription)
values(12585671,"Parking Lot");
insert into usfinals(id,locationdescription)
values(12585671,"Garage-Non Residential");

insert into usfinals(id,locationdescription)
values(12582211,"Parking Lot");
insert into usfinals(id,locationdescription)
values(12582211,"Garage");

insert into usfinals(id,locationdescription)
values(12611949,"Bar");
insert into usfinals(id,locationdescription)
values(12611949,"Tavern");

insert into usfinals(id,locationdescription)
values(12583078,"Bar");
insert into usfinals(id,locationdescription)
values(12583078,"Tavern");

insert into usfinals(id,locationdescription)
values(12581923,"Bar");
insert into usfinals(id,locationdescription)
values(12581923,"Tavern");


insert into usfinals(id,locationdescription)
values(12581905,"Hotel");
insert into usfinals(id,locationdescription)
values(12581905,"Motel");


insert into usfinals(id,locationdescription)
values(125838393,"Bar");
insert into usfinals(id,locationdescription)
values(125838393,"Tavern");

insert into usfinals(id,locationdescription)
values(12583915,"Bar");
insert into usfinals(id,locationdescription)
values(12583915,"Tavern");


insert into usfinals(id,locationdescription)
values(12597291,"Commercial");
insert into usfinals(id,locationdescription)
values(12597291,"Bussiness");

insert into usfinals(id,locationdescription)
values(12582114,"Bar");
insert into usfinals(id,locationdescription)
values(12582114,"Tavern");

insert into usfinals(id,locationdescription)
values(12583102,"Bar");
insert into usfinals(id,locationdescription)
values(12583102,"Tavern");

insert into usfinals(id,locationdescription)
values(12582342,"Hotel");
insert into usfinals(id,locationdescription)
values(12582342,"Motel");

insert into usfinals(id,locationdescription)
values(12581916,"Bar");
insert into usfinals(id,locationdescription)
values(12581916,"Tavern");


insert into usfinals(id,locationdescription)
values(12581955,"Hotel");
insert into usfinals(id,locationdescription)
values(12581955,"Motel");

insert into usfinals(id,locationdescription)
values(12582137,"Hotel");
insert into usfinals(id,locationdescription)
values(12582137,"Motel");

insert into usfinals(id,locationdescription)
values(12582267,"Hotel");
insert into usfinals(id,locationdescription)
values(12582267,"Motel");

insert into usfinals(id,locationdescription)
values(12582958,"Parking Lot");
insert into usfinals(id,locationdescription)
values(12582958,"Garage Non-Resedential");

insert into usfinals(id,locationdescription)
values(12581938,"Hotel");
insert into usfinals(id,locationdescription)
values(12581938,"Motel");

insert into usfinals(id,locationdescription)
values(12581931,"Parking Lot");
insert into usfinals(id,locationdescription)
values(12581931,"Garage Non-Residential");

insert into usfinals(id,locationdescription)
values(12582568,"Hotel");
insert into usfinals(id,locationdescription)
values(12582568,"Motel");

insert into usfinals(id,locationdescription)
values(12594943,"Vacant Lot");
insert into usfinals(id,locationdescription)
values(12594943,"Land");

insert into usfinals(id,locationdescription)
values(12583120,"Auto");
insert into usfinals(id,locationdescription)
values(12583120,"Boat");

insert into usfinals(id,locationdescription)
values(12583120,"RV-Dealership");


insert into usfinals(id,locationdescription)
values(12582059,"Hotel");

insert into usfinals(id,locationdescription)
values(12582059,"Motel");

insert into usfinals(id,locationdescription)
values(12526544,"Barber shop");

insert into usfinals(id,locationdescription)
values(12526544,"Beauty Salon");


insert into usfinals(id,locationdescription)
values(12583162,"Parking Lot");

insert into usfinals(id,locationdescription)
values(12583162,"Garage Non-Residential");

insert into usfinals(id,locationdescription)
values(12583898,"Bar");

insert into usfinals(id,locationdescription)
values(12583898,"Tavern");

insert into usfinals(id,locationdescription)
values(125869660,"Commercial");

insert into usfinals(id,locationdescription)
values(125869660,"Business");

insert into usfinals(id,locationdescription)
values(12614535,"Commercial");

insert into usfinals(id,locationdescription)
values(12614535,"Business");

insert into usfinals(id,locationdescription)
values(12582586,"Nursing");

insert into usfinals(id,locationdescription)
values(12582586,"Retirement Home");


insert into usfinals(id,locationdescription)
values(12582240,"Parking Lot");

insert into usfinals(id,locationdescription)
values(12582240,"Garage-Non Residential");

insert into usfinals(id,locationdescription)
values(12584101," Car Parking Lot");

insert into usfinals(id,locationdescription)
values(12584101,"Garage");

insert into usfinals(id,locationdescription)
values(12584101,"Other Property");

insert into usfinals(id,locationdescription)
values(12584533,"Hotel");

insert into usfinals(id,locationdescription)
values(12584533,"Motel");


insert into usfinals(id,locationdescription)
values(12582381,"Police Facility");

insert into usfinals(id,locationdescription)
values(12582381,"Vehicle Parking Lot");


insert into usfinals(id,locationdescription)
values(12582533,"Parking Lot");

insert into usfinals(id,locationdescription)
values(12582533,"Garage-Non Residential");

insert into usfinals(id,locationdescription)
values(12583816,"Nursing");

insert into usfinals(id,locationdescription)
values(12583816,"Retirement");

insert into usfinals(id,locationdescription)
values(1258255,"Parking Lot");

insert into usfinals(id,locationdescription)
values(1258255,"Garage-Non Residential");

insert into usfinals(id,locationdescription)
values(12582399,"Hotel");

insert into usfinals(id,locationdescription)
values(12582399,"Motel");

insert into usfinals(id,locationdescription)
values(12585381,"Commercial");

insert into usfinals(id,locationdescription)
values(12585381,"Business Office");

insert into usfinals(id,locationdescription)
values(12583086,"Bar");

insert into usfinals(id,locationdescription)
values(12583086,"Tavern");

insert into usfinals(id,locationdescription)
values(12582680,"Hotel");

insert into usfinals(id,locationdescription)
values(12582680,"Motel");

insert into usfinals(id,locationdescription)
values(12582644,"Hotel");

insert into usfinals(id,locationdescription)
values(12582644,"Motel");


insert into usfinals(id,locationdescription)
values(12582664,"Hotel");

insert into usfinals(id,locationdescription)
values(125826664,"Motel");

select * from usfinals;




























































