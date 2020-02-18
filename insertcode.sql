insert into SUPPLIER values
('894394021', 'United States', 'Il', '141 Lillian Street', 'Youopia', 'Grocery', '8AM-9PM', '312-314-1026');
insert into SUPPLIER values
('260565099', 'United States', 'Ca', '774 Annamark Crossing', 'Brightbean', 'Garden', '7AM-7PM', '909-240-9343');
insert into SUPPLIER values
('528957289', 'United States', 'Fl', '78390 Ilene Junction', 'Devcast', 'Outdoors', '10AM-4PM', '239-406-2393');
insert into Supplier values
('580403445', 'United States', 'Fl', '73 Talisman Crossing', 'Gevee', 'Baby', '11AM-7PM', '904-520-0892');
insert into Supplier values
('667518733', 'United States', 'Tx', '11159 Logan Center', 'Talane', 'Grocery', '9AM-6PM', '504-248-0233');


insert into SUPPLIER_ORDER values
('550747624', '894394021', '12-Nov-18', '7:29 PM', 'shipped', '11-Nov-18', '0%', 66);
insert into SUPPLIER_ORDER values
('450870276', '894394021', '26-Jan-18', '7:44 AM', 'shipped', '28-Jan-18', '0%', 24);
insert into SUPPLIER_ORDER values
('793452124', '260565099', '03-Mar-18', '1:19 AM', 'shipped', '04-Mar-18', '7.5%', 28);
insert into SUPPLIER_ORDER values
('472068504', '528957289', '22-Aug-18', '12:30 AM', 'shipped', '25-Aug-18', '4%', 48);
insert into SUPPLIER_ORDER values
('299511983', '667518733', '09-Jun-18', '3:54 AM', 'shipped', '10-Jun-18', '5%', 24);


insert into SUPPLIER_ORDER_ITEM values
('036585213', '550747624', '006255', 43, 'frozen', 25, '15x10', 91.00);
insert into SUPPLIER_ORDER_ITEM values
('022515416', '550747624', '006255', 5, 'room temp', 35, '8x8', 67.73);
insert into SUPPLIER_ORDER_ITEM values
('126313154', '793452124', '002621', 39, 'room temp', 33, '20x15', 64.99);
insert into SUPPLIER_ORDER_ITEM values
('853363584', '472068504', '003353', 59, 'frozen', 4, '13x13', 19.86);
insert into SUPPLIER_ORDER_ITEM values
('487250994', '299511983', '004102', 10, 'frozen', 12, '24x17', 58.11);


insert into ITEM values
('006255', 10.78, '04-Jun-19', 1000, '02-Jun-18', 28, 15, 'frozen');
insert into ITEM values
('006743', 9.74, '10-Nov-19', 2500,'13-Dec-18', 6, 26, 'room temp');
insert into ITEM values
('002621', 1.75, '9-Dec-19', 1500, '12-Dec-18', 50, 16, 'frozen');
insert into ITEM values
('003353', 7.87, '19-May-19', 1400, '01-Mar-18', 18, 22, 'frozen');
insert into ITEM values
('004102', 19.31, '12-Nov-19', 2600, '07-Nov-18', 24, 1, 'room temp');


insert into ORDER_ITEM values
('1006512', 1, '3005137', '006255', 'large', 161, 147.25, 'Nut - Almond, Blanched, Ground');
insert into ORDER_ITEM values
('1004695', 4, '3005137', '006255', 'small', 71, 67.41, 'Bread - White, Unsliced');
insert into ORDER_ITEM values
('1008025', 2, '3000154', '002621', 'small', 168, 343.75, 'Vodka - Hot, Lnferno');
insert into ORDER_ITEM values
('1008538', 2, '3006995', '003353', 'large', 105, 191.71, 'Soup - Campbells, Butternut');
insert into ORDER_ITEM values
('1001369', 7, '3005118', '004102', 'large', 48, 373.24, 'Shichimi Togarashi Peppers');


insert into ORDERS values
('3005137', '15-Nov-18', '857128789', '11:14 PM', 'Visa', '0%', 'pending', 'delivery');
insert into ORDERS values
('3003566', '10-Nov-18', '609774574', '8:04 AM', 'Visa', '0%', 'closed', 'store');
insert into ORDERS values
('3000154', '17-Nov-18', '149288790', '1:52 AM', 'Cash', '0%', 'closed', 'store');
insert into ORDERS values
('3006995', '06-Nov-18', '481270607', '12:44 PM', 'Cash', '0%', 'closed', 'store');
insert into ORDERS values
('3005118', '12-Nov-18', '371303651', '10:08 PM', 'Cash', '5%', 'closed', 'delivery');


INSERT INTO CUSTOMER VALUES
('857128789', 'Jasen', 'Reucastle', 'United States', 'TX', '6164 4th Parkway', '210-681-0235', '19-Jun-02');
INSERT INTO CUSTOMER VALUES
('609774574', 'Katey', 'Pontin', 'United States', 'OH', '021 Norway Maple Road', '937-246-1243', '22-Dec-54');
INSERT INTO CUSTOMER VALUES
('149288790', 'Thorin', 'Dunseath', 'United States', 'FL', '7 Brickson Park Plaza', '954-785-2532', '23-May-63');
INSERT INTO CUSTOMER VALUES
('481270607', 'Erhard', 'Apedaile', 'United States', 'PA', '3634 Beilfuss Center', '215-648-5556', '17-Feb-85');
INSERT INTO CUSTOMER VALUES
('371303651', 'Erinna', 'Silverton', 'United States', 'CA', '00649 Lakewood Court', '213-812-7984', '26-Apr-30')
