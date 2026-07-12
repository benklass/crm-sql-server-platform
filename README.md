# CRM Platform

## Overview

CRM Platform is a full-stack Customer Relationship Management (CRM) project currently being developed using **Microsoft SQL Server**, **Python**, and **Django**.

The project began as a relational SQL Server database designed to model the core business objects found in enterprise CRM systems and is now evolving into a web application that enables users to browse, manage, and analyze CRM data through a modern web interface.

The current implementation demonstrates the integration of Django with a SQL Server CRM database and includes the first dynamic web page displaying CRM Users retrieved directly from the database.

---

# Objectives

- Design a normalized multi-table CRM database
- Implement relational links between CRM business objects
- Simulate real-world CRM workflows
- Populate the database with realistic Israeli sample organizations and contacts
- Build reusable SQL reporting queries
- Integrate Django with Microsoft SQL Server
- Develop a responsive web-based CRM interface
- Showcase SQL Server, Python, Django, and full-stack development skills

---

# Technologies Used

## Database

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)

## Backend

- Python
- Django
- Django ORM
- pyodbc
- ODBC Driver 18 for SQL Server

## Frontend

- HTML5
- Django Templates

## Development

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

✔ Sample CRM data

✔ SQL reporting queries

✔ Django project setup

✔ Django application created

✔ SQL Server integration

✔ CRM User model

✔ Dynamic Users table rendered in the web application

✔ GitHub repository

---

## Currently In Development

🔄 Additional CRM object pages

🔄 User interface improvements

🔄 CRUD functionality

🔄 Authentication and authorization

---

# Database Objects

## Users

Internal CRM users responsible for managing customer relationships.

## Accounts

Organizations that are customers or prospective customers.

## Contacts

Individuals associated with Accounts.

## Leads

Potential customers who have not yet been converted into Accounts.

## Opportunities

Sales opportunities progressing through the CRM pipeline.

---

# Current Features

## SQL Server

- Normalized relational database
- Primary and Foreign Key relationships
- Computed business IDs
- CHECK constraints
- Sample CRM dataset
- Reporting queries

## Django Web Application

- Django project structure
- SQL Server integration
- Django ORM models
- Dynamic HTML templates
- CRM Users page
- Local development server

---

# Project Structure

```text
CRM Platform GitHub/
│
├── LICENSE
├── README.md
│
├── crm_project/
│   │
│   ├── manage.py
│   ├── db.sqlite3
│   │
│   ├── crm/
│   │   ├── migrations/
│   │   │   ├── __init__.py
│   │   │   ├── 0001_initial.py
│   │   │   └── 0002_delete_crm_record.py
│   │   │
│   │   ├── templates/
│   │   │   └── my_first.html
│   │   │
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── models.py
│   │   ├── tests.py
│   │   ├── urls.py
│   │   └── views.py
│   │
│   └── crm_project/
│       ├── __init__.py
│       ├── asgi.py
│       ├── settings.py
│       ├── urls.py
│       └── wsgi.py
│
├── screenshots/
│   ├── crm_accounts-screenshot.png
│   ├── crm_app_first_template.png
│   ├── crm_app_first_users_object_view.png
│   ├── crm_app_hello_world.png
│   ├── crm_contacts-screenshot.png
│   ├── crm_django_project_launch.png
│   ├── crm_first_django_app_directory.png
│   ├── crm_leads-screenshot.png
│   ├── crm_opportunities-screenshot-part1.png
│   ├── crm_opportunities-screenshot-part2.png
│   ├── crm_table_screenshot_queries.sql
│   └── crm_users-screenshot.png
│
└── sql/
    ├── create_tables.sql
    ├── insert_sample_data.sql
    └── sample_queries.sql
```

---

# Running the SQL Server Database

## 1. Create a SQL Server database

Create a new database using Microsoft SQL Server Management Studio.

---

## 2. Create the tables

Execute:

```text
sql/create_tables.sql
```

---

## 3. Insert the sample data

Execute:

```text
sql/insert_sample_data.sql
```

---

## 4. Run the example queries

Execute:

```text
sql/sample_queries.sql
```

---

# Running the Django Application

1. Activate your Python virtual environment.

2. Navigate to the project directory.

3. Start the Django development server:

```bash
python manage.py runserver
```

4. Open your browser and navigate to:

```
http://127.0.0.1:8000/
```

---

# Current Web Application

The Django application currently demonstrates:

- Integration with Microsoft SQL Server
- Django ORM models
- Dynamic retrieval of CRM Users
- HTML template rendering
- Model–View–Template (MVT) architecture
- Live display of CRM data through the web interface

---

# Example SQL Queries

Included SQL examples:

- Accounts by industry
- Contacts by account
- Opportunities by stage
- Revenue by industry
- Opportunity summaries
- High-value opportunities
- Lead summaries
- User ownership reports

---

# Screenshots

The repository currently includes screenshots demonstrating:

## SQL Server

- Users table
- Accounts table
- Contacts table
- Leads table
- Opportunities table
- Sample SQL reporting queries

## Django

- Django project creation
- First Django application directory
- Hello World page
- First HTML template
- Dynamic CRM Users page

---

# Roadmap

## Version 1.0

- SQL Server CRM database

## Version 1.1

- Django project setup
- SQL Server integration

## Version 1.2

- HTML template addition 

## Version 1.3

- Dynamic Users page

## Planned Features

- Accounts page
- Contacts page
- Leads page
- Opportunities page
- Individual record pages
- Search and filtering
- CRUD operations
- Authentication
- Role-based permissions
- Responsive Bootstrap interface
- Dashboard
- Charts and analytics
- Stored procedures
- Database views
- REST API

---

# Skills Demonstrated

- Relational database design
- Database normalization
- SQL Server development
- T-SQL
- Python programming
- Django ORM
- Django MVT architecture
- SQL Server integration with Django
- HTML templating
- Git version control
- Full-stack web application development

---

# Future Development Goals

The long-term goal is to transform this project into a fully featured CRM platform capable of managing customer relationships through a modern web application backed by Microsoft SQL Server.

Future enhancements will include:

- Complete CRUD functionality
- Advanced searching and filtering
- User authentication
- Role-based permissions
- Interactive dashboards
- Business reporting
- REST API support
- Responsive user interface
- Deployment to a cloud hosting platform

---

# Author

**Benjamin Klass**

Master of Environmental Science & GIS

University of Haifa

---

# License

This project is licensed under the MIT License.