# CRM SQL Server Platform

## Overview

CRM SQL Server Platform is a relational database project built in Microsoft SQL Server that simulates the core structure of a Customer Relationship Management (CRM) system.

The platform manages key business objects commonly found in enterprise CRM environments, including:

- Users
- Accounts
- Contacts
- Leads
- Opportunities

This project demonstrates practical SQL development skills such as schema design, primary and foreign key relationships, computed IDs, constraints, realistic business sample data, and reporting queries.

---

## Objectives

- Design a structured multi-table CRM database
- Implement relational links between core business objects
- Simulate real-world sales and customer workflows
- Populate the system with realistic Israeli sample companies and contacts
- Build reusable SQL reporting queries
- Showcase SQL Server database engineering skills for portfolio purposes

---

## Technologies Used

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)
- GitHub

---

## Database Objects

### 1. Users

Internal CRM users such as management, business development, and analysts.

### 2. Accounts

Companies or organizations that are customers or prospects.

### 3. Contacts

Individuals linked to Accounts.

### 4. Leads

Potential future customers not yet fully converted.

### 5. Opportunities

Revenue-generating sales opportunities linked to Accounts.

---

## Key Features

- Auto-generated business IDs (`U0000001`, `A0000001`, etc.)
- Primary and Foreign Key relationships
- Data validation with CHECK constraints
- Revenue and employee metrics
- Opportunity pipeline stages
- Lead management workflow
- Realistic sample data
- Reusable reporting queries

---

## Project Structure

```text
crm-sql-server-platform/
│── LICENSE
│── README.md
│
├── screenshots/
│   ├── crm_accounts-screenshot.png
│   ├── crm_contacts-screenshot.png
│   ├── crm_leads-screenshot.png
│   ├── crm_opportunities-screenshot-part1.png
│   ├── crm_opportunities-screenshot-part2.png
│   ├── crm_users-screenshot.png
│   └── table_screenshot_queries.sql
│
└── sql/
    ├── create_tables.sql
    ├── insert_sample_data.sql
    └── sample_queries.sql
```
---

## How to Run
1. Create Database

Create a new SQL Server database in SSMS.

2. Run Table Creation Script

Execute:

sql/create_tables.sql

3. Insert Sample Data

Execute:

sql/insert_sample_data.sql

4. Run Queries

Execute:

sql/sample_queries.sql

---

## Example Reporting Queries

Included examples:

Accounts by industry

Opportunities by stage

Contacts linked to Accounts

Total pipeline value by customer

High-probability opportunities

Average revenue by industry

---

## Screenshots

Example table outputs are included in the screenshots/ folder.

---

## Future Improvements

Planned future versions may include:

Python Streamlit web frontend

CRM dashboards

Stored procedures

Views

Role-based permissions

Lead conversion automation

Opportunity forecasting analytics

---

## Author

Benjamin Klass

---

## License

This project is licensed under the MIT License.

---
