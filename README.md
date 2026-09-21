# Automated Weekly HR MIS & Workforce Analytics System

A practical HR attendance analytics and MIS automation project using **Python, Pandas, MySQL, Power BI, and n8n**.

The main goal of the project is to clean HR attendance data, validate it, analyze attendance patterns, create a Power BI MIS dashboard, and automate the weekly reporting workflow.

## Project Overview

The project uses attendance data for **60 fictional employees** and covers:

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
SQL KPI / Business Analysis
        ↓
Power BI Dashboard
        ↓
n8n Automation
        ↓
Weekly HR MIS Email
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

The KPI logic is maintained in the SQL layer so the reporting process uses consistent metric definitions.

### 4. Power BI Dashboard

Created an HR MIS dashboard to present attendance KPIs and trends for regular HR reporting.

### 5. n8n Workflow Automation

Built an **11-node n8n workflow** for the weekly HR MIS reporting process.

The automation takes the attendance data through validation and metric calculation, checks whether the data is valid, retrieves the required metrics from MySQL, and prepares the weekly MIS email.

```text
Weekly Schedule
      ↓
Read HR Attendance CSV
      ↓
Extract CSV Data
      ↓
Validate Data Quality
      ↓
Validation Check
      ↓
Calculate HR Metrics
      ↓
Fetch HR Metrics from MySQL
      ↓
Prepare Email Report
      ↓
Build Email Message
      ↓
Send Weekly HR MIS Email
```

The **validation check acts as a gate** before the report is sent. If the data-quality check fails, the reporting path does not continue.

## Attendance Data

The project includes these attendance statuses:

| Status | Records |
|---|---:|
| Present | 6,319 |
| WFH | 625 |
| Absent | 267 |
| Leave | 223 |
| Half Day | 123 |
| **Total** | **7,557** |

## Key Results

| KPI | Value |
|---|---:|
| Attendance rate* | 91.89% |
| Absenteeism rate | 3.53% |
| Total leave records | 223 |
| Total overtime hours | 2,011 |

*Attendance rate is calculated using Present + WFH records divided by total records.

## Dashboard Preview

Add your Power BI dashboard screenshot here so the project can be understood quickly.

## n8n Workflow Preview

Add your n8n automation screenshot here. A clear workflow screenshot helps show how the weekly reporting process is automated from data input through validation, analysis, and email delivery.

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

**Automation:** n8n workflow automation, validation gates, MySQL integration, recurring MIS reporting

**Tools:** Git, GitHub

## What I Learned

Through this project, I practiced taking an HR dataset from the cleaning stage through SQL analysis and Power BI reporting, and then connecting the reporting process with an automation workflow using n8n.

It also helped me understand how data quality affects the results shown in business reports and how repetitive reporting tasks can be automated.

## Future Improvements

- Add scheduled database refresh
- Add automated data-quality alerting beyond the current validation gate
- Add more HR KPIs
- Connect the workflow to a live HR data source

## Author

**Adithya Aravind Kadamanchi**

[LinkedIn](https://www.linkedin.com/in/your-name/)

Data Analytics | SQL | Power BI | Python | n8n
