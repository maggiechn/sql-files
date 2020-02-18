Select distinct CUSTOMER_STREET_ADDRESS
From CUSTOMER;
Select * from CUSTOMER;


Select *
From CUSTOMER
Where CUSTOMER_FIRST_NAME like 'Katey';


Select SUPP_ORDER_WEIGHT AS Weight
From SUPPLIER_ORDER_ITEM;


Select ORDER_TOTAL_WEIGHT, ORDER_ITEM_ID
From ORDER_ITEM
Where ORDER_SUBTOTAL > 200.00;


Select SUPPLIER_ORDER_DATE, SUPPLIER_NAME
From SUPPLIER_ORDER, SUPPLIER
Where supplier.supplier_id = supplier_order.supplier_id and SUPPLIER_ORDER_DATE is not null;


SELECT Orders.Order_ID, Customer.Customer_first_name, Customer.Customer_last_name, Orders.Order_date
FROM ORDERS
INNER JOIN CUSTOMER ON Orders.Customer_ID=Customer.Customer_ID;

Select SUPPLIER_NAME
From SUPPLIER
Where EXISTS (select SUPPLIER_DISCOUNT from SUPPLIER_ORDER where SUPPLIER_ID = supplier.supplier_ID and SUPPLIER_STATE = 'Fl'); 
