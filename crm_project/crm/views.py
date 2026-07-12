from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from crm.models import CRMUser
import pyodbc

# Create your views here.
def conn_sql(request):
    conn = pyodbc.connect('Driver={sql server};'
                            'Server=ben-pc\SQLEXPRESS;'
                            'Database=CRMDB;'
                            'Trusted_Connection=yes')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM crm_users')
    result = cursor.fetchall()
    return render(request, 'my_first.html', {'CRMUser': result})