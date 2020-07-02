# Database-Management-System
Designed E commerce Database &amp; implemented Stored Procedures ,Triggers , views on the tables

Summary:
The aim of the project was to implement various Database terminologies such as Database design , creating tables with entity relations , Stored procedures , Trigers , Index on columns & views.
Relational Database is not an ideal solution for Ecommerce Database , but to understand the concepts of Database this topic was chosen.

Use case:
Customer Details Table : Basic Customer details
Vendor details Table : Store the vendors who sell their products on the webside
Products Table : Stores the product details + the stock of product
Product Category Table : Stores the category of each product
Address Details : Stores the customers & Vendor address( 1 customer can have many address )
Shopping cart Table : Stores the cart which has been ordered
Cart Items : Stores the items added by the customer , these items can/cannot be ordered

Foreign Key and Primary Key entity relationship has been established wherever necessary thus maintaing the normalization of tables

Stored Procedure:
Customer Order Bill for the ordered products is generated through STored Procedure using aggregation and join functions.

User Fucntion : 
A custom Function is efined to count the number of distinct product in the entire cart table to do the on demand products analysis 

Triggers:
After update trigger is is used to update the Products table with the quantiy/stock after an order is placed by the customer
After Trigger update is used to update the Shopping cart table with the order details after the order is placed.





