select * from data

--list all product and total quantity
select product, sum(Quantity) as quantity from data
group by Product

--How many orders were made for monitors
select count(*) as monitor_orders from data
where Product = 'Monitor'
--163

--How many orders were made for phone
select count(*) as phone_orders from data
where Product = 'Phone'
--156

--How many orders were made for Tablet
select count(*) as tablet_orders from data
where Product = 'Tablet'
--179-

--How many orders were made for Chair
select count(*) as chair_orders from data
where Product = 'Chair'
--178

--How many orders were made for laptop
select count(*) as laptop_orders from data
where Product = 'Laptop'
--173

--How many orders were made for desk
select count(*) as desk_orders from data
where Product = 'Desk'
--170

--How many orders were made for printer
select count(*) as printer_orders from data
where Product = 'Printer'
--181

--which referral source brings the most revenue
select ReferralSource, sum(TotalPrice) as revenue
from data
group by ReferralSource
order by revenue DESC
--instagram

--what is the total revenue
select sum(totalprice) as totalrevenue
from data
--1,264,761.96174622