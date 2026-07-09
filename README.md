# CRM SQL Server Platform

## Overview

CRM SQL Server Platform is a full-stack Customer Relationship Management (CRM) project currently being developed using **Microsoft SQL Server** and **Django**.

The project began as a relational SQL Server database designed to model the core business objects found in enterprise CRM systems and is now being extended into a web application that allows users to browse, manage, and analyze CRM data through a modern web interface.

The platform currently manages the following CRM objects:

- Users
- Accounts
- Contacts
- Leads
- Opportunities

This project demonstrates database engineering, relational design, SQL development, and the early stages of Python web application development.

---

# Objectives

- Design a normalized multi-table CRM database
- Implement relational links between CRM business objects
- Simulate real-world customer and sales workflows
- Populate the database with realistic Israeli sample companies and contacts
- Build reusable SQL reporting queries
- Develop a Django web application for viewing CRM data
- Showcase SQL Server, Python, and full-stack development skills

---

# Technologies Used

### Database

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)

### Backend

- Python
- Django

### Development

- Visual Studio Code
- Git
- GitHub

---

# Current Project Status

## Completed

✔ SQL Server relational database

✔ Five core CRM tables

✔ Primary and Foreign Key relationships

✔ Computed business IDs

✔ CHECK constraints

✔ Sample data

✔ SQL reporting queries

✔ GitHub repository

---

## In Progress

✔ Django project created

✔ CRM Django application created

✔ Local development server running

🔄 SQL Server integration

🔄 CRM web interface

---

# Database Objects

## Users

Internal CRM users responsible for managing customer relationships.

---

## Accounts

Organizations that are customers or prospective customers.

---

## Contacts

Individual people associated with Accounts.

---

## Leads

Potential customers who have not yet been converted into Accounts.

---

## Opportunities

Potential sales linked to Accounts throughout the sales pipeline.

---

# Current Features

- Auto-generated business IDs
  - U0000001
  - A0000001
  - C0000001
  - L0000001
  - O0000001

- Primary and Foreign Key relationships

- Data validation using CHECK constraints

- Industry validation

- Opportunity pipeline stages

- Revenue and employee metrics

- Realistic Israeli sample data

- Example reporting queries

- Django development environment

---

# Project Structure

```
crm-sql-server-platform/
│
├── LICENSE
├── README.md
│
├── crm_project/
│   ├── crm/
│   │   ├── migrations/
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── models.py
│   │   ├── tests.py
│   │   └── views.py
│   │
│   ├── crm_project/
│   │   ├── settings.py
│   │   ├── urls.py
│   │   ├── asgi.py
│   │   └── wsgi.py
│   │
│   ├── db.sqlite3
│   └── manage.py
│
├── screenshots/
│   ├── crm_accounts-screenshot.png
│   ├── crm_contacts-screenshot.png
│   ├── crm_leads-screenshot.png
│   ├── crm_opportunities-screenshot-part1.png
│   ├── crm_opportunities-screenshot-part2.png
│   ├── crm_users-screenshot.png
│   ├── crm_django_project_launch.png
│   ├── crm_first_django_app_directory.png
│   └── crm_table_screenshot_queries.sql
│
└── sql/
    ├── create_tables.sql
    ├── insert_sample_data.sql
    └── sample_queries.sql
```

---

# How to Run the SQL Database

## 1. Create a SQL Server database

Create a new database in SQL Server Management Studio.

---

## 2. Create the tables

Execute:

```
sql/create_tables.sql
```

---

## 3. Insert sample data

Execute:

```
sql/insert_sample_data.sql
```

---

## 4. Run example queries

Execute:

```
sql/sample_queries.sql
```

---

# Django Development

The project now includes the initial Django application that will provide a web interface for the CRM database.

Current progress includes:

- Django installation
- Project creation
- CRM application creation
- Local development server

Future versions will connect Django directly to the SQL Server backend.

---

# Example SQL Queries

Examples included:

- Accounts by industry
- Contacts by account
- Opportunities by stage
- Total opportunity value
- Revenue by industry
- High-probability opportunities
- Lead summaries
- User-owned records

---

# Screenshots

The **screenshots/** folder includes:

- Users table
- Accounts table
- Contacts table
- Leads table
- Opportunities table
- SQL query examples
- Initial Django project launch
- Initial Django application structure

---

# Roadmap

## Version 1.0

- SQL Server CRM database

## Version 1.1

- Django project setup

## Planned

- SQL Server integration with Django
- CRM dashboard
- Accounts page
- Contacts page
- Leads page
- Opportunities page
- Search and filtering
- CRUD operations
- Authentication
- Role-based permissions
- Charts and analytics
- Stored procedures
- Database views
- REST API

---

# Author

**Benjamin Klass**

Master of Environmental Science & GIS

University of Haifa

---

# License

This project is licensed under the MIT License.