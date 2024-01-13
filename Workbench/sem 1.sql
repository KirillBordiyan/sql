/* CREATE DATABASE IF NOT EXISTS myfirstDB;
use myfirstDB;
CREATE TABLE IF NOT EXISTS Customers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Phone VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	CustomerId INT,
	CreatedAt Date,
	FOREIGN KEY (CustomerId) REFERENCES Customers (id) #вот это внешний ключ, который связан с таблицей Customers и колонкой id
);

select * from Orders;
*/

SELECT 3+5;
SELECT 3-5;
SELECT 3*5;
