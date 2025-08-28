**Online Bookstore Sales Analysis with SQL**

**Project Overview**

This mini project demonstrates SQL querying skills by analyzing an Online Bookstore Database.
The dataset contains three main tables:
Books – details about books (title, author, genre, price, stock, year of publication)
Customers – information about customers (name, city, country)
Orders – purchase records including quantities, order date, and total amount
The project covers basic to intermediate SQL queries that extract meaningful insights such as sales trends, customer behavior, stock levels, and revenue.

**Technologies Used**

MySQL / SQL Workbench for querying
Relational Database Concepts (Joins, Aggregations, Filtering, Grouping)

**Database Schema**

Tables Used:
Books(Book_ID, Title, Author, Genre, Price, Stock, Published_Year)
Customers(Customer_ID, Name, City, Country)
Orders(Order_ID, Customer_ID, Book_ID, Quantity, Order_Date, Total_Amount)

**Queries Implemented**

1. Retrieve all books in the “Fiction” genre.
2. Find books published after 1950.
3. List customers from Canada.
4. Show orders placed in November 2023.
5. Calculate total stock available.
6. Find details of the most expensive book.
7. Show customers who ordered more than 1 quantity.
8. Retrieve orders where total amount exceeds $20.
9. List all distinct genres.
10. Find the book with the lowest stock.
11. Calculate total revenue from all orders.
12. Find total books sold for each genre.
13. Find average price of Fantasy books.
14. List customers with at least 2 orders.
15. Find the most frequently ordered book.
16. Show top 3 most expensive Fantasy books.
17. Retrieve total quantity of books sold by each author.
18. List cities of customers who spent over $30.
19. Find the customer who spent the most.
20. Calculate stock remaining after fulfilling all orders.

**How to Run This Project**

Clone the repository:
git clone https://github.com/khizareen/Online_Bookstore_Sales_Analysis_SQL.git
cd online-bookstore-sql

Import the provided SQL database file (onlinebookstore_db.sql) into MySQL or SQL Workbench.

Run the bookstore_sales.sql script to execute all queries.

**Learning Outcomes**

- Strengthened SQL query writing skills
- Hands-on practice with joins, grouping, and aggregation
- Practical understanding of business insights using SQL

**Author**

Khizareen Taj
Contact: tajkhizareen@gmail.com
GitHub: https://github.com/khizareen

This project is a great starting point for SQL-based Data Analysis and can be expanded into a complete Bookstore Management & Analytics System.
