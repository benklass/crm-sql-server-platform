-- Create crm_users table
CREATE TABLE crm_users (
    user_num INT IDENTITY(1,1) PRIMARY KEY,
    user_id AS ('U' + RIGHT('0000000' + CAST(user_num AS VARCHAR(7)), 7)) PERSISTED,
    user_first_name NVARCHAR(30) NOT NULL,
    user_last_name NVARCHAR(40) NOT NULL,
    user_company NVARCHAR(100) NOT NULL,
    user_department NVARCHAR(30) NOT NULL,
    user_role NVARCHAR(40) NOT NULL,
    user_description NVARCHAR(200),
    user_email VARCHAR(100) NOT NULL UNIQUE,
    user_phone VARCHAR(20),
    user_username VARCHAR(30) NOT NULL UNIQUE
);

-- Create crm_accounts table
CREATE TABLE crm_accounts (
    account_num INT IDENTITY(1,1) PRIMARY KEY,
    account_id AS ('A' + RIGHT('0000000' + CAST(account_num AS VARCHAR(7)), 7)) PERSISTED,
    account_name NVARCHAR(40) NOT NULL,
    city NVARCHAR(40) NOT NULL,
    region NVARCHAR(40),
    country NVARCHAR(40) NOT NULL DEFAULT 'Israel',
    account_description NVARCHAR(300),
    account_industry NVARCHAR(40) NOT NULL,
    account_source NVARCHAR(20) NOT NULL,
    account_email VARCHAR(100),
    account_phone VARCHAR(20) ,
    account_created_date DATETIME2 NOT NULL DEFAULT GETDATE(),
    
    owner_num INT NOT NULL,
    created_by_num INT NOT NULL,

    CONSTRAINT FK_crm_accounts_owner
        FOREIGN KEY (owner_num) REFERENCES crm_users(user_num),

    CONSTRAINT FK_crm_accounts_created_by
        FOREIGN KEY (created_by_num) REFERENCES crm_users(user_num)
);

-- Add account_annual_revenue and account_number_of_employees column to crm_accounts table
ALTER TABLE crm_accounts
ADD account_annual_revenue DECIMAL(18,2),
    account_number_of_employees INT;

-- Set constraints on crm_accounts table
ALTER TABLE crm_accounts
ADD CONSTRAINT CHK_crm_accounts_source
CHECK (
    account_source IN (
        'Email',
        'LinkedIn',
        'Phone',
        'Website'
    )
);

ALTER TABLE crm_accounts
ADD CONSTRAINT CHK_crm_accounts_industry
CHECK (
    account_industry IN (
        'Agriculture',
        'Construction',
        'Finance',
        'Manufacturing',
        'Technology'
    )
);

-- Create crm_contacts table
CREATE TABLE crm_contacts (
    contact_num INT IDENTITY(1,1) PRIMARY KEY,
    contact_id AS ('C' + RIGHT('0000000' + CAST(contact_num AS VARCHAR(7)), 7)) PERSISTED,
    contact_first_name NVARCHAR(30) NOT NULL,
    contact_last_name NVARCHAR(40) NOT NULL,
    account_num INT NOT NULL,
    contact_job_title NVARCHAR(40) NOT NULL,
    contact_email VARCHAR(100) NOT NULL UNIQUE,
    contact_phone VARCHAR(20),
    contact_created_date DATETIME2 NOT NULL DEFAULT GETDATE(),
    owner_num INT NOT NULL,
    created_by_num INT NOT NULL,

    CONSTRAINT FK_crm_contacts_account
        FOREIGN KEY (account_num) REFERENCES crm_accounts(account_num),

    CONSTRAINT FK_crm_contacts_owner
        FOREIGN KEY (owner_num) REFERENCES crm_users(user_num),

    CONSTRAINT FK_crm_contacts_created_by
        FOREIGN KEY (created_by_num) REFERENCES crm_users(user_num)
);

-- Create crm_leads table
CREATE TABLE crm_leads (
    lead_num INT IDENTITY(1,1) PRIMARY KEY,
    lead_id AS ('L' + RIGHT('0000000' + CAST(lead_num AS VARCHAR(7)), 7)) PERSISTED,
    lead_first_name NVARCHAR(30) NOT NULL,
    lead_last_name NVARCHAR(40) NOT NULL,
    lead_company_name NVARCHAR(100) NOT NULL,
    lead_job_title NVARCHAR(40) NOT NULL,
    city NVARCHAR(40) NOT NULL,
    region NVARCHAR(40) NULL,
    country NVARCHAR(40) NOT NULL DEFAULT 'Israel',
    lead_description NVARCHAR(300) NULL,
    lead_industry NVARCHAR(40) NOT NULL,
    lead_source NVARCHAR(20) NOT NULL,
    lead_status NVARCHAR(30) NOT NULL,
    lead_annual_revenue DECIMAL(18,2) NULL,
    lead_rating NVARCHAR(20) NULL,
    lead_number_of_employees INT NULL,
    lead_email VARCHAR(100) NULL,
    lead_phone VARCHAR(20) NULL,
    lead_created_date DATETIME2 NOT NULL DEFAULT GETDATE(),
    owner_num INT NOT NULL,
    created_by_num INT NOT NULL,

    CONSTRAINT FK_crm_leads_owner
        FOREIGN KEY (owner_num) REFERENCES crm_users(user_num),

    CONSTRAINT FK_crm_leads_created_by
        FOREIGN KEY (created_by_num) REFERENCES crm_users(user_num)
);

-- Set constraints on crm_leads table
ALTER TABLE crm_leads
ADD CONSTRAINT CHK_crm_leads_source
CHECK (
    lead_source IN (
        'Email',
        'LinkedIn',
        'Phone',
        'Website'
    )
);

ALTER TABLE crm_leads
ADD CONSTRAINT CHK_crm_leads_status
CHECK (
    lead_status IN (
        'Open - Not Contacted',
        'Working - Contacted',
        'Closed - Converted',
        'Closed - Not Converted'
    )
);

ALTER TABLE crm_leads
ADD CONSTRAINT CHK_crm_leads_rating
CHECK (
    lead_rating IS NULL OR
    lead_rating IN (
        'Hot',
        'Warm',
        'Cold'
    )
);

ALTER TABLE crm_leads
ADD CONSTRAINT CHK_crm_leads_industry
CHECK (
    lead_industry IN (
        'Agriculture',
        'Construction',
        'Finance',
        'Manufacturing',
        'Technology'
    )
);

-- Create crm_opportunities table
CREATE TABLE crm_opportunities (
    opportunity_num INT IDENTITY(1,1) PRIMARY KEY,
    opportunity_id AS ('O' + RIGHT('0000000' + CAST(opportunity_num AS VARCHAR(7)), 7)) PERSISTED,
    opportunity_amount DECIMAL(18,2) NOT NULL,
    opportunity_name NVARCHAR(60) NOT NULL,
    opportunity_close_date DATE NOT NULL,
    account_num INT NOT NULL,
    opportunity_description NVARCHAR(300) NULL,
    opportunity_type NVARCHAR(40) NULL,
    opportunity_stage NVARCHAR(40) NOT NULL DEFAULT 'Prospecting',
    lead_source NVARCHAR(20) NOT NULL,
    opportunity_probability INT CHECK (opportunity_probability BETWEEN 0 AND 100),
    opportunity_created_date DATETIME2 NOT NULL DEFAULT GETDATE(),
    owner_num INT NOT NULL,
    created_by_num INT NOT NULL,

    CONSTRAINT FK_crm_opportunities_account
        FOREIGN KEY (account_num) REFERENCES crm_accounts(account_num),

    CONSTRAINT FK_crm_opportunities_owner
        FOREIGN KEY (owner_num) REFERENCES crm_users(user_num),

    CONSTRAINT FK_crm_opportunities_created_by
        FOREIGN KEY (created_by_num) REFERENCES crm_users(user_num),

    CONSTRAINT CHK_crm_opportunities_type
        CHECK (
            opportunity_type IS NULL OR
            opportunity_type IN (
                'Existing Customer - Upgrade',
                'Existing Customer - Replacement',
                'Existing Customer - Downgrade',
                'New Customer'
            )
        ),

    CONSTRAINT CHK_crm_opportunities_stage
        CHECK (
            opportunity_stage IN (
                'Prospecting',
                'Qualification',
                'Needs Analysis',
                'Value Proposition',
                'Id. Decision Makers',
                'Perception Analysis',
                'Proposal/Price Quote',
                'Negotiation/Review',
                'Closed Won',
                'Closed Lost'
            )
        ),

    CONSTRAINT CHK_crm_opportunities_lead_source
        CHECK (
            lead_source IN (
                'Email',
                'LinkedIn',
                'Phone',
                'Website'
            )
        )
);
