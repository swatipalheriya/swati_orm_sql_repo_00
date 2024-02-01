CREATE TABLE IF NOT EXISTS customer( CUS_ID INT NOT NULL,
CUS_NAME VARCHAR(20) NOT NULL, CUS_PHONE VARCHAR(10) NOT NULL, CUS_CITY varchar(30) NOT NULL, CUS_GENDER CHAR,
PRIMARY KEY (CUS_ID));

INSERT INTO CUSTOMER VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO CUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO CUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F'); 
INSERT INTO CUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO CUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');

select count(t2.cus_gender) as NoOfCustomers, t2.cus_gender from (select t1.cus_id, t1.cus_gender, t1.ord_amount, t1.cus_name from
(select `order`.*, customer.cus_gender, customer.cus_name from `order` inner join customer where `order`.cus_id=customer.cus_id having
`order`.ord_amount>=3000)
as t1 group by t1.cus_id) as t2 group by t2.cus_gender;


select customer.cus_name,customer.cus_gender from customer where customer.cus_name like 'A%' or customer.cus_name like '%A';
as t1 group by t1.cus_id) as t2 group by t2.cus_gender;

