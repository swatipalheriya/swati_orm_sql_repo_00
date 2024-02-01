create database JoinsImplementation;
use JoinsImplementation;
Drop table if exists `Orders`;
Create table Orders
             (orderId int primary key, 
             OrderPrice int not null, 
             OrderDelivered boolean, 
             OrderDate Date
             );
             
Drop table if exists `Customers`;
Create table Customers(CustomerId int primary key, Customer_Name varchar(50), City varchar(50) not null, orderId int not null ,
                              FOREIGN KEY (orderId) REFERENCES Orders(orderId) );
                              
insert into Orders values(1, 150,true,"2021-10-15");
insert into Orders values(2, 80,true,"2021-10-16");
insert into Orders values(3, 100,true,"2021-10-16");
insert into Orders values(4, 120,true,"2021-10-16");
insert into Orders values(5, 90,true,"2021-10-17");

insert into Customers values(1,"Hameed", "Delhi",1);
insert into Customers values(2,"Candice", "Bangalore",3);
insert into Customers values(3,"Derek", "Bangalore",5);
insert into Customers values(4,"Ravi", "Mumbai",2);
insert into Customers values(5,"Maneesh", "Mumbai",4);


/*Inner Join*/
SELECT Orders.orderId, Customers.Customer_Name
FROM Orders
INNER JOIN Customers ON Orders.orderId = Customers.orderId;

/*Left Join*/
SELECT Orders.orderId, Customers.Customer_Name
FROM Orders
Left JOIN Customers ON Orders.orderId = Customers.orderId;

/*Right Join*/
SELECT Orders.orderId, Customers.Customer_Name, Orders.OrderPrice
FROM Customers
Right JOIN Orders ON Orders.orderId = Customers.orderId and Orders.OrderPrice > 0;

/* Self Join*/
Select Customers.Customer_Name, Orders.orderId, Orders.OrderPrice 
        from Customers,Orders where Orders.orderId = Customers.orderId;

/*Full join implementation using Union of Left and right Join*/
SELECT Orders.orderId, Customers.Customer_Name
FROM Orders
Left JOIN Customers ON Orders.orderId = Customers.orderId
Union
SELECT Orders.orderId, Customers.Customer_Name
FROM Orders
Right JOIN Customers ON Orders.orderId = Customers.orderId;

  
   



