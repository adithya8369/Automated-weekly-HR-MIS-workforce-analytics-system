create database hr_mis ;
use hr_mis; 

CREATE TABLE attendance (
    Employee_ID VARCHAR(20),
    Date DATE,
    Department VARCHAR(50),
    Location VARCHAR(50),
    Employee_Type VARCHAR(30),
    Shift VARCHAR(20),
    Status VARCHAR(20),
    Work_Hours DECIMAL(4,2),
    Overtime_Hours DECIMAL(4,2)
); 

SHOW TABLES; 
DESCRIBE attendance; 
use hr_mis; 
drop table if exists attendance;
CREATE TABLE attendance (
    Employee_ID VARCHAR(20),
    Date DATE,
    Department VARCHAR(50),
    Location VARCHAR(50),
    Employee_Type VARCHAR(30),
    Shift VARCHAR(20),
    Status VARCHAR(20),
    Work_Hours double,
    Overtime_Hours double 
    ); 
describe attendance; 

SELECT 
    COUNT(*) AS total_attendance_records
FROM attendance;