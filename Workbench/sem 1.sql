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



DELIMITER //
CREATE PROCEDURE secondsToTimeFormat(IN seconds INT, OUT timeFormat VARCHAR(50))
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    SET days = seconds DIV 86400;
    SET seconds = seconds % 86400;
    SET hours = seconds DIV 3600;
    SET seconds = seconds % 3600;
    SET minutes = seconds DIV 60;
    SET seconds = seconds % 60;
    SET timeFormat = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
END //
DELIMITER ;

CALL secondsToTimeFormat(123456, @timeFormat);
SELECT @timeFormat;


