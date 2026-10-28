CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
	worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name CHAR(25),
    last_name CHAR(25),
    salary INT,
    joining_date DATETIME,
    department CHAR(25)
);

SELECT * FROM Worker;
INSERT INTO Worker
(worker_id, first_name, last_name, salary, joining_date, department) 
VALUES (001, 'Divyanka', 'Pagare', 150000, '01-11-22 09.00.00', 'HR'),
(002, 'Ritesh', 'Girase', 340000, '01-02-24 09.00.00', 'Admin'),
(003, 'Rinku', 'Pagare', 450000, '05-03-24 09.00.00', 'Account'), 
(004, 'Vinu', 'Girase', 500000, '15-07-24 09.00.00', 'Account'), 

-- DROP TABLE Worker;   -- can't drop the table --> Error Code: 3730. Cannot drop table 'worker' referenced by a foreign key constraint 'bonus_ibfk_1' on table 'bonus'.
  
Select * from Worker;

CREATE TABLE Bonus (
	worker_ref_id INT,
    bonus_amount INT,
    bonus_date datetime,
    foreign key (worker_ref_id)
		references worker(worker_id)
        on delete cascade
);

INSERT INTO 
Bonus(worker_ref_id, bonus_amount, bonus_date) 
VALUES (001, 5000, '10-01-23'),
(002, 3000, '18-06-24'),
(003, 4000, '26-04-23'),
(004, 4500, '10-05-24'),

Select * from Bonus;

CREATE TABLE Title (
	worker_ref_id INT,
    worker_title VARCHAR(25),
    affected_from datetime,
    foreign key (worker_ref_id)
		references Worker(worker_id)
        ON delete cascade
);

INSERT INTO Title (worker_ref_id, worker_title, affected_from) 
VALUES (001, 'Manager', '25-02-23 09.00.00'),
(002, 'Executive', '25-02-23 09.00.00'),
(003, 'Manager', '25-02-23 09.00.00'),
(004, 'Asst. Manager', '25-02-23 09.00.00'),


Select * from Title;



