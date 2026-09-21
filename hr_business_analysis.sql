--- Weekly Attendance Trend
-- This tells management whether attendance is improving or declining over time.
SELECT
    YEAR(Date) AS year,
    WEEK(Date) AS week,
    ROUND(
        SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2
    ) AS attendance_rate
FROM attendance
GROUP BY YEAR(Date), WEEK(Date)
ORDER BY year, week;

--- Department Performance
-- We want attendance and absenteeism together.
SELECT
    Department,
    ROUND(SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2) AS attendance_rate,
    ROUND(SUM(Status = 'Absent') / COUNT(*) * 100, 2) AS absenteeism_rate
FROM attendance
GROUP BY Department
ORDER BY attendance_rate DESC; 

--- Location Performance
SELECT
    Location,
    ROUND(SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2) AS attendance_rate,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours
FROM attendance
GROUP BY Location
ORDER BY attendance_rate DESC;

--- Shift Analysis
SELECT
    Shift,
    ROUND(SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2) AS attendance_rate,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours
FROM attendance
GROUP BY Shift
ORDER BY attendance_rate DESC;

--- Overtime by Department
SELECT
    Department,
    ROUND(SUM(Overtime_Hours), 2) AS overtime_hours
FROM attendance
GROUP BY Department
ORDER BY overtime_hours DESC;

--- Department Workload + Attendance
-- This is one of the more useful Day 5 queries.
SELECT
    Department,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours,
    ROUND(SUM(Overtime_Hours), 2) AS overtime_hours,
    ROUND(SUM(Status = 'Absent') / COUNT(*) * 100, 2) AS absenteeism_rate
FROM attendance
GROUP BY Department
ORDER BY overtime_hours DESC;

---- Find Departments Needing Attention 
--- Keep the rule simple:
--- Attendance < 90%
--- OR absenteeism > 8%
SELECT
    Department,
    ROUND(SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2) AS attendance_rate,
    ROUND(SUM(Status = 'Absent') / COUNT(*) * 100, 2) AS absenteeism_rate
FROM attendance
GROUP BY Department
ORDER BY attendance_rate; 

--- Highest Overtime Department
SELECT
    Department,
    ROUND(SUM(Overtime_Hours), 2) AS overtime_hours
FROM attendance
GROUP BY Department
ORDER BY overtime_hours DESC
LIMIT 1;

--- Final Management Summary
--- This gives us the major KPIs in one query.
SELECT
    COUNT(DISTINCT Employee_ID) AS total_employees,
    ROUND(SUM(Status IN ('Present', 'WFH')) / COUNT(*) * 100, 2) AS attendance_rate,
    ROUND(SUM(Status = 'Absent') / COUNT(*) * 100, 2) AS absenteeism_rate,
    ROUND(AVG(Work_Hours), 2) AS avg_work_hours,
    ROUND(SUM(Overtime_Hours), 2) AS total_overtime_hours
FROM attendance; 