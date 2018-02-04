use rms_new;

#RandomStuff
select count(*) from managers;

#Selecting a random number of a given set of numbers
select FLOOR(1 + rand() * (select count(*) from managers));


#ExtraRandom Stuff
select orders.OrderTime, orders.OrderID from orders order by OrderTime;

select current_timestamp();


#Customer Analysis
select distinct orders.CustomerID as CustomerID, 
concat_ws(' ',Customers.CustomerFirstName,Customers.CustomerLastName) as CustomerName, 
count(orders.CustomerID) as NbrOfTimesOrdered,
(select ItemName)

from orders left join Customers on orders.CustomerID=Customers.CustomerID
group by CustomerID
order by NbrOfTimesOrdered DESC;


#Customer Analysis Part 2
select customers.CustomerID as customerID,
order_br_items.ItemID as ItemID,
orders.OrderID as orderID,

order_br_items.ItemQty as ItemQty
from customers inner join orders on 
customers.CustomerID=orders.CustomerID
left join order_br_items on
orders.orderID=order_br_items.OrderID
group by customerID,ItemID, OrderID;

#Customer Analysis part 3
select distinct customerID, count(orderID) as NbrOfOrders from vw_preq_customer_analysis group by customerID,orderID; 

#customerID,CustomerName,
SELECT  vw_preq_customer_analysis.ItemID,menu.ItemName as ItemName, count(vw_preq_customer_analysis.ItemID) as NbrOfTimesOrderd
FROM rms_new.vw_preq_customer_analysis inner join 
menu on vw_preq_customer_analysis.ItemID=menu.ItemID
where customerID=13
group by customerID, vw_preq_customer_analysis.ItemID
order by NbrOfTimesOrderd desc;


#Customer Order History
select orders.OrderID, order_br_items.ItemID,menu.ItemName,order_br_items.ItemQty,menu.ItemPrice*order_br_items.ItemQty, orders.OrderTime 
from orders inner join customers on 
orders.CustomerID=Customers.customerID 
left join order_br_items on 
order_br_items.OrderID=orders.OrderID 
left join menu on 
menu.ItemID=order_br_items.ItemID
where orders.CustomerID=13 ;


Select Max(OrderID)+1 from orders;


# for stored procedures

call sp_add_order_items(@input, @input2);


#Favourite Items of Customer
SELECT  vw_preq_customer_analysis.ItemID,menu.ItemName as ItemName, count(vw_preq_customer_analysis.ItemID) as NbrOfTimesOrderd
FROM rms_new.vw_preq_customer_analysis inner join 
menu on vw_preq_customer_analysis.ItemID=menu.ItemID
where customerID=16
group by customerID, vw_preq_customer_analysis.ItemID
order by NbrOfTimesOrderd desc;

#Restaurant Analysis
select distinct month(orders.OrderTime)as Month,Year(orders.OrderTime)as Year,count(orders.OrderID)as OrdersPerMonth,sum(orders.TotalPrice) as RevenuePerMonth
from orders 
group by Month asc, Year asc
order by Year asc, Month asc;

#Revenue Analysis
select distinct order_br_items.ItemID as ItemID, 
menu.ItemName as ItemName, 
Count(order_br_items.ItemID) as NbrOfTimesOrdered, 
sum(order_br_items.ItemQty) as TotalQtySold , 
sum(order_br_items.ItemQty)*menu.ItemPrice as RevenueEarnedByItem

from order_br_items left join menu
on order_br_items.ItemID=menu.ItemID
group by ItemID
order by NbrOfTimesOrdered DESC;

#Total Qty per Order
select OrderID, sum(ItemQty) as TotalQty from order_br_items
group by OrderID
order by OrderID;

#ManagerAnalysis
select distinct orders.ManagerID as ManagerID, 
concat_ws(' ',managers.ManagerFirstName,managers.ManagerLastName) as ManagerName, 
count(orders.ManagerID) as NbrOfOrdersTaken

from orders left join managers on orders.ManagerID=managers.ManagerID
group by ManagerID
order by NbrOfOrdersTaken DESC;

#Waiter Analysis
select distinct orders.WaiterID as WaiterID, 
concat_ws(' ',waiter.WaiterFirstName,waiter.waiterLastName) as WaiterName, 
count(orders.waiterID) as NbrOfOrdersDelivered

from orders left join waiter on orders.waiterID=waiter.waiterID
group by waiterID
order by NbrOfOrdersDelivered DESC;

#Cheff Analysis
select distinct orders.CheffID as CheffID, 
concat_ws(' ',Cheff.CheffFirstName,Cheff.CheffLastName) as CheffName, 
count(orders.CheffID) as NbrOfOrdersPrepared

from orders left join Cheff on orders.CheffID=Cheff.CheffID
group by CheffID
order by NbrOfOrdersPrepared DESC;


#RestaurantRevenuePerMonth
select distinct month(orders.OrderTime)as Month,Year(orders.OrderTime)as Year,count(orders.OrderID)as OrdersPerMonth,sum(orders.TotalPrice) as RevenuePerMonth
from orders 
group by Month asc, Year asc
order by Year asc, Month asc;

#Total Price for OrderItems in an order
select order_br_items.OrderID as OrderID,order_br_items.ItemID as ItemID,order_br_items.ItemQty as ItemQty,order_br_items.ItemQty*menu.ItemPrice as Price
from order_br_items inner join menu on order_br_items.ItemID=menu.ItemID
group by OrderID, ItemID;

#Order Totals
select order_br_items.OrderID as OrderID,
sum(order_br_items.ItemQty*menu.ItemPrice)as OrderPrice 
from order_br_items inner join menu 
on order_br_items.ItemID=menu.ItemID 
group by OrderID ;

#Total REvenue of Restaurant
select sum(OrderPrice) from vw_order_price;