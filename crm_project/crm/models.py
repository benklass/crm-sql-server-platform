from django.db import models

# Create your models here.

# User object list model
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

# Account object list model
class CRMAccount(models.Model):
    account_num = models.AutoField(
        primary_key=True,
        db_column="account_num",
    )

    account_id = models.CharField(
        max_length=8,
        db_column="account_id",
        editable=False,
    )

    account_name = models.CharField(max_length=40)
    city = models.CharField(max_length=40)

    region = models.CharField(
        max_length=40,
        null=True,
        blank=True,
    )

    country = models.CharField(
        max_length=40,
        default="Israel",
    )

    account_description = models.CharField(
        max_length=300,
        null=True,
        blank=True,
    )

    account_industry = models.CharField(max_length=40)

    account_annual_revenue = models.DecimalField(
        max_digits=18,
        decimal_places=2,
    )

    account_number_of_employees = models.IntegerField
    account_source = models.CharField(max_length=20)

    account_email = models.EmailField(
        max_length=100,
        unique=True,
    )

    account_phone = models.CharField(
        max_length=20,
        null=True,
        blank=True,
    )

    account_created_date = models.DateTimeField()

    owner = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="owner_num",
        related_name="owned_accounts",
    )

    created_by = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="created_by_num",
        related_name="created_accounts",
    )

    class Meta:
        managed = False
        db_table = "crm_accounts"

    def __str__(self):
        return f"{self.account_id} - {self.account_name}"

# Contact object list model 
class CRMContact(models.Model):
    contact_num = models.AutoField(
        primary_key=True,
        db_column="contact_num",
    )

    contact_id = models.CharField(
        max_length=8,
        db_column="contact_id",
        editable=False,
    )

    contact_first_name = models.CharField(
        max_length=30,
    )

    contact_last_name = models.CharField(
        max_length=40,
    )

    account = models.ForeignKey(
        CRMAccount,
        on_delete=models.PROTECT,
        db_column="account_num",
        related_name="contacts",
    )

    contact_job_title = models.CharField(
        max_length=40,
    )

    contact_email = models.EmailField(
        max_length=100,
        unique=True,
    )

    contact_phone = models.CharField(
        max_length=20,
        null=True,
        blank=True,
    )

    contact_created_date = models.DateTimeField()

    owner = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="owner_num",
        related_name="owned_contacts",
    )

    created_by = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="created_by_num",
        related_name="created_contacts",
    )

    class Meta:
        managed = False
        db_table = "crm_contacts"

    def __str__(self):
        return (
            f"{self.contact_id} - "
            f"{self.contact_first_name} {self.contact_last_name}"
        )
    
# Lead object list model
class CRMLead(models.Model):
    lead_num = models.AutoField(
        primary_key=True,
        db_column="lead_num",
    )

    lead_id = models.CharField(
        max_length=8,
        db_column="lead_id",
        editable=False,
    )

    lead_first_name = models.CharField(
        max_length=30,
    )

    lead_last_name = models.CharField(
        max_length=40,
    )

    lead_company_name = models.CharField(
        max_length=100,
    )

    lead_job_title = models.CharField(
        max_length=40,
    )

    city = models.CharField(
        max_length=40,
    )

    region = models.CharField(
        max_length=40,
        null=True,
        blank=True,
    )

    country = models.CharField(
        max_length=40,
        default="Israel",
    )

    lead_description = models.CharField(
        max_length=300,
        null=True,
        blank=True,
    )

    lead_industry = models.CharField(
        max_length=40,
    )

    lead_source = models.CharField(
        max_length=20,
    )

    lead_status = models.CharField(
        max_length=30,
    )

    lead_annual_revenue = models.DecimalField(
        max_digits=18,
        decimal_places=2,
        null=True,
        blank=True,
    )

    lead_rating = models.CharField(
        max_length=20,
        null=True,
        blank=True,
    )

    lead_number_of_employees = models.IntegerField(
        null=True,
        blank=True,
    )

    lead_email = models.EmailField(
        max_length=100,
        unique=True,
        null=True,
        blank=True,
    )

    lead_phone = models.CharField(
        max_length=20,
        null=True,
        blank=True,
    )

    lead_created_date = models.DateTimeField()

    owner = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="owner_num",
        related_name="owned_leads",
    )

    created_by = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="created_by_num",
        related_name="created_leads",
    )

    class Meta:
        managed = False
        db_table = "crm_leads"

    def __str__(self):
        return (
            f"{self.lead_id} - "
            f"{self.lead_first_name} {self.lead_last_name}"
        )

# Opportunity object list model
from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models


class CRMOpportunity(models.Model):
    opportunity_num = models.AutoField(
        primary_key=True,
        db_column="opportunity_num",
    )

    opportunity_id = models.CharField(
        max_length=8,
        db_column="opportunity_id",
        editable=False,
    )

    opportunity_amount = models.DecimalField(
        max_digits=18,
        decimal_places=2,
    )

    opportunity_name = models.CharField(
        max_length=60,
    )

    opportunity_close_date = models.DateField()

    account = models.ForeignKey(
        CRMAccount,
        on_delete=models.PROTECT,
        db_column="account_num",
        related_name="opportunities",
    )

    opportunity_description = models.CharField(
        max_length=300,
        null=True,
        blank=True,
    )

    opportunity_type = models.CharField(
        max_length=40,
        null=True,
        blank=True,
    )

    opportunity_stage = models.CharField(
        max_length=40,
        default="Prospecting",
    )

    lead_source = models.CharField(
        max_length=20, 
    )

    opportunity_probability = models.IntegerField(
        validators=[
            MinValueValidator(0),
            MaxValueValidator(100),
        ],
    )

    opportunity_created_date = models.DateTimeField()

    owner = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="owner_num",
        related_name="owned_opportunities",
    )

    created_by = models.ForeignKey(
        CRMUser,
        on_delete=models.PROTECT,
        db_column="created_by_num",
        related_name="created_opportunities",
    )

    class Meta:
        managed = False
        db_table = "crm_opportunities"

    def __str__(self):
        return f"{self.opportunity_id} - {self.opportunity_name}"