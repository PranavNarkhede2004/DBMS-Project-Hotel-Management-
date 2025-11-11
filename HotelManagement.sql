CREATE DATABASE IF NOT EXISTS HotelManagement;
USE HotelManagement;

-- 1️⃣ Hotel (only one hotel, but still keep table for completeness)
CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_name VARCHAR(100),
    city VARCHAR(50),
    rating DECIMAL(2,1)
);

-- 2️⃣ Room
CREATE TABLE Room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10),
    room_type VARCHAR(30),
    price_per_night DECIMAL(8,2),
    availability_status VARCHAR(20)
);

-- 3️⃣ Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- 4️⃣ Booking
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    room_id INT,
    check_in DATE,
    check_out DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

-- 5️⃣ Payment
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    amount DECIMAL(10,2),
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

INSERT INTO Hotel (hotel_name, city, rating) VALUES
('Hotel BlueMoon', 'Nagpur', 4.6);

INSERT INTO Room (room_number, room_type, price_per_night, availability_status) VALUES
('101', 'Standard', 3500, 'Available'),
('102', 'Standard', 3600, 'Available'),
('103', 'Standard', 3700, 'Booked'),
('104', 'Deluxe', 5500, 'Available'),
('105', 'Deluxe', 5700, 'Booked'),
('106', 'Suite', 8500, 'Available'),
('107', 'Suite', 8800, 'Booked'),
('108', 'Suite', 9000, 'Available'),
('109', 'Deluxe', 6000, 'Available'),
('110', 'Standard', 3400, 'Booked'),
('111', 'Standard', 3800, 'Available'),
('112', 'Deluxe', 5900, 'Available'),
('113', 'Suite', 8700, 'Available'),
('114', 'Deluxe', 6200, 'Booked'),
('115', 'Standard', 4000, 'Available'),
('116', 'Deluxe', 6300, 'Available'),
('117', 'Suite', 9100, 'Booked'),
('118', 'Suite', 9400, 'Available'),
('119', 'Deluxe', 6400, 'Available'),
('120', 'Standard', 3900, 'Available'),
('121', 'Standard', 4100, 'Booked'),
('122', 'Deluxe', 6500, 'Available'),
('123', 'Suite', 9600, 'Available'),
('124', 'Deluxe', 6600, 'Booked'),
('125', 'Standard', 4200, 'Available'),
('126', 'Deluxe', 6700, 'Available'),
('127', 'Suite', 9700, 'Available'),
('128', 'Standard', 4400, 'Available'),
('129', 'Deluxe', 6900, 'Available'),
('130', 'Suite', 9800, 'Booked'),
('131', 'Standard', 4300, 'Available'),
('132', 'Deluxe', 7000, 'Available'),
('133', 'Suite', 9900, 'Available'),
('134', 'Deluxe', 7100, 'Available'),
('135', 'Suite', 10000, 'Booked'),
('136', 'Deluxe', 7200, 'Available'),
('137', 'Standard', 4500, 'Available'),
('138', 'Suite', 8900, 'Available'),
('139', 'Deluxe', 7300, 'Available'),
('140', 'Suite', 9200, 'Booked');

INSERT INTO Customer (name, phone, email, city) VALUES
('Amit Sharma','9876543210','amit@gmail.com','Nagpur'),
('Priya Mehta','8765432109','priya@gmail.com','Pune'),
('Ravi Kumar','9988776655','ravi@gmail.com','Delhi'),
('Neha Verma','9123456780','neha@gmail.com','Mumbai'),
('Karan Singh','9090909090','karan@gmail.com','Nagpur'),
('Pooja Patil','9822001122','pooja@gmail.com','Nashik'),
('Rahul Deshmukh','9876512345','rahul@gmail.com','Pune'),
('Sneha Gupta','9812345678','sneha@gmail.com','Delhi'),
('Vikas Thakur','9745632100','vikas@gmail.com','Jaipur'),
('Anjali Yadav','9012345678','anjali@gmail.com','Nagpur'),
('Saurabh Jain','9911223344','saurabh@gmail.com','Indore'),
('Manish Rawat','9822334455','manish@gmail.com','Bhopal'),
('Simran Kaur','9876123456','simran@gmail.com','Amritsar'),
('Deepak Tiwari','9999888777','deepak@gmail.com','Lucknow'),
('Isha Desai','9755312345','isha@gmail.com','Mumbai'),
('Rohit Nair','9765432198','rohit@gmail.com','Chennai'),
('Alok Verma','9988001122','alok@gmail.com','Nagpur'),
('Kavita Joshi','9855567890','kavita@gmail.com','Pune'),
('Harish Patel','9777765432','harish@gmail.com','Surat'),
('Payal Shah','9788899900','payal@gmail.com','Ahmedabad'),
('Vivek Malhotra','9811223344','vivek@gmail.com','Delhi'),
('Richa Jain','9777765544','richa@gmail.com','Indore'),
('Aarav Kapoor','9898989898','aarav@gmail.com','Delhi'),
('Ananya Singh','9776612345','ananya@gmail.com','Nagpur'),
('Raj Mehta','9811122233','raj@gmail.com','Pune'),
('Tina Dsouza','9777788899','tina@gmail.com','Goa'),
('Krishna Rao','9877777777','krishna@gmail.com','Hyderabad'),
('Sonal Thakur','9833344455','sonal@gmail.com','Nagpur'),
('Parth Joshi','9998877665','parth@gmail.com','Ahmedabad'),
('Arjun Pillai','9123459876','arjun@gmail.com','Chennai'),
('Riya Sen','9312345678','riya@gmail.com','Kolkata'),
('Dev Patel','9876567890','dev@gmail.com','Surat'),
('Reema Khan','9812341234','reema@gmail.com','Nagpur'),
('Aditya Rao','9001112233','aditya@gmail.com','Bangalore'),
('Meera Iyer','9722223334','meera@gmail.com','Mumbai'),
('Aniket Sahu','9800112233','aniket@gmail.com','Nagpur'),
('Mitali Jain','9845632178','mitali@gmail.com','Jaipur'),
('Gaurav Patil','9823456789','gaurav@gmail.com','Pune'),
('Rachit Agarwal','9856543210','rachit@gmail.com','Delhi'),
('Ishaan Ghosh','9900099999','ishaan@gmail.com','Kolkata');

INSERT INTO Booking (customer_id, room_id, check_in, check_out, total_amount) VALUES
(1,3,'2025-11-01','2025-11-04',11100),
(2,5,'2025-11-02','2025-11-05',17100),
(3,7,'2025-11-03','2025-11-06',26400),
(4,10,'2025-11-04','2025-11-06',6800),
(5,14,'2025-11-05','2025-11-09',24800),
(6,17,'2025-11-05','2025-11-07',18200),
(7,21,'2025-11-06','2025-11-09',12300),
(8,24,'2025-11-07','2025-11-10',19800),
(9,30,'2025-11-08','2025-11-11',29400),
(10,35,'2025-11-09','2025-11-11',20000),
(11,40,'2025-11-09','2025-11-12',27600),
(12,7,'2025-11-10','2025-11-13',26400),
(13,14,'2025-11-10','2025-11-14',24800),
(14,24,'2025-11-11','2025-11-13',19800),
(15,35,'2025-11-11','2025-11-15',40000),
(16,30,'2025-11-12','2025-11-14',29400),
(17,3,'2025-11-13','2025-11-16',11100),
(18,5,'2025-11-13','2025-11-16',17100),
(19,7,'2025-11-14','2025-11-17',26400),
(20,10,'2025-11-15','2025-11-17',6800),
(21,14,'2025-11-15','2025-11-18',24800),
(22,17,'2025-11-15','2025-11-18',18200),
(23,21,'2025-11-16','2025-11-19',12300),
(24,24,'2025-11-16','2025-11-19',19800),
(25,30,'2025-11-17','2025-11-20',29400),
(26,35,'2025-11-18','2025-11-20',20000),
(27,40,'2025-11-18','2025-11-21',27600),
(28,7,'2025-11-19','2025-11-22',26400),
(29,14,'2025-11-19','2025-11-22',24800),
(30,24,'2025-11-20','2025-11-22',19800),
(31,35,'2025-11-20','2025-11-24',40000),
(32,30,'2025-11-21','2025-11-23',29400),
(33,3,'2025-11-22','2025-11-24',11100),
(34,5,'2025-11-22','2025-11-25',17100),
(35,7,'2025-11-23','2025-11-26',26400),
(36,10,'2025-11-24','2025-11-26',6800),
(37,14,'2025-11-24','2025-11-27',24800),
(38,17,'2025-11-25','2025-11-28',18200),
(39,21,'2025-11-25','2025-11-28',12300),
(40,24,'2025-11-26','2025-11-29',19800);

INSERT INTO Payment (booking_id, payment_date, payment_method, amount) VALUES
(1,'2025-11-01','Credit Card',11100),
(2,'2025-11-02','UPI',17100),
(3,'2025-11-03','Cash',26400),
(4,'2025-11-04','UPI',6800),
(5,'2025-11-05','Credit Card',24800),
(6,'2025-11-05','Cash',18200),
(7,'2025-11-06','UPI',12300),
(8,'2025-11-07','Credit Card',19800),
(9,'2025-11-08','Debit Card',29400),
(10,'2025-11-09','UPI',20000),
(11,'2025-11-09','Cash',27600),
(12,'2025-11-10','Credit Card',26400),
(13,'2025-11-10','UPI',24800),
(14,'2025-11-11','Cash',19800),
(15,'2025-11-11','Credit Card',40000),
(16,'2025-11-12','UPI',29400),
(17,'2025-11-13','Credit Card',11100),
(18,'2025-11-13','Cash',17100),
(19,'2025-11-14','UPI',26400),
(20,'2025-11-15','Debit Card',6800),
(21,'2025-11-15','UPI',24800),
(22,'2025-11-15','Cash',18200),
(23,'2025-11-16','Credit Card',12300),
(24,'2025-11-16','UPI',19800),
(25,'2025-11-17','Cash',29400),
(26,'2025-11-18','UPI',20000),
(27,'2025-11-18','Debit Card',27600),
(28,'2025-11-19','Cash',26400),
(29,'2025-11-19','Credit Card',24800),
(30,'2025-11-20','UPI',19800),
(31,'2025-11-20','Cash',40000),
(32,'2025-11-21','Debit Card',29400),
(33,'2025-11-22','UPI',11100),
(34,'2025-11-22','Credit Card',17100),
(35,'2025-11-23','UPI',26400),
(36,'2025-11-24','Cash',6800),
(37,'2025-11-24','Credit Card',24800),
(38,'2025-11-25','UPI',18200),
(39,'2025-11-25','Debit Card',12300),
(40,'2025-11-26','Cash',19800);

select * from Hotel
select * from Room
select * from Customer
select * from Booking
select * from Payment

-- 🏨 HOTEL MANAGEMENT SYSTEM — SQL QUERIES (FINAL VERSION)



-- 1️.Find all available rooms
SELECT room_number, room_type, price_per_night
FROM Room
WHERE availability_status = 'Available'
ORDER BY price_per_night ASC;

-- 2️.Display all customers from Nagpur
SELECT name, phone, email
FROM Customer
WHERE city = 'Nagpur';

-- 3️.Count total number of rooms by room type
SELECT room_type, COUNT(*) AS Total_Rooms
FROM Room
GROUP BY room_type;

-- 4️.Display booking details with customer name and room type
SELECT b.booking_id, c.name AS Customer, r.room_type, r.price_per_night,
       b.check_in, b.check_out, b.total_amount
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
JOIN Room r ON b.room_id = r.room_id
ORDER BY b.check_in;

-- 5️⃣ Calculate total revenue collected through each payment method
SELECT payment_method, SUM(amount) AS Total_Revenue
FROM Payment
GROUP BY payment_method
ORDER BY Total_Revenue DESC;

-- 6️.Find average stay duration (in days) for all bookings
SELECT ROUND(AVG(DATEDIFF(check_out, check_in)), 2) AS Avg_Stay_Duration
FROM Booking;

-- 7️.List customers who booked rooms priced above the overall average room price
SELECT DISTINCT c.name, r.room_number, r.price_per_night
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
JOIN Room r ON b.room_id = r.room_id
WHERE r.price_per_night > (SELECT AVG(price_per_night) FROM Room);

-- 8️.Find top 5 customers who spent the most overall
SELECT c.name, SUM(b.total_amount) AS Total_Spent
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
GROUP BY c.name
ORDER BY Total_Spent DESC
LIMIT 5;

-- 9️.Find customers who have made more than 2 bookings
SELECT c.name, COUNT(b.booking_id) AS Total_Bookings
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
GROUP BY c.name
HAVING COUNT(b.booking_id) > 2;

-- 10 Find the room that generated the highest revenue overall
SELECT r.room_number, r.room_type, SUM(b.total_amount) AS Total_Revenue
FROM Room r
JOIN Booking b ON r.room_id = b.room_id
GROUP BY r.room_id
ORDER BY Total_Revenue DESC
LIMIT 1;

-- 11️.Find customers who paid more than their city’s average spending
SELECT c.name, c.city, SUM(b.total_amount) AS Total_Spent
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
GROUP BY c.name, c.city
HAVING SUM(b.total_amount) > (
    SELECT AVG(b2.total_amount)
    FROM Booking b2
    JOIN Customer c2 ON b2.customer_id = c2.customer_id
    WHERE c2.city = c.city
);

-- 12️.Rank customers by total spending
SELECT c.name,
       SUM(b.total_amount) AS Total_Spent,
       RANK() OVER (ORDER BY SUM(b.total_amount) DESC) AS Spending_Rank
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
GROUP BY c.name;

-- 13️. Find the average spending per room type
SELECT r.room_type, ROUND(AVG(b.total_amount), 2) AS Avg_Spending
FROM Booking b
JOIN Room r ON b.room_id = r.room_id
GROUP BY r.room_type;

-- 14️.Find occupancy percentage by room type
SELECT 
    room_type,
    COUNT(CASE WHEN availability_status = 'Booked' THEN 1 END) AS Booked_Rooms,
    COUNT(*) AS Total_Rooms,
    ROUND(
        COUNT(CASE WHEN availability_status = 'Booked' THEN 1 END) / COUNT(*) * 100, 2
    ) AS Occupancy_Percentage
FROM Room
GROUP BY room_type;

-- To view the data from the created view
SELECT * FROM BookingSummary LIMIT 10;

-- 15️.Categorize customers into spending tiers using CASE
SELECT c.name,
       SUM(b.total_amount) AS Total_Spent,
       CASE
           WHEN SUM(b.total_amount) > 50000 THEN 'Platinum'
           WHEN SUM(b.total_amount) BETWEEN 25000 AND 50000 THEN 'Gold'
           ELSE 'Silver'
       END AS Customer_Tier
FROM Booking b
JOIN Customer c ON b.customer_id = c.customer_id
GROUP BY c.name
ORDER BY Total_Spent DESC;


