# CRM Platform

## Overview

CRM Platform is a full-stack Customer Relationship Management (CRM) web
application currently being developed using **Microsoft SQL Server**,
**Python**, **Django**, **HTML5**, **CSS3**, and **Bootstrap 5**.

The project began as a normalized relational SQL Server database and has
evolved into a dynamic Django web application capable of displaying CRM
data through a responsive browser interface.

It demonstrates SQL Server integration with Django, relational database
design, SQL joins, Bootstrap styling, and full-stack web application
development.

------------------------------------------------------------------------

# Objectives

-   Design a normalized multi-table CRM database
-   Implement relational links between CRM business objects
-   Simulate real-world CRM workflows
-   Populate the database with realistic Israeli business data
-   Build reusable SQL reporting queries
-   Integrate Django with Microsoft SQL Server
-   Develop a responsive CRM web interface
-   Showcase SQL Server, Python, Django, and full-stack development
    skills

------------------------------------------------------------------------

# Technologies Used

## Database

-   Microsoft SQL Server
-   T-SQL
-   SQL Server Management Studio (SSMS)

## Backend

-   Python
-   Django
-   Django ORM
-   pyodbc
-   ODBC Driver 18 for SQL Server

## Frontend

-   HTML5
-   CSS3
-   Bootstrap 5
-   Django Templates

## Development

-   Visual Studio Code
-   Git
-   GitHub

------------------------------------------------------------------------

# Current Project Status

## Completed

-   SQL Server relational database
-   Five CRM business objects (Users, Accounts, Contacts, Leads,
    Opportunities)
-   Primary and Foreign Key relationships
-   Computed business IDs
-   CHECK constraints and default constraints
-   SQL reporting queries
-   SQL Server integration with Django
-   Dynamic list pages for all CRM objects
-   Bootstrap 5 interface
-   Navigation bar
-   External CSS
-   Human-readable foreign-key relationships using SQL JOINs

## Currently In Development

-   CRUD operations
-   Search and filtering
-   Authentication
-   Dashboard and analytics

------------------------------------------------------------------------

# Project Structure

``` text
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
│   │   │   ├── home.html
│   │   │   ├── users.html
│   │   │   ├── accounts.html
│   │   │   ├── contacts.html
│   │   │   ├── leads.html
│   │   │   └── opportunities.html
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

------------------------------------------------------------------------

# Running the Project

``` bash
python manage.py runserver
```

Then open:

``` text
http://127.0.0.1:8000/users
```

------------------------------------------------------------------------

# Roadmap

## Version 1.0

-   SQL Server CRM database

## Version 1.1

-   Django integration

## Version 1.2

-   HTML templates

## Version 1.3

-   Dynamic Users page

## Version 1.4

-   Dynamic pages for Users, Accounts, Contacts, Leads, and
    Opportunities
-   Bootstrap 5 styling
-   Navigation bar
-   Human-readable foreign-key relationships

## Planned Features

-   Base template inheritance
-   CRUD operations
-   Detail pages
-   Search
-   Pagination
-   Authentication
-   Dashboard
-   Interactive charts
-   REST API

------------------------------------------------------------------------

# Skills Demonstrated

-   SQL Server
-   Relational database design
-   Database normalization
-   SQL JOINs
-   Python
-   Django
-   HTML5
-   CSS3
-   Bootstrap 5
-   Git
-   GitHub
-   Full-stack web development

------------------------------------------------------------------------

# Author

**Benjamin Klass**

Master of Environmental Science & GIS

University of Haifa

------------------------------------------------------------------------

# License

MIT License
