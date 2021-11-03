-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT
	productname, c.categoryname
FROM Products as p
left join categories as c
	on p.categoryid = c.categoryid
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT 
	o.id, s.shippername, orderdate
FROM Order as o
left join shipper as s
	on o.Id = s.Id
    where o.orderdate > 2012-08-9
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select
  Product.productname, od.quantity, od.orderid
from OrderDetail as od
left join (Product as p) 
on od.productid = Product.id
where od.orderid = 10251
order by Product.ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select
  o.id as OrderID, Customer.CompanyName, Employee.LastName
from 'Order' as o
join (Customer as c) on o.customerid = Customer.id
join (Employee as e) on o.EmployeeId = Employee.Id;