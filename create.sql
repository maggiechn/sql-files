DROP TABLE SUPPLIER CASCADE CONSTRAINTS;
CREATE TABLE SUPPLIER (
	SUPPLIER_ID INTEGER NOT NULL,
	SUPPLIER_COUNTRY 	VARCHAR(40),
	SUPPLIER_STATE		VARCHAR(2),
	SUPPLIER_STREET_ADDRESS	VARCHAR(40),
	SUPPLIER_NAME		VARCHAR(40),
	SUPPLIER_TYPE  		VARCHAR(150),
	SUPPLIER_BUS_HOURS	VARCHAR(50),
	SUPPLIER_PHONE		CHAR(12),
PRIMARY KEY (SUPPLIER_ID)
);


DROP TABLE SUPPLIER_ORDER CASCADE CONSTRAINTS;
CREATE TABLE SUPPLIER_ORDER (
	SUPPLIER_ORDER_ID 	INTEGER NOT NULL,
	SUPPLIER_ID		INTEGER NOT NULL,
	SUPPLIER_ORDER_DATE	DATE,
	SUPPLIER_ORDER_TIME	CHAR(10),
	SUPPLIER_ORDER_STATUS	CHAR(50),
	SUPPLIER_SHIPPED_DATE	DATE,
	SUPPLIER_DISCOUNT	CHAR(10),
	SUPPLIER_ORDER_COUNT	INTEGER,
	PRIMARY KEY (SUPPLIER_ORDER_ID),
	FOREIGN KEY (SUPPLIER_ID) REFERENCES SUPPLIER (SUPPLIER_ID)


DROP TABLE SUPPLIER_ORDER_ITEM CASCADE CONSTRAINTS;
CREATE TABLE SUPPLIER_ORDER_ITEM (
	S_ORDER_ITEM_ID		INTEGER NOT NULL,
	SUPPLIER_ORDER_ID	INTEGER NOT NULL,
	ITEM_ID			INTEGER NOT NULL,
	SUPP_ORDER_QTY		INTEGER,
	SUPP_ORDER_TYPE		CHAR(20),
	SUPP_ORDER_WEIGHT	DECIMAL,
	SUPP_ORDER_SIZE		VARCHAR(15),
	SUPP_ORDER_SUBTOTAL	NUMBER(5,2),
	PRIMARY KEY (ORDER_ITEM_ID),
	FOREIGN KEY (ITEM_ID) REFERENCES ITEM (ITEM_ID),
	FOREIGN KEY (SUPPLIER_ORDER_ID) REFERENCES SUPPLIER_ORDER (SUPPLIER_ORDER_ID)
	);


DROP TABLE ITEM CASCADE CONSTRAINTS;
CREATE TABLE ITEM (
	ITEM_ID 		INTEGER NOT NULL,
	ITEM_PRICE		NUMBER(5,2),
	ITEM_EXP_DATE 		DATE,
	ITEM_CALORIES		INTEGER,
	ITEM_CREATION_DATE 	DATE,
	ITEM_WEIGHT 		DECIMAL,
	ITEM_SIZE 		DECIMAL,
	ITEM_STORAGE_CATEGORY   VARCHAR(50),
PRIMARY KEY(ITEM_ID)
);


DROP TABLE ORDER_ITEM CASCADE CONSTRAINTS;
CREATE TABLE ORDER_ITEM (
	ORDER_ITEM_ID 		INTEGER NOT NULL,
	ORDER_QTY		INTEGER,
	ORDER_ID		INTEGER NOT NULL,
	ITEM_ID			INTEGER NOT NULL,
	ORDER_TYPE		VARCHAR2(50),
	ORDER_TOTAL_WEIGHT	DECIMAL,
	ORDER_SUBTOTAL		NUMBER(5,2),
	ORDER_DESCRIPTION 	VARCHAR2(50),
PRIMARY KEY (ORDER_ITEM_ID),
FOREIGN KEY (ORDER_ID) REFERENCES ORDERS (ORDER_ID),
FOREIGN KEY (ITEM_ID) REFERENCES ITEM (ITEM_ID)
);


DROP TABLE ORDERS CASCADE CONSTRAINTS;
CREATE TABLE ORDERS (
	ORDER_ID		INTEGER NOT NULL,
	ORDER_DATE		DATE,
	CUSTOMER_ID		INTEGER NOT NULL,
	ORDER_TIME		CHAR(10),
	ORDER_PMT_TYPE		CHAR(10),
	ORDER_DISCOUNT		CHAR(10),
	ORDER_STATUS		CHAR(10),
	Shipment		VARCHAR(10),
PRIMARY KEY (ORDER_ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER (CUSTOMER_ID)
);


DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER (
	CUSTOMER_ID		INTEGER NOT NULL,
	CUSTOMER_FIRST_NAME	VARCHAR(20),
	CUSTOMER_LAST_NAME	VARCHAR(20),
	CUSTOMER_COUNTRY	VARCHAR(25), 
	CUSTOMER_STATE		VARCHAR(2),
	CUSTOMER_STREET_ADDRESS	CHAR(30),
	CUSTOMER_PHONE		CHAR(12),
	CUSTOMER_DOB		DATE,
PRIMARY KEY (CUSTOMER_ID)
);