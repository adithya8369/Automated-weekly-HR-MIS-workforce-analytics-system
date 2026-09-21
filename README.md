# Automated Weekly HR MIS & Workforce Analytics System

An end-to-end HR attendance analytics project designed to transform workforce attendance data into a structured MIS reporting and business-analysis workflow using **MySQL, Power BI, Python, and n8n**.

The project focuses on data validation, attendance analysis, workforce KPIs, and management-ready reporting.

## 📌 Project Overview

HR teams often work with attendance data containing inconsistent values, missing fields, and different employee attributes. This project demonstrates how raw HR attendance data can be cleaned, validated, analyzed, and converted into an interactive Power BI MIS report.

### Business Objectives

- Track employee attendance and workforce trends
- Monitor Present, WFH, Absent, Leave, and Half Day status
- Analyze attendance by department, location, employee type, and shift
- Validate HR data quality before reporting
- Create reusable SQL analysis and validation queries
- Present management-friendly KPIs through Power BI
- Support a repeatable weekly MIS reporting workflow

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Python / Pandas** | Data cleaning and preparation |
| **MySQL** | Data storage, validation, and SQL analysis |
| **Power BI** | Interactive HR MIS dashboard and visualization |
| **n8n** | Workflow automation concept for recurring MIS reporting |
| **Git & GitHub** | Version control and project documentation |

## 🔄 Project Workflow

```text
HR Attendance Data
        ↓
Data Cleaning & Validation
        ↓
MySQL Database
        ↓
SQL Analysis & Business Queries
        ↓
Power BI HR MIS Dashboard
        ↓
Weekly MIS Reporting Workflow
        ↓
Management Insights
```

## 📊 Dataset

The HR attendance dataset represents workforce attendance records across **60 fictional employees**.

The cleaned project data contains attendance records with fields such as:

- Employee ID
- Date
- Department
- Location
- Employee Type
- Shift
- Status
- Work Hours
- Overtime Hours

The project includes validation checks for missing values, duplicate employee/date combinations, allowed categorical values, and logical working-hour conditions.

## 📈 Attendance Status Distribution

The final cleaned attendance analysis contains the following status counts:

| Attendance Status | Records |
|---|---:|
| Present | 6,319 |
| WFH | 625 |
| Absent | 267 |
| Leave | 223 |
| Half Day | 123 |

**Total records:** 7,557 status-classified records in the final analysis.

> Note: The repository contains the SQL and Power BI implementation used for the project. The figures above describe the final analysis state used during project development.

## 🔍 Key Analysis Areas

### Workforce Attendance
- Attendance volume and status distribution
- Daily and weekly attendance trends
- Employee attendance patterns

### Department Analysis
- Attendance by department
- Workforce distribution
- Department-level attendance trends

### Location Analysis
- Office/location-wise attendance
- WFH patterns
- Workforce distribution by location

### Shift & Employee Type
- Shift-wise attendance
- Employee-type analysis
- Attendance behavior across workforce segments

### Work Hours & Overtime
- Average work hours
- Overtime analysis
- Identification of unusual working-hour patterns

## 🧹 Data Quality & Validation

The project includes SQL validation logic to check:

- Missing employee and attendance attributes
- Duplicate Employee ID + Date combinations
- Invalid department/location values
- Invalid employee types and shifts
- Invalid attendance statuses
- Logical consistency between attendance status and working hours
- Work-hour and overtime values

This ensures that the data used for management reporting is validated before analysis.

## 📁 Repository Contents

| File | Description |
|---|---|
| `HR_MIS_analysis.pbix` | Power BI HR MIS dashboard |
| `hr_MIS_1.sql` | Attendance table setup and SQL analysis |
| `hr_business_analysis.sql` | Business-focused HR analysis queries |
| `hr_mis_validation.sql` | Data-quality and validation queries |
| `hr_mis.sql` | HR MIS database/SQL scripts |
| `README.md` | Project documentation |

## 💼 Business Value

This project demonstrates how HR attendance data can be converted from raw operational records into structured information for management reporting.

It demonstrates practical skills in:

- Data cleaning
- Data validation
- SQL querying
- Workforce analytics
- KPI development
- Power BI reporting
- MIS reporting
- Workflow automation
- Business-oriented data analysis

## 🎯 Key Skills Demonstrated

**Data Analytics:** Python, Pandas, Data Cleaning, Data Validation

**SQL:** MySQL, Aggregations, Joins, Filtering, Grouping, Business Analysis, Validation Queries

**Business Intelligence:** Power BI, KPI Reporting, Workforce Dashboards

**Automation:** n8n workflow design for recurring MIS reporting

**Version Control:** Git, GitHub

## 🚀 Future Enhancements

Potential extensions to the project include:

- Automated weekly email/report distribution
- Scheduled database refresh
- Automated data-quality alerts
- Additional HR KPIs such as absenteeism rate and overtime rate
- Employee-level trend analysis
- Integration with an HR information system

## 👨‍💻 Project Author

**Adithya**

Data Analytics | SQL | Power BI | Python

---

⭐ This project was created as a practical HR analytics and MIS reporting project to demonstrate end-to-end data analysis and business intelligence skills.
