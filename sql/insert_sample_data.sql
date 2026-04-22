-- Insert rows into crm_users table
INSERT INTO crm_users 
VALUES ('Alon', 'Greenblatt', 'Green Leaf Consulting', 'Management', 'CEO', ' Alon Greenblatt is the CEO of Green Leaf Consulting.', 'along@greeenleaf.co.il', '0535842954', 'agreen72')

INSERT INTO crm_users
VALUES ('David', 'Ohana', 'Green Leaf Consulting', 'Environmental Analysis', 'Department Head', 'David Ohana is the head of the environmental analysis department.', 'davido@greenleaf.co.il', '0535843832', 'dohana45')

INSERT INTO crm_users
VALUES ('Nitzan', 'Avivi', 'Green Leaf Consulting', 'Operations', 'Department Head', 'Nitzan Avivi is the head of the operations department.', 'nitzana@greenleaf.co.il', '0535831953', 'navivi32')

INSERT INTO crm_users
VALUES ('Sam', 'Hirsch', 'Green Leaf Consulting', 'Business Development', 'Department Head', 'Sam Hirsch is the head of the business development department.', 'samh@greenleaf.co.il', '0534831845', 'shirsc68')

INSERT INTO crm_users
VALUES ('Khadra', 'Darwish', 'Green Leaf Consulting', ' Project Management', 'Department Head', 'Khadra Darwish is the head of the project management department. ', 'khadrad@greenleaf.co.il', '0532869932', 'kdarwi16')

-- Insert rows into crm_accounts table
INSERT INTO crm_accounts (
    account_name,
    city,
    region,
    country,
    account_description,
    account_industry,
    account_source,
    account_email,
    account_phone,
    owner_num,
    created_by_num
)
VALUES (
    N'Rimon Farm',
    N'Yavniel',
    N'Northern District',
    N'Israel',
    N'Rimon Farm is a pomegranate cultivation company located on kibbutz Yavniel.',
    N'Agriculture',
    N'Email',
    'info@rimonfarm.co.il',
    '0535832381',
    5,
    5
);

INSERT INTO crm_accounts (
    account_name,
    city,
    region,
    country,
    account_description,
    account_industry,
    account_source,
    account_email,
    account_phone,
    owner_num,
    created_by_num
)
VALUES (
    N' Sasson Construction',
    N' Haifa',
    N'Haifa District',
    N'Israel',
    N' Sasson Construction is a construction company located in Haifa.',
    N'Construction',
    N'Phone',
    'info@sconstruction.co.il ',
    '0539382711',
    5,
    5
);

INSERT INTO crm_accounts (
    account_name,
    city,
    region,
    country,
    account_description,
    account_industry,
    account_source,
    account_email,
    account_phone,
    owner_num,
    created_by_num
)
VALUES (
    N'BuildBone',
    N'Tel Aviv',
    N'Tel Aviv District',
    N'Israel',
    N'BuildBone is a modern urban planning company in Tel Aviv.',
    N'Technology',
    N'LinkedIn',
    'info@buildbone.co.il',
    '0535825831',
    5,
    5
);

-- Update values of account_annual revenue and account_number_of_employees on crm_accounts table
UPDATE crm_accounts
SET
    account_annual_revenue = 8500000.00,
    account_number_of_employees = 28
WHERE account_num = 1;

UPDATE crm_accounts
SET
    account_annual_revenue = 42000000.00,
    account_number_of_employees = 65
WHERE account_num = 2;

UPDATE crm_accounts
SET
    account_annual_revenue = 36500000.00,
    account_number_of_employees = 48
WHERE account_num = 3;

UPDATE crm_accounts
SET
    account_annual_revenue = 14000000.00,
    account_number_of_employees = 22
WHERE account_num = 4;

UPDATE crm_accounts
SET
    account_annual_revenue = 18500000.00,
    account_number_of_employees = 34
WHERE account_num = 5;

-- Insert values into crm_contacts table
INSERT INTO crm_contacts (
    contact_first_name,
    contact_last_name,
    account_num,
    contact_job_title,
    contact_email,
    contact_phone,
    owner_num,
    created_by_num
)
VALUES (
    N'Arik',
    N'Gordon',
    1,
    N'Crop Coordinator',
    'arikg@rimonfarm.co.il',
    '0535825831',
    5,
    5
);

INSERT INTO crm_contacts (
    contact_first_name,
    contact_last_name,
    account_num,
    contact_job_title,
    contact_email,
    contact_phone,
    owner_num,
    created_by_num
)
VALUES (
    N'Baruch',
    N'Sasson',
    2,
    N'Project Planner',
    'baruchs@sconstruction.co.il',
    '0535832714',
    5,
    5
);

INSERT INTO crm_contacts (
    contact_first_name,
    contact_last_name,
   account_num,
   contact_job_title,
   contact_email,
   contact_phone,
   owner_num,
   created_by_num
)
VALUES (
    N'Orit',
    N'Chazan',
    3,
    N'Plant Manager',
    'oritc@zahavplastics.co.il',
    '0533948299',
    5,
    5
);

INSERT INTO crm_contacts (
    contact_first_name,
    contact_last_name,
   account_num,
   contact_job_title,
   contact_email,
   contact_phone,
   owner_num,
   created_by_num
)
VALUES (
    N'Uri',
    N'Schuster',
    4,
    N'Risk Manager',
    'uris@asoninsurance.co.il',
    '0535831758',
    5,
    5
);

INSERT INTO crm_contacts (
    contact_first_name,
    contact_last_name,
   account_num,
   contact_job_title,
   contact_email,
   contact_phone,
   owner_num,
   created_by_num
)
VALUES (
    N'Shachar',
    N'Perez',
    5,
    N'Business Developer',
    'shacharp@buildbone.co.il',
    '0533948299',
    5,
    5
);

-- Insert rows into crm_leads table
INSERT INTO crm_leads (
    lead_first_name,
    lead_last_name,
    lead_company_name,
    lead_job_title,
    city,
    region,
    country,
    lead_description,
    lead_industry,
    lead_source,
    lead_status,
    lead_annual_revenue,
    lead_rating,
    lead_number_of_employees,
    lead_email,
    lead_phone,
    owner_num,
    created_by_num
)
VALUES
(
    N'Eyal',
    N'Ben-Ami',
    N'Galil Orchard Systems',
    N'Operations Manager',
    N'Kiryat Shmona',
    N'Northern District',
    N'Israel',
    N'Galil Orchard Systems is an agricultural equipment and orchard management company serving fruit growers in northern Israel.',
    N'Agriculture',
    N'Website',
    N'Open - Not Contacted',
    12500000.00,
    N'Warm',
    32,
    'eyalb@galilorchard.co.il',
    '0536712401',
    5,
    5
),
(
    N'Meir',
    N'Azulay',
    N'Carmel Urban Builders',
    N'Business Development Manager',
    N'Haifa',
    N'Haifa District',
    N'Israel',
    N'Carmel Urban Builders is a mid-sized construction and urban renewal company operating in the Haifa region.',
    N'Construction',
    N'Phone',
    N'Working - Contacted',
    58000000.00,
    N'Hot',
    85,
    'meir.azulay@carmelbuilders.co.il',
    '0537421185',
    5,
    5
),
(
    N'Lior',
    N'Harari',
    N'Kesem Capital Advisory',
    N'Client Relations Director',
    N'Ramat Gan',
    N'Tel Aviv District',
    N'Israel',
    N'Kesem Capital Advisory is a boutique financial advisory firm serving private and institutional clients in central Israel.',
    N'Finance',
    N'LinkedIn',
    N'Open - Not Contacted',
    21000000.00,
    N'Warm',
    26,
    'liorh@kesemcapital.co.il',
    '0538142296',
    5,
    5
),
(
    N'Ronit',
    N'Shalev',
    N'Negev Polymer Works',
    N'Procurement Lead',
    N'Be''er Sheva',
    N'Southern District',
    N'Israel',
    N'Negev Polymer Works is a manufacturing company producing industrial plastic components for local infrastructure and packaging clients.',
    N'Manufacturing',
    N'Email',
    N'Working - Contacted',
    34000000.00,
    N'Warm',
    54,
    'ronits@negevpolymer.co.il',
    '0535298443',
    5,
    5
),
(
    N'Omer',
    N'Klein',
    N'Tavor Smart Systems',
    N'Partnerships Manager',
    N'Yokneam',
    N'Northern District',
    N'Israel',
    N'Tavor Smart Systems is a technology company developing smart monitoring and automation solutions for industrial and municipal clients.',
    N'Technology',
    N'LinkedIn',
    N'Open - Not Contacted',
    27000000.00,
    N'Hot',
    41,
    'omerk@tavorsmart.co.il',
    '0536639120',
    5,
    5
);

-- Insert rows in crm_opportunities table
INSERT INTO crm_opportunities (
    opportunity_amount,
    opportunity_name,
    opportunity_close_date,
    account_num,
    opportunity_description,
    opportunity_type,
    opportunity_stage,
    lead_source,
    opportunity_probability,
    owner_num,
    created_by_num
)
VALUES
(
    420000.00,
    N'Precision Irrigation Upgrade - Rimon Farm',
    '2026-06-15',
    1,
    N'Potential upgrade project for precision irrigation and yield-monitoring systems discussed with Arik Gordon, Crop Coordinator at Rimon Farm.',
    N'Existing Customer - Upgrade',
    N'Qualification',
    N'Email',
    45,
    5,
    5
),
(
    1250000.00,
    N'Environmental Planning Support - Sasson Construction',
    '2026-07-10',
    2,
    N'Proposed consulting engagement for environmental planning support and regulatory documentation discussed with Baruch Sasson, Project Planner at Sasson Construction.',
    N'New Customer',
    N'Needs Analysis',
    N'Phone',
    55,
    5,
    5
),
(
    860000.00,
    N'Emissions Monitoring Expansion - Zahav Plastics',
    '2026-06-28',
    3,
    N'Expansion opportunity for emissions monitoring, reporting workflows, and compliance mapping discussed with Orit Chazan, Plant Manager at Zahav Plastics.',
    N'Existing Customer - Upgrade',
    N'Value Proposition',
    N'Email',
    65,
    5,
    5
),
(
    540000.00,
    N'Risk Exposure Mapping Platform - Abrahamson Insurance',
    '2026-07-22',
    4,
    N'Opportunity to deliver spatial risk exposure analysis and reporting tools for insurance portfolio assessment, discussed with Uri Schuster, Risk Manager at Abrahamson Insurance.',
    N'New Customer',
    N'Proposal/Price Quote',
    N'LinkedIn',
    70,
    5,
    5
),
(
    980000.00,
    N'Urban Growth Analytics Integration - BuildBone',
    '2026-06-30',
    5,
    N'Proposed integration of urban growth analytics and site suitability workflows for BuildBone, discussed with Shachar Perez, Business Developer at BuildBone.',
    N'Existing Customer - Upgrade',
    N'Negotiation/Review',
    N'LinkedIn',
    80,
    5,
    5
);

