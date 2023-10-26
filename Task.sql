/*
Tables with which the work is done: Orders and Customers, you can find them here: .
can be found here: https://www.w3schools.com/sql/trysql.asp?filename=trysql_asc

It is necessary to display the id of the customer and the name of the customer who made more than 5 orders, as well as
number of orders and the date of the last order. The list should go in descending order from customers with
large number of orders to customers with fewer orders. 
-----------------------------------
Таблицы, с которыми выполнена работа: заказы (Orders) и клиенты (Customers), найти их
можно тут: https://www.w3schools.com/sql/trysql.asp?filename=trysql_asc

Необходимо вывести id клиента и имя клиента, сделавших больше 5-ти заказов, а также
количество заказов и дату последнего заказа. Список должен идти по убыванию от клиентов с
большим количеством заказов к клиентам с меньшим количеством заказов 
*/
SELECT  Customers.CustomerID, 
        Customers.CustomerName, 
        COUNT(Orders.OrderID) as СountOrders,
        MAX(Orders.OrderDate) as LastOrderDate
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
HAVING COUNT (Orders.OrderID) > 5
ORDER BY СountOrders DESC
