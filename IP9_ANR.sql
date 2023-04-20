use premier_products;
show tables;
#	Print all rows and columns of the dataset
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;
#All rows, last name , first name, sales rep number, city from sales rep table 
select last_name, first_name, sales_rep_num, city from sales_rep;
#	Select order and customer number from orders
select order_num, customer_num from orders;
#	Select only two rows from order line
select * from orders;
#Select all of the entries from customer where sales rep num=20
select * from customer
where sales_rep_num=20;
#Select part num, num ordered, quoted price and total price where total price is (num_ordered * quoted_price) where only 1 num ordered and the order number is 21617
select part_num, num_ordered, quoted_price from order_line
where totalprice=(num_ordered*quoteed_price) and num_ordered=1 and order_num=21617;
#	Show all the orders from order date between '2010-10-20’ and '2010-10-22'
select * from orders
where order_date between '2010-10-20' and '2010-10-22';
#List all of parts where the part description starts with ‘D’ and end with  ‘er’
select * from part 
where description like 'D%' and '%er';
#	Show total balance from customer
select balance from customer;
# Show minimum balance from customer
select balance from customer
where balance<30000;
#Count number of customers in customer table
select count(customer) from customer;
#Select order number where the quote price is more than 500 but less than 1000
select order_num from order_line
where quoted_price>500 and quoted_price<1000;
