create database if not exists sales;

/* alternatively I can use: CREATE SCHEMA IF NOT EXISTS Sales;*/
-- EXERCISE 1: Creating a Database - Part II

USE sales;

-- EXERCISE 1: Creating a Table

create table customers
(customer_id Int,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints Int);

CREATE TABLE sales 
(
	purchase_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_of_purchase DATE NOT NULL,     
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

-- EXERCISE 1: Using Databases and Tables

SELECT * FROM sales.customers;
SELECT * FROM customers;

-- EXERICSE 1: Additional Notes on Using Tables
DROP TABLE sales;

-- Exercise: PRIMARY KEY constraint - exercise
DROP TABLE customers;

CREATE TABLE customers                                                              
(customer_id INT,  
    first_name varchar(255),  
    last_name varchar(255),  
    email_address varchar(255),  
    number_of_complaints int,  
primary key (customer_id));  

CREATE TABLE items(
 item_code varchar(255),
item varchar(255),
unit_price numeric(10, 2),
company­_id varchar(255),
PRIMARY KEY(item_code));


CREATE TABLE companies( 
company_id varchar(255), 
company_name varchar(255), 
headquarters_phone_number INT(12),
PRIMARY KEY (company_id));

-- FOREIGN KEY constraint - Part II - exercise

drop table sales;
drop table customers;
drop table items;
drop table companies;

-- UNIQUE Constraint - exercise
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;
INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0)
;

-- DEFAULT Constraint - exercise

CREATE TABLE companies( 
company_id varchar(255), 
company_name varchar(255) default "X", 
headquarters_phone_number varchar(255),
Unique key (headquarters_phone_number),
PRIMARY KEY (company_id));

DROP TABLE companies;

-- NOT NULL Constraint - Part I - exercise
alter table companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

alter table companies
change COLUMN headquarters_phone_number headquarters_phone_number varchar(255) NOT NULL;

