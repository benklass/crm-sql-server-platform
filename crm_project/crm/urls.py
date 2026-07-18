from django.contrib import admin
from django.urls import path
from . import views



urlpatterns = [
    path("admin/", admin.site.urls),

    path(
        "users/",
        views.conn_sql_users,
        name="users",
    ),

    path(
        "accounts/",
        views.conn_sql_accounts,
        name="accounts",
    ),

    path(
        "contacts/",
        views.conn_sql_contacts,
        name="contacts",
    ),

    path(
        "leads/",
        views.conn_sql_leads,
        name="leads",
    ),

    path(
        "opportunities/",
        views.conn_sql_opportunities,
        name="opportunities",
    ),

     path(
         "accounts/details/<int:account_num>/", 
         views.conn_sql_account_details, 
         name='account_details',
    ),

     path(
         "contacts/details/<int:contact_num>/", 
         views.conn_sql_contact_details, 
         name='contact_details',
    ),

    path(
         "leads/details/<int:lead_num>/", 
         views.conn_sql_lead_details, 
         name='lead_details',
    ),

    path(
         "opportunities/details/<int:opportunity_num>/", 
         views.conn_sql_opportunity_details, 
         name='opportunity_details',
    ),

    path(
         "users/details/<int:user_num>/", 
         views.conn_sql_user_details, 
         name='user_details',
    ),
]