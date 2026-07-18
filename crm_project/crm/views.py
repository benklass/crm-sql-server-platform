from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
import pyodbc
from .models import CRMAccount

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
    cursor.execute('SELECT * FROM crm_opportunities INNER JOIN crm_users ON crm_opportunities.owner_num = crm_users.user_num INNER JOIN crm_accounts ON crm_opportunities.account_num = crm_accounts.account_num;')
    result = cursor.fetchall()
    return render(request, 'opportunities.html', {'CRMOpportunity': result})

# Display account detail record
def conn_sql_account_details(request, account_num):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_accounts  INNER JOIN crm_users ON crm_accounts.owner_num = crm_users.user_num WHERE account_num = %s' % account_num)
    result = cursor.fetchall()
    return render(request, 'account-details.html', {'CRMAccount': result})

# Display contact detail record
def conn_sql_contact_details(request, contact_num):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_contacts INNER JOIN crm_accounts ON crm_contacts.account_num = crm_accounts.account_num INNER JOIN crm_users ON crm_contacts.owner_num = crm_users.user_num WHERE contact_num = %s' % contact_num)
    result = cursor.fetchall()
    return render(request, 'contact-details.html', {'CRMContact': result})

# Display lead detail record
def conn_sql_lead_details(request, lead_num):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_leads INNER JOIN crm_users ON crm_leads.owner_num = crm_users.user_num WHERE lead_num = %s' % lead_num)
    result = cursor.fetchall()
    return render(request, 'lead-details.html', {'CRMLead': result})

# Display opportunity detail record
def conn_sql_opportunity_details(request, opportunity_num):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_opportunities INNER JOIN crm_users ON crm_opportunities.owner_num = crm_users.user_num INNER JOIN crm_accounts ON crm_opportunities.account_num = crm_accounts.account_num WHERE opportunity_num = %s' % opportunity_num)
    result = cursor.fetchall()
    return render(request, 'opportunity-details.html', {'CRMOpportunity': result})

# Display user detail record
def conn_sql_user_details(request, user_num):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_users WHERE user_num = %s' % user_num)
    result = cursor.fetchall()
    return render(request, 'user-details.html', {'CRMUser': result})