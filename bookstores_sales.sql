#  Mini Project: Online Bookstore Sales Analysis with SQL

SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;

# Basic Level :

# 1. Retrieve all books in the “Fiction” genre.

SELECT *
FROM Books
WHERE Genre = 'Fiction';

# 2. Find books published after the year 1950.

SELECT *
FROM Books
WHERE Published_Year > 1950;

# 3. List all customers from Canada.

SELECT * 
FROM customers 
WHERE Country = 'Canada';


# 4. Show orders placed in November 2023.

SELECT * 
FROM orders 
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

# 5. Retrieve the total stock of books available.

SELECT SUM(Stock) AS total_stock_avail
FROM books;

# 6. Find the details of the most expensive book.

SELECT *
FROM books
ORDER BY Price DESC
LIMIT 1;

# 7. Show all customers who ordered more than 1 quantity of a book.

SELECT DISTINCT c.*
FROM orders o
JOIN customers c 
ON c.Customer_ID = o.Customer_ID
WHERE o.Quantity > 1;

# 8. Retrieve all orders where the total amount exceeds $20.

SELECT 
  o.Order_ID,
  o.Customer_ID,
  SUM(o.Quantity * b.Price) AS Order_Total
FROM orders o
JOIN books b ON b.Book_ID = o.Book_ID
GROUP BY o.Order_ID, o.Customer_ID
HAVING SUM(o.Quantity * b.Price) > 20;

# 9. List all distinct genres in the bookstore

SELECT DISTINCT Genre
FROM books
ORDER BY Genre;

# 10. Find the book with the lowest stock available.

SELECT *
FROM books
ORDER BY Stock ASC
LIMIT 1;

# 11. Calculate the total revenue from all orders.

SELECT SUM(Total_Amount) as total_revenue
FROM orders;

# 12. Retrieve the total number of books sold for each genre.

SELECT b.Genre, SUM(o.Quantity) AS Total_Sold
FROM orders o
JOIN books b 
ON o.Book_ID = b.Book_ID
GROUP BY b.Genre;

# 13. Find the average price of books in the “Fantasy” genre.

SELECT AVG(Price) 
FROM books
WHERE Genre = 'Fantasy';

# 14. List customers who have placed at least 2 orders.

SELECT c.Customer_ID, c.Name, COUNT(o.Order_ID) AS Num_Orders
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.Name
HAVING COUNT(o.Order_ID) >= 2;

# 15. Find the most frequently ordered book.

SELECT b.Title, SUM(o.Quantity) AS Total_Ordered
FROM orders o
JOIN books b ON o.Book_ID = b.Book_ID
GROUP BY b.Title
ORDER BY Total_Ordered DESC
LIMIT 1;

# 16. Show the top 3 most expensive books of the “Fantasy” genre.

SELECT Title, Author, Price
FROM books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3;

# 17. Retrieve the total quantity of books sold by each author.

SELECT b.Author, SUM(od.Quantity) AS Total_books_sold_by_Author
FROM orders as od
JOIN books b
ON od.Book_ID = b.Book_ID
GROUP BY b.author;

# 18. List the cities of customers who spent over $30.

SELECT DISTINCT c.city
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN orders od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
GROUP BY c.customer_id, c.city
HAVING SUM(od.quantity * b.price) > 30;

# 19. find the customer who spent the most on orders

SELECT c.Customer_ID, SUM(od.quantity * b.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN orders od ON o.order_id = od.order_id
JOIN books b ON od.book_id = b.book_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 1;

# 20. Calculate the stock remaining after fulfilling all orders.

SELECT b.book_id, b.title, 
       (b.stock - IFNULL(SUM(od.quantity), 0)) AS remaining_stock
FROM books b
LEFT JOIN orders od ON b.book_id = od.book_id
GROUP BY b.book_id, b.title, b.stock;

