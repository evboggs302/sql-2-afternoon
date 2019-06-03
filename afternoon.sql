-- PRACTICE JOINS
--1
select * from invoice inv
join invoice_line invl on il.invoice_id = i.invoice_id
where il.unit_price > .99;

--2
select c.first_name, c.last_name, i.invoice_date, i.total
from customer as c
join invoice as i
on (c.customer_id = i.customer_id);

--3
select c.first_name, c.last_name, e.first_name as rep_first_name, e.last_name as rep_last_name
from employee e join customer c
on (c.support_rep_id = e.employee_id)

--4


--5


--6


--7


--8



-- PRACTICE NESTED QUERIES
--1


--2


--3


--4


--5


--6



-- PRACTICE UPDATING ROWS
--1


--2


--3


--4


--5


--6



-- GROUP BY
--1


--2


--3



-- USE DISTINCT
--1


--2


--3



-- DELETE ROWS
--1


--2


--3


--4