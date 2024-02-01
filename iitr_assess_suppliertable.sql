CREATE TABLE IF NOT EXISTS supplier(
SUPP_ID int primary key, SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50), SUPP_PHONE varchar(10) NOT NULL
);

INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890'); 
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470'); 
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315'); 
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');

select supplier.* from supplier where supplier.supp_id in
(select supp_id from supplier_pricing group by supp_id having count(supp_id)>1)
group by supplier.supp_id;

