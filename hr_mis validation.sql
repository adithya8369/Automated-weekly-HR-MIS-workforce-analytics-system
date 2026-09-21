--- Look for duplicate employee-date records
SELECT
    Employee_ID,
    Date,
    COUNT(*) AS record_count
FROM attendance
GROUP BY Employee_ID, Date
HAVING COUNT(*) > 1;

--- Check for NULL values
SELECT
    SUM(Employee_ID IS NULL) AS missing_employee_id,
    SUM(Date IS NULL) AS missing_date,
    SUM(Department IS NULL) AS missing_department,
    SUM(Location IS NULL) AS missing_location,
    SUM(Status IS NULL) AS missing_status,
    SUM(Work_Hours IS NULL) AS missing_work_hours,
    SUM(Overtime_Hours IS NULL) AS missing_overtime
FROM attendance;

--- Confirm the status categories
SELECT DISTINCT Status
FROM attendance;

--- Get the final SQL data snapshot
--- This is our final quick check before Power BI.
SELECT
    COUNT(*) AS records,
    COUNT(DISTINCT Employee_ID) AS employees,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours,
    ROUND(SUM(Overtime_Hours), 2) AS total_overtime
FROM attendance;
--- over time working more than or equal to 3 hrs
SELECT
    Employee_ID,
    SUM(Overtime_Hours) AS total_overtime
FROM attendance
GROUP BY Employee_ID
HAVING total_overtime >= 3
ORDER BY total_overtime DESC; 

