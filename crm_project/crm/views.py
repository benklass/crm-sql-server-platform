from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from crm.models import CRMUser
import pyodbc

# Create your views here.

# Connect to crm_users table to view user records
def conn_sql_users(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_users')
    result = cursor.fetchall()
    return render(request, 'users.html', {'CRMUser': result})

# Connect to crm_accounts table to view account records
def conn_sql_accounts(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_accounts INNER JOIN crm_users ON crm_accounts.owner_num = crm_users.user_num;')
    result = cursor.fetchall()
    return render(request, 'accounts.html', {'CRMAccount': result})

# Connect to crm_contacts database to view contact records
def conn_sql_contacts(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_contacts INNER JOIN crm_accounts ON crm_contacts.account_num = crm_accounts.account_num INNER JOIN crm_users ON crm_contacts.owner_num = crm_users.user_num;')
    result = cursor.fetchall()
    return render(request, 'contacts.html', {'CRMContact': result})

# Connect to crm_leads database to view lead records
def conn_sql_leads(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_leads INNER JOIN crm_users ON crm_leads.owner_num = crm_users.user_num;')
    result = cursor.fetchall()
    return render(request, 'leads.html', {'CRMLead': result})

# Connect to crm_opportunities database to view lead records
def conn_sql_opportunities(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_opportunities INNER JOIN crm_users ON crm_opportunities.owner_num = crm_users.user_num;')
    result = cursor.fetchall()
    return render(request, 'opportunities.html', {'CRMOpportunity': result})