INSERT into dealership (name,location,date_established)values('varsity chrysler','calgary','1990-05-05'),('country jeep','edmonton','2000-04-06'),
('sherwood honda','sherwood','2010-05-09');

insert into for_sale_cars (make,model,`year`,dealership_id)values('dodge','charger',2012,1),
('chrysler','300',2010,2),
('honda','accord',2016,3),
('jeep','4*4',2021,1),
('chrysler','200',2022,2),
('honda','civic',2019,3),
('dodge','challenger',2020,1),
('chrysler','sebring',2017,2),
('honda','pilot',2022,3),
('honda','crv',2021,3);

SELECT fsc.make, fsc.model, year
from for_sale_cars fsc order by fsc.`year` DESC ;

SELECT d.name, d.location, d.date_established 
from dealership d order by date_established limit 1; 

select fsc.make, fsc.model,fsc.`year`
from for_sale_cars fsc inner join dealership d on d.id = fsc.dealership_id
where fsc.year > 2020
order by fsc.`year` 

SELECT  count(id)
from for_sale_cars fsc where fsc.`year` = 2019;

SELECT count(fsc.id)
from dealership d inner join for_sale_cars fsc on d.id = fsc.dealership_id
GROUP by d.id
HAVING count(fsc.id) >3;

SELECT count(fsc.id)
from for_sale_cars fsc inner join dealership d on d.id = fsc.dealership_id 
group by d.id;

select count(fsc.id), d.id,d.name
from dealership d inner join for_sale_cars fsc on d.id = fsc.dealership_id 
GROUP by d.id 
having count(fsc.id) >=4;

SELECT count(fsc.id), d.id
from dealership d inner join for_sale_cars fsc on d.id = fsc.dealership_id 
where fsc.`year` >= 2021 and fsc.model like ('%x%')
GROUP by d.id
HAVING count(fsc.id) >= 3;
