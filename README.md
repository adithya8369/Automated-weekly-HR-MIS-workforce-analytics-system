# Automated Weekly HR MIS Workforce Analytics System

A practical HR attendance analytics and MIS automation project using **Python, Pandas, MySQL, Power BI, and n8n**.

The main goal of the project is to clean HR attendance data, validate it, analyze attendance patterns, create a Power BI MIS dashboard, and automate the weekly reporting workflow.

## Project Overview

The project uses attendance data for **60 fictional employees**.

The analysis covers:

- Attendance status
- Department
- Location
- Employee type
- Shift
- Work hours
- Overtime hours

## Tools Used

- **Python & Pandas** – data cleaning and preparation
- **MySQL** – storing, validating, and analyzing data
- **Power BI** – dashboard and KPI reporting
- **n8n** – workflow automation for the weekly MIS reporting process
- **Git & GitHub** – version control

## Project Workflow

```text
Raw HR Attendance Data
        ↓
Python / Pandas
        ↓
Data Cleaning & Validation
        ↓
MySQL
        ↓
SQL Analysis
        ↓
Power BI Dashboard
        ↓
n8n Automation
        ↓
Weekly HR MIS Reporting
```

## What I Did

### 1. Data Cleaning

Used Python and Pandas to work with the raw attendance data and identify data-quality issues such as missing values and inconsistent records.

### 2. Data Validation

Used SQL queries to check:

- Missing values
- Duplicate Employee ID + Date records
- Invalid department and location values
- Invalid employee types and shifts
- Invalid attendance statuses
- Work-hour consistency

### 3. SQL Analysis

Created SQL queries to analyze attendance and workforce information by different employee attributes.

### 4. Power BI Dashboard

Created an HR MIS dashboard to present attendance KPIs and trends for regular HR reporting.

### 5. n8n Workflow Automation

Used n8n to design the workflow for automating the weekly HR MIS reporting process, reducing the need for repetitive manual reporting steps.

## Attendance Data

The project includes these attendance statuses:

| Status | Records |
|---|---:|
| Present | 6,319 |
| WFH | 625 |
| Absent | 267 |
| Leave | 223 |
| Half Day | 123 |

## Repository Files

| File | Purpose |
|---|---|
| `HR_MIS_analysis.pbix` | Power BI HR MIS dashboard |
| `hr_MIS_1.sql` | Attendance table and SQL analysis |
| `hr_business_analysis.sql` | HR business analysis queries |
| `hr_mis_validation.sql` | Data validation queries |
| `hr_mis.sql` | HR MIS SQL scripts |
| `README.md` | Project documentation |

## Key Skills

**Python:** Pandas, data cleaning, data validation

**SQL:** MySQL, filtering, grouping, aggregations, joins, validation queries

**Power BI:** KPI reporting, dashboard development, HR analytics

**Automation:** n8n workflow automation, workflow design, recurring MIS reporting

**Tools:** Git, GitHub

## What I Learned

Through this project, I practiced taking an HR dataset from the cleaning stage through SQL analysis and Power BI reporting, and then connecting the reporting process with an automation workflow using n8n.

It also helped me understand how data quality affects the results shown in business reports and how repetitive reporting tasks can be automated.

## Future Improvements

- Automate weekly report distribution
- Add scheduled database refresh
- Add automated data-quality alerts
- Add more HR KPIs
- Connect the workflow to a live HR data source

## Author

**Adithya**

Data Analytics | SQL | Power BI | Python | n8n
