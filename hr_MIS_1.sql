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

SELECT COUNT(*) AS total_attendance_records
FROM attendance; 
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT Employee_ID) AS unique_employees,
    MIN(Date) AS first_date,
    MAX(Date) AS last_date
FROM attendance;

SELECT
    Status,
    COUNT(*) AS record_count
FROM attendance
GROUP BY Status
ORDER BY record_count DESC; 

--- Total workforce
select 
 count(distinct employee_id ) as total_emp
from attendance; 

--- WORKFORCE by department
select Department,
 count(distinct employee_id) as emp_count
FROM attendance
group by Department 
order by emp_count desc;
 
--- Workforce by Location

select Location,
  count(distinct employee_id) as emp_count
from attendance
group by Location
order by emp_count desc; 

--- Permanent vs contract workforce
SELECT
    Employee_Type,
    COUNT(DISTINCT Employee_ID) AS employee_count,
    ROUND(
        COUNT(DISTINCT Employee_ID) * 100.0 /
        (SELECT COUNT(DISTINCT Employee_ID)
         FROM attendance),
        2
    ) AS workforce_share_pct
FROM attendance
GROUP BY Employee_Type
ORDER BY employee_count DESC;

--- workforce by shift

SELECT
    Shift,
    COUNT(DISTINCT Employee_ID) AS employee_count
FROM attendance
GROUP BY Shift
ORDER BY employee_count DESC; 

--- overall attendece
SELECT
    COUNT(*) AS total_records,
    SUM(Status IN ('Present', 'WFH')) AS available_days,
    SUM(Status = 'Absent') AS absent_days,
    SUM(Status = 'Leave') AS leave_days,
    SUM(Status = 'Half Day') AS half_day_days
FROM attendance; 

--- Attendence rate
SELECT
    ROUND(
        SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2
    ) AS attendance_rate
FROM attendance; 

--- Absentice rate
SELECT
    ROUND(
        SUM(Status =  'Absent') / COUNT(*) * 100, 2
    ) AS absenteeism_rate
FROM attendance; 

--- Average work hours

SELECT ROUND(AVG(Work_Hours), 2) AS avg_work_hours
FROM attendance; 

--- Overtime hours
SELECT ROUND(SUM(Overtime_Hours), 2) AS total_overtime_hours
FROM attendance; 

--- Attendance by department
SELECT
    Department,
    ROUND(
        SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2
    ) AS attendance_rate
FROM attendance
GROUP BY Department
ORDER BY attendance_rate DESC;

--- Overtime by department
SELECT
    Department,
    ROUND(SUM(Overtime_Hours), 2) AS overtime_hours
FROM attendance
GROUP BY Department
ORDER BY overtime_hours DESC; 

--- Attendance by shift
SELECT
    Shift,
    ROUND(
        SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2
    ) AS attendance_rate
FROM attendance
GROUP BY Shift
ORDER BY attendance_rate DESC; 

--- Status summary
SELECT
    Status,
    COUNT(*) AS records
FROM attendance
GROUP BY Status
ORDER BY records DESC;

--- Average work hours by department
SELECT
    Department,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours
FROM attendance
GROUP BY Department
ORDER BY avg_work_hours DESC;