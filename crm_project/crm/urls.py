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
]