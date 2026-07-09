-- Show crm_users table
SELECT
    user_id,
    user_first_name,
    user_last_name,
    user_department,
    user_role
FROM crm_users;


-- Show crm_accounts table
SELECT
    account_id,
    account_name,
    city,
    account_industry,
    account_annual_revenue
FROM crm_accounts;


-- Show crm_contacts table
SELECT
    contact_id,
    contact_first_name,
    contact_last_name,
    contact_job_title,
    contact_email
FROM crm_contacts;


-- Show crm_leads table
SELECT
    lead_id,
    lead_first_name,
    lead_last_name,
    lead_company_name,
    lead_status
FROM crm_leads;


-- Show crm_opportunities table
SELECT
    opportunity_id,
    opportunity_name,
    opportunity_stage,
    opportunity_amount,
    opportunity_close_date
FROM crm_opportunities;