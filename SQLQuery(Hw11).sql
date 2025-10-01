select p.Name,p.Price 
from Products p 
where p.Price>500

select year(o.OrderDate) as OrderYear, sum(o.TotalAmount) as TotalAmountPerYear
from Orders o
group by year(o.OrderDate)

select p.CategoryId, c.Name, sum(p.Price) As totalprice 
from Products p
join Categories c on p.CategoryId=c.Id
group by p.CategoryId, c.Name

select p.Name, p.Price from Products p
order by p.Price desc

select o.CustomerId, c.Name, Count(*) As countorders 
from Orders o
join Customers c on o.CustomerId=c.Id
group by o.CustomerId, c.Name

select p.CategoryId, c.Name, avg(p.Price) As totalprice 
from Products p
join Categories c on p.CategoryId=c.Id
group by p.CategoryId, c.Name

select p.Name as productname,c.Name as categoryname from Products p
join Categories c on p.CategoryId=c.Id
order by c.Id, c.Name, p.Name

select c.Name, sum(o.TotalAmount) as TotalAmount2023
from Orders o
join Products p on o.ProductId=p.Id
join Categories c on p.CategoryId=c.Id
where year(o.OrderDate)=2023
group by c.Name
order by TotalAmount2023 desc

select year(o.OrderDate) as OrderYear, month(o.OrderDate) as Ordermonth, count(*) as countorderspermonth
from Orders o
group by year(o.OrderDate), month(o.OrderDate)
order by OrderYear 

select c.Name, sum(o.TotalAmount) as totalamount from Orders o
join Customers c on o.CustomerId=c.Id
group by c.Id, c.Name
order by totalamount desc

select c.Name, count(*) as countorder 
from Orders o
join Products p on o.ProductId=p.Id
join Categories c on p.CategoryId=c.Id
group by c.Id, c.Name
order by count(*) desc

select c.Name, count(*) as countorder 
from Orders o
join Customers c on o.CustomerId=c.Id
group by o.CustomerId, c.Name
order by count(*) desc, c.Name 

select year(o.OrderDate) as OrderYear, count(*) as countorder
from Orders o
group by year(o.OrderDate)

select p.Name, count(*) as countorder from Orders o
join Products p on o.ProductId=p.Id
group by o.ProductId, p.Name
order by count(*) desc, p.Name

