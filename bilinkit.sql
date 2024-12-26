use customer;
create table bilinkit_employee1(b_id int,b_name varchar(20),b_age int,b_time date,b_salary int,c_product varchar(20),b_sales int,b_revenue int);
INSERT INTO bilinkit_employee1 values
(1, 'gokul', 20, '2024-08-09', 55000, 'Phone', 2, 1200),
(2, 'santhosh', 23, '2024-05-07', 48000, 'Laptop', 1, 800),
(3, 'sivanasan', 42, '2024-01-03', 62000, 'Tablet', 3, 1500),
(4, 'nirmal', 31, '2024-01-04', 53000, 'Headphones', 4, 400),
(5, 'thangaesh', 45, '2024-01-05', 60000, 'Monitor', 1, 300),
(6, 'raja', 27, '2024-01-06', 47000, 'Keyboard', 2, 100),
(7, 'indra', 38, '2024-01-07', 59000, 'Mouse', 5, 125),
(8, 'mani', 33, '2024-01-08', 52000, 'Smartwatch', 1, 250),
(9, 'prithivi', 40, '2024-01-09', 61000, 'Printer', 2, 500),
(10, 'praveen', 36, '2024-01-10', 57000, 'Camera', 1, 700),
(11, 'sangeetha', 28, '2024-01-11', 54000, 'Phone', 3, 1800),
(12, 'saravana', 41, '2024-01-12', 62000, 'Laptop', 1, 900),
(13, 'yogith', 30, '2024-01-13', 51000, 'Tablet', 2, 1000),
(14, 'Barbara Harris', 35, '2024-01-14', 55000, 'Headphones', 3, 300),
(15, 'Anthony Lewis', 39, '2024-01-15', 60000, 'Monitor', 2, 600),
(16, 'Jennifer Hall', 26, '2024-01-16', 46000, 'Keyboard', 1, 50),
(17, 'William Young', 43, '2024-01-17', 63000, 'Mouse', 6, 150),
(18, 'Karen King', 32, '2024-01-18', 52000, 'Smartwatch', 2, 500),
(19, 'Andrew Wright', 37, '2024-01-19', 58000, 'Printer', 1, 250),
(20, 'Donna Scott', 29, '2024-01-20', 48000, 'Camera', 1, 750),
(21, 'Joshua Adams', 34, '2024-01-21', 56000, 'Phone', 1, 600),
(22, 'Susan Baker', 40, '2024-01-22', 61000, 'Laptop', 1, 850),
(23, 'Robert Gonzalez', 31, '2024-01-23', 53000, 'Tablet', 2, 1200),
(24, 'Patricia Nelson', 28, '2024-01-24', 49000, 'Headphones', 2, 200),
(25, 'Kevin Carter', 44, '2024-01-25', 62000, 'Monitor', 1, 350),
(26, 'Jessica Mitchell', 27, '2024-01-26', 46000, 'Keyboard', 3, 150),
(27, 'Paul Perez', 39, '2024-01-27', 59000, 'Mouse', 4, 100),
(28, 'Sandra Roberts', 36, '2024-01-28', 54000, 'Smartwatch', 1, 300),
(29, 'Mark Turner', 45, '2024-01-29', 62000, 'Printer', 2, 600),
(30, 'Laura Phillips', 30, '2024-01-30', 51000, 'Camera', 1, 800); 

select *from bilinkit_employee1;

delimiter //
create procedure getbilinkit()
begin
    select*from bilinkit_employee1;
end //
delimiter ;

call getbilinkit();

select*from market join bilinkit_employee1 on market.c_product=bilinkit_employee1.c_product;

select*from bilinkit_employee1 where b_name like "%g%";

use customer;

update bilinkit_employee1 set c_product="laptop"  where b_name="gokul";

call getbilinkit();

select b_salary from bilinkit_employee1 where b_salary > 100 ; 

alter table bilinkit_employee1 rename column b_time to b_joindate;

