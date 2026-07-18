# CRM Platform

## Overview

CRM Platform is a full-stack Customer Relationship Management (CRM) web application currently being developed using **Microsoft SQL Server**, **Python**, **Django**, **HTML5**, **CSS3**, and **Bootstrap 5**.

The project began as a normalized relational SQL Server database and has evolved into a dynamic Django web application capable of displaying CRM data through a responsive browser interface.

It demonstrates SQL Server integration with Django, relational database design, SQL joins, Bootstrap styling, reusable Django templates, and full-stack web application development.

---

# Objectives

- Design a normalized multi-table CRM database
- Implement relational links between CRM business objects
- Simulate real-world CRM workflows
- Populate the database with realistic Israeli business data
- Build reusable SQL reporting queries
- Integrate Django with Microsoft SQL Server
- Develop a responsive CRM web interface
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
- CSS3
- Bootstrap 5
- Django Templates

## Development

- Visual Studio Code
- Git
- GitHub

---

# Current Project Status

## Completed

- SQL Server relational database
- Five CRM business objects (Users, Accounts, Contacts, Leads, Opportunities)
- Primary and Foreign Key relationships
- Computed business IDs
- CHECK constraints and default constraints
- SQL reporting queries
- SQL Server integration with Django
- Dynamic list pages for all CRM objects
- Dynamic record detail pages for all CRM objects
- Dynamic URL routing
- Parameterized SQL queries using WHERE clauses
- Shared `base.html` template
- Django template inheritance
- Bootstrap 5 responsive interface
- Responsive navigation bar
- External CSS styling
- Human-readable foreign-key relationships using SQL JOINs

## Currently In Development

- CRUD operations
- Search and filtering
- Authentication
- Dashboard and analytics

---

# Project Structure

```text
CRM Platform GitHub/
├── LICENSE
├── README.md
├── crm_project/
│   ├── manage.py
│   ├── db.sqlite3
│   ├── crm/
│   │   ├── __pycache__/
│   │   ├── migrations/
│   │   │   ├── __pycache__/
│   │   │   ├── __init__.py
│   │   │   ├── 0001_initial.py
│   │   │   └── 0002_delete_crm_record.py
│   │   ├── static/
│   │   │   └── crm/
│   │   │       └── styles.css
│   │   ├── templates/
│   │   │   ├── base.html
│   │   │   ├── home.html
│   │   │   ├── users.html
│   │   │   ├── user-details.html
│   │   │   ├── accounts.html
│   │   │   ├── account-details.html
│   │   │   ├── contacts.html
│   │   │   ├── contact-details.html
│   │   │   ├── leads.html
│   │   │   ├── lead-details.html
│   │   │   ├── opportunities.html
│   │   │   └── opportunity-details.html
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── models.py
│   │   ├── tests.py
│   │   ├── urls.py
│   │   └── views.py
│   └── crm_project/
│       ├── __pycache__/
│       ├── __init__.py
│       ├── asgi.py
│       ├── settings.py
│       ├── urls.py
│       └── wsgi.py
├── screenshots/
├── sql/
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   └── sample_queries.sql
```

---

# Application Architecture

```text
Microsoft SQL Server
          │
          ▼
Parameterized SQL Queries
          │
          ▼
Python / Django Views
          │
          ▼
Django Templates
          │
          ▼
Bootstrap 5 Interface
          │
          ▼
Web Browser
```

---

# Current Functionality

## CRM Objects

The application currently supports the following CRM modules:

- Users
- Accounts
- Contacts
- Leads
- Opportunities

Each module includes:

- Dynamic list page
- Individual record detail page
- SQL Server data retrieval
- Dynamic URL routing

---

## Record Detail Pages

Clicking a record identifier on a list page opens an individual detail page.

Example workflow:

```text
Accounts List
       │
       ▼
A00000001
       │
       ▼
/accounts/details/1/
       │
       ▼
SELECT ...
FROM crm_accounts
WHERE account_num = ?
       │
       ▼
Account Detail Page
```

The detail pages retrieve a single database record using parameterized SQL queries.

---

# Running the Project

Start the Django development server:

```bash
python manage.py runserver
```

Then open:

```text
http://127.0.0.1:8000/
```

The navigation bar provides access to all CRM modules.

---

# Roadmap

## Version 1.0

- SQL Server CRM database

## Version 1.1

- Django integration

## Version 1.2

- HTML templates

## Version 1.3

- Dynamic Users page

## Version 1.4

- Dynamic pages for Users, Accounts, Contacts, Leads, and Opportunities
- Bootstrap 5 styling
- Navigation bar
- Human-readable foreign-key relationships

## Version 1.5

- Shared `base.html` layout
- Django template inheritance
- Dynamic record detail pages
- Parameterized SQL record retrieval
- Improved Bootstrap styling
- Reusable navigation
- Improved CSS architecture
- Resolved Bootstrap and CSS compatibility issues

## Planned Features

- Create, Update and Delete (CRUD)
- Search
- Filtering
- Pagination
- Authentication
- User authorization
- Dashboard
- Interactive charts
- REST API
- Reporting
- Related record navigation

---

# Skills Demonstrated

- Microsoft SQL Server
- Relational database design
- Database normalization
- SQL JOINs
- Parameterized SQL queries
- Python
- Django
- Django Templates
- Template inheritance
- Dynamic URL routing
- HTML5
- CSS3
- Bootstrap 5
- Responsive web design
- Git
- GitHub
- Full-stack web development

---

# Screenshots

Application screenshots demonstrating each development milestone are available in the **screenshots/** directory.

---

# Author

**Benjamin Klass**

Master of Environmental Science & GIS

University of Haifa

---

# License

MIT License