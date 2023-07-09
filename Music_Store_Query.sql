/* SQL Music data base Project */

-- Set 1
 --Q1: Who is most the senior employee based on job title?
 SELECT title,last_name,first_name FROM employee
 ORDER BY levels DESC
 limit 1
 
/* Q2: Which countries have the most Invoices? */
SELECT COUNT(*) as c , billing_country From invoice
Group By billing_country
ORDER BY c DESC

/* Q3: What are top 3 values of total invoice? */
select total from invoice
ORDER BY total DESC
limit 3

/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */
SELECT billing_city,SUM(total) AS InvoiceTotal
FROM invoice
GROUP BY billing_city
ORDER BY InvoiceTotal DESC
LIMIT 1;
