-- Show all accounts
SELECT *
FROM crm_accounts;

-- Show accounts with owner names
 SELECT
    a.account_id,
    a.account_name,
    u.user_first_name,
    u.user_last_name
FROM crm_accounts a
JOIN crm_users u
    ON a.owner_num = u.user_num;

-- Show contacts with account names
SELECT
    c.contact_id,
    c.contact_first_name,
    c.contact_last_name,
    a.account_name,
    c.contact_job_title
FROM crm_contacts c
JOIN crm_accounts a
    ON c.account_num = a.account_num;

-- Show only open leads
SELECT
    lead_id,
    lead_first_name,
    lead_last_name,
    lead_company_name,
    lead_status
FROM crm_leads
WHERE lead_status NOT LIKE 'Closed%';

-- Show opportunities by stage
SELECT
    opportunity_stage,
    COUNT(*) AS total_opportunities
FROM crm_opportunities
GROUP BY opportunity_stage
ORDER BY total_opportunities DESC;

-- Show total opportunity value by account
SELECT
    a.account_name,
    SUM(o.opportunity_amount) AS total_pipeline_value
FROM crm_opportunities o
JOIN crm_accounts a
    ON o.account_num = a.account_num
GROUP BY a.account_name
ORDER BY total_pipeline_value DESC;

-- Show high probability opportunities
SELECT
    opportunity_id,
    opportunity_name,
    opportunity_probability,
    opportunity_amount
FROM crm_opportunities
WHERE opportunity_probability >= 70
ORDER BY opportunity_probability DESC;

-- Show number of accounts by industry
SELECT
    account_industry,
    COUNT(*) AS total_accounts
FROM crm_accounts
GROUP BY account_industry;

-- Show average revenue by industry
SELECT
    account_industry,
    AVG(account_annual_revenue) AS avg_revenue
FROM crm_accounts
GROUP BY account_industry
ORDER BY avg_revenue DESC;

-- Show full opportunity record summary with account name
SELECT
    o.opportunity_id,
    o.opportunity_name,
    a.account_name,
    o.opportunity_stage,
    o.opportunity_amount,
    o.opportunity_close_date
FROM crm_opportunities o
JOIN crm_accounts a
    ON o.account_num = a.account_num
ORDER BY o.opportunity_close_date;
