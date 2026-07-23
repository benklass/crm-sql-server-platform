# CRM Platform

## Overview

CRM Platform is a full-stack Customer Relationship Management (CRM) web application developed using **Microsoft SQL Server**, **Python**, **Django**, **HTML5**, **CSS3**, **JavaScript**, and **Bootstrap 5**.

The project began as a normalized Microsoft SQL Server database before evolving into a dynamic Django application capable of browsing CRM data through a responsive web interface.

Rather than relying on Django's ORM, the application demonstrates direct integration between Django and Microsoft SQL Server using **parameterized SQL queries** via **pyodbc**, providing hands-on experience with relational database development, SQL joins, reusable application architecture, and full-stack web development.

---

# Features

## CRM Modules

- Users
- Accounts
- Contacts
- Leads
- Opportunities

Each module includes:

- Dynamic list page
- Individual detail page
- SQL Server integration
- Human-readable foreign key relationships
- Pagination
- Configurable records per page

The Accounts module additionally supports:

- Multi-column search
- Empty search handling
- Search-aware pagination

---

# Objectives

- Design a normalized CRM relational database
- Model real CRM business relationships
- Populate the database with realistic sample data
- Develop reusable SQL reporting queries
- Integrate SQL Server with Django
- Build reusable Django components
- Implement responsive Bootstrap interfaces
- Demonstrate full-stack development skills

---

# Technologies

## Backend

- Python
- Django
- pyodbc

## Database

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)

## Frontend

- HTML5
- CSS3
- JavaScript
- Bootstrap 5
- Django Templates

## Development

- Visual Studio Code
- Git
- GitHub

---

# Current Functionality

## Database

- Normalized SQL Server schema
- Five relational business objects
- Primary keys
- Foreign keys
- CHECK constraints
- DEFAULT constraints
- Computed CRM IDs
- Sample reporting queries

---

## Django Application

- SQL Server connectivity
- Dynamic list pages
- Dynamic detail pages
- Shared base template
- Reusable navigation
- Parameterized SQL queries
- Human-readable JOINs
- External CSS
- External JavaScript

---

## Pagination

Reusable pagination utility supporting:

- Configurable page sizes
- URL parameter preservation
- Shared implementation across multiple views

Supported page sizes:

- 10
- 25
- 50
- 100
- 200

---

## Search

Currently implemented for the Accounts module.

Supports searching across multiple fields including:

- Account ID
- Account name
- City
- Country
- Description
- Industry
- Email
- Phone
- Owner
- Creator

Features include:

- Parameterized SQL queries
- Search result pagination
- Search term persistence
- Empty result handling

---

# Project Structure

```text
CRM Platform GitHub/
├── LICENSE
├── README.md
├── screenshots/
├── sql/
│   ├── additional_crm_sample_data.sql
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   └── sample_queries.sql
│
└── crm_project/
    ├── manage.py
    ├── db.sqlite3
    │
    ├── crm/
    │   ├── migrations/
    │   ├── static/
    │   │   └── crm/
    │   │       ├── scripts.js
    │   │       └── styles.css
    │   ├── templates/
    │   │   ├── base.html
    │   │   ├── home.html
    │   │   ├── users.html
    │   │   ├── user-details.html
    │   │   ├── accounts.html
    │   │   ├── account-details.html
    │   │   ├── contacts.html
    │   │   ├── contact-details.html
    │   │   ├── leads.html
    │   │   ├── lead-details.html
    │   │   ├── opportunities.html
    │   │   └── opportunity-details.html
    │   ├── admin.py
    │   ├── apps.py
    │   ├── models.py
    │   ├── tests.py
    │   ├── urls.py
    │   ├── utils.py
    │   └── views.py
    │
    └── crm_project/
        ├── settings.py
        ├── urls.py
        ├── asgi.py
        └── wsgi.py
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
Reusable Utility Functions
          │
          ▼
Django Templates
          │
          ▼
Bootstrap + JavaScript
          │
          ▼
Web Browser
```

---

# Running the Project

Install dependencies:

```bash
pip install django pyodbc
```

Run the development server:

```bash
python manage.py runserver
```

Open:

```
http://127.0.0.1:8000/
```

---

# Development Roadmap

## Version 1.0

- SQL Server database
- Relational schema

## Version 1.1

- Django integration

## Version 1.2

- Dynamic templates

## Version 1.3

- Users module

## Version 1.4

- All CRM objects
- Bootstrap interface
- Detail pages
- SQL JOINs

## Version 1.5

- Shared base template
- External CSS
- Improved navigation
- Reusable layouts

## Version 1.6

- Reusable pagination utility
- Dynamic page size selection
- Search-aware pagination
- Accounts search
- External JavaScript
- Utility module (`utils.py`)
- Additional SQL Server sample data
- Improved reusable architecture

---

# Planned Features

- Search for remaining CRM modules
- Column sorting
- Advanced filtering
- CRUD operations
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
- Database normalization
- Relational database design
- SQL JOINs
- Parameterized SQL
- Python
- Django
- Django Templates
- Template inheritance
- Reusable utility functions
- JavaScript
- HTML5
- CSS3
- Bootstrap 5
- Responsive web development
- Git
- GitHub
- Full-stack web development

---

# Screenshots

Screenshots documenting the application's development are available in the **screenshots/** directory.

---

# Author

**Benjamin Klass**

Master of Environmental Science (GIS & Remote Sensing)

University of Haifa

---

# License

MIT License