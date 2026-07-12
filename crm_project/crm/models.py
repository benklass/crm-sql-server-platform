from django.db import models

# Create your models here.
class CRMUser(models.Model):
    user_num = models.AutoField(
        primary_key=True,
        db_column="user_num",
    )

    user_id = models.CharField(
        max_length=8,
        db_column="user_id",
        editable=False,
    )

    user_first_name = models.CharField(max_length=30)
    user_last_name = models.CharField(max_length=40)
    user_company = models.CharField(max_length=100)
    user_department = models.CharField(max_length=30)
    user_role = models.CharField(max_length=40)

    user_description = models.CharField(
        max_length=200,
        null=True,
        blank=True,
    )

    user_email = models.EmailField(
        max_length=100,
        unique=True,
    )

    user_phone = models.CharField(
        max_length=20,
        null=True,
        blank=True,
    )

    user_username = models.CharField(
        max_length=30,
        unique=True,
    )

    class Meta:
        managed = False
        db_table = "crm_users"
