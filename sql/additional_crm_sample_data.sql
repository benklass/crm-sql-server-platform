/*
Additional CRM sample data: 20 rows for each of five tables.
Run this script in order. It resolves foreign keys using unique usernames
and account email addresses, so it does not rely on fixed identity values.
*/
SET XACT_ABORT ON;
BEGIN TRANSACTION;


-- 1. crm_users: 20 rows

INSERT INTO crm_users (
 user_first_name,user_last_name,user_company,user_department,user_role,
 user_description,user_email,user_phone,user_username
) VALUES
(N'Yael',N'Cohen',N'Green Leaf Consulting',N'Environmental Analysis',N'GIS Analyst',N'Yael Cohen works as GIS Analyst in the Environmental Analysis department.','yael.cohen@greenleaf.co.il','0537001001','ycohen26'),
(N'Noam',N'Levi',N'Green Leaf Consulting',N'Business Development',N'Account Manager',N'Noam Levi works as Account Manager in the Business Development department.','noam.levi@greenleaf.co.il','0537001002','nlevi41'),
(N'Maya',N'Katz',N'Green Leaf Consulting',N'Project Management',N'Project Manager',N'Maya Katz works as Project Manager in the Project Management department.','maya.katz@greenleaf.co.il','0537001003','mkatz53'),
(N'Omar',N'Haddad',N'Green Leaf Consulting',N'Operations',N'Operations Analyst',N'Omar Haddad works as Operations Analyst in the Operations department.','omar.haddad@greenleaf.co.il','0537001004','ohaddad18'),
(N'Dana',N'Rosen',N'Green Leaf Consulting',N'Finance',N'Financial Analyst',N'Dana Rosen works as Financial Analyst in the Finance department.','dana.rosen@greenleaf.co.il','0537001005','drosen37'),
(N'Rami',N'Mansour',N'Green Leaf Consulting',N'Environmental Analysis',N'Environmental Consultant',N'Rami Mansour works as Environmental Consultant in the Environmental Analysis department.','rami.mansour@greenleaf.co.il','0537001006','rmansour62'),
(N'Tamar',N'Shahar',N'Green Leaf Consulting',N'Business Development',N'Proposal Coordinator',N'Tamar Shahar works as Proposal Coordinator in the Business Development department.','tamar.shahar@greenleaf.co.il','0537001007','tshahar29'),
(N'Gil',N'Barak',N'Green Leaf Consulting',N'Data Services',N'Data Analyst',N'Gil Barak works as Data Analyst in the Data Services department.','gil.barak@greenleaf.co.il','0537001008','gbarak44'),
(N'Leila',N'Nassar',N'Green Leaf Consulting',N'Project Management',N'Programme Officer',N'Leila Nassar works as Programme Officer in the Project Management department.','leila.nassar@greenleaf.co.il','0537001009','lnassar35'),
(N'Itai',N'Friedman',N'Green Leaf Consulting',N'Operations',N'CRM Administrator',N'Itai Friedman works as CRM Administrator in the Operations department.','itai.friedman@greenleaf.co.il','0537001010','ifriedman77'),
(N'Sahar',N'Abu-Salem',N'Green Leaf Consulting',N'Environmental Analysis',N'Water Specialist',N'Sahar Abu-Salem works as Water Specialist in the Environmental Analysis department.','sahar.abusalem@greenleaf.co.il','0537001011','sabusalem21'),
(N'Eitan',N'Gold',N'Green Leaf Consulting',N'Business Development',N'Partnerships Manager',N'Eitan Gold works as Partnerships Manager in the Business Development department.','eitan.gold@greenleaf.co.il','0537001012','egold56'),
(N'Nur',N'Khalil',N'Green Leaf Consulting',N'Data Services',N'BI Developer',N'Nur Khalil works as BI Developer in the Data Services department.','nur.khalil@greenleaf.co.il','0537001013','nkhalil31'),
(N'Aviv',N'Segal',N'Green Leaf Consulting',N'Project Management',N'Senior Consultant',N'Aviv Segal works as Senior Consultant in the Project Management department.','aviv.segal@greenleaf.co.il','0537001014','asegal68'),
(N'Miriam',N'Dayan',N'Green Leaf Consulting',N'Finance',N'Commercial Manager',N'Miriam Dayan works as Commercial Manager in the Finance department.','miriam.dayan@greenleaf.co.il','0537001015','mdayan48'),
(N'Fadi',N'Khoury',N'Green Leaf Consulting',N'Environmental Analysis',N'Climate Analyst',N'Fadi Khoury works as Climate Analyst in the Environmental Analysis department.','fadi.khoury@greenleaf.co.il','0537001016','fkhoury24'),
(N'Shira',N'Ben-David',N'Green Leaf Consulting',N'Business Development',N'Marketing Analyst',N'Shira Ben-David works as Marketing Analyst in the Business Development department.','shira.bendavid@greenleaf.co.il','0537001017','sbendavid59'),
(N'Yousef',N'Jabareen',N'Green Leaf Consulting',N'Operations',N'Quality Coordinator',N'Yousef Jabareen works as Quality Coordinator in the Operations department.','yousef.jabareen@greenleaf.co.il','0537001018','yjabareen33'),
(N'Adi',N'Peretz',N'Green Leaf Consulting',N'Data Services',N'Reporting Specialist',N'Adi Peretz works as Reporting Specialist in the Data Services department.','adi.peretz@greenleaf.co.il','0537001019','aperetz46'),
(N'Karim',N'Darawshe',N'Green Leaf Consulting',N'Project Management',N'Field Coordinator',N'Karim Darawshe works as Field Coordinator in the Project Management department.','karim.darawshe@greenleaf.co.il','0537001020','kdarawshe72');

DECLARE @u1 INT=(SELECT user_num FROM crm_users WHERE user_username='ycohen26');
DECLARE @u2 INT=(SELECT user_num FROM crm_users WHERE user_username='nlevi41');
DECLARE @u3 INT=(SELECT user_num FROM crm_users WHERE user_username='mkatz53');
DECLARE @u4 INT=(SELECT user_num FROM crm_users WHERE user_username='ohaddad18');
DECLARE @u5 INT=(SELECT user_num FROM crm_users WHERE user_username='drosen37');
DECLARE @u6 INT=(SELECT user_num FROM crm_users WHERE user_username='rmansour62');
DECLARE @u7 INT=(SELECT user_num FROM crm_users WHERE user_username='tshahar29');
DECLARE @u8 INT=(SELECT user_num FROM crm_users WHERE user_username='gbarak44');
DECLARE @u9 INT=(SELECT user_num FROM crm_users WHERE user_username='lnassar35');
DECLARE @u10 INT=(SELECT user_num FROM crm_users WHERE user_username='ifriedman77');
DECLARE @u11 INT=(SELECT user_num FROM crm_users WHERE user_username='sabusalem21');
DECLARE @u12 INT=(SELECT user_num FROM crm_users WHERE user_username='egold56');
DECLARE @u13 INT=(SELECT user_num FROM crm_users WHERE user_username='nkhalil31');
DECLARE @u14 INT=(SELECT user_num FROM crm_users WHERE user_username='asegal68');
DECLARE @u15 INT=(SELECT user_num FROM crm_users WHERE user_username='mdayan48');
DECLARE @u16 INT=(SELECT user_num FROM crm_users WHERE user_username='fkhoury24');
DECLARE @u17 INT=(SELECT user_num FROM crm_users WHERE user_username='sbendavid59');
DECLARE @u18 INT=(SELECT user_num FROM crm_users WHERE user_username='yjabareen33');
DECLARE @u19 INT=(SELECT user_num FROM crm_users WHERE user_username='aperetz46');
DECLARE @u20 INT=(SELECT user_num FROM crm_users WHERE user_username='kdarawshe72');


-- 2. crm_accounts: 20 rows

INSERT INTO crm_accounts (
 account_name,city,region,country,account_description,account_industry,
 account_source,account_annual_revenue,account_number_of_employees,
 account_email,account_phone,owner_num,created_by_num
) VALUES
(N'Galil Water Analytics',N'Karmiel',N'Northern District',N'Israel',N'Galil Water Analytics is an Israeli organization operating in the water technology sector.',N'Water Technology',N'LinkedIn',28500000.00,46,'info@galilwater.co.il','0537102001',@u1,@u4),
(N'Carmel Renewable Energy',N'Haifa',N'Haifa District',N'Israel',N'Carmel Renewable Energy is an Israeli organization operating in the renewable energy sector.',N'Renewable Energy',N'Website',64000000.00,92,'info@carmelrenewable.co.il','0537102002',@u2,@u5),
(N'Negev Logistics Group',N'Be''er Sheva',N'Southern District',N'Israel',N'Negev Logistics Group is an Israeli organization operating in the logistics sector.',N'Logistics',N'Phone',88000000.00,135,'info@negevlogistics.co.il','0537102003',@u3,@u6),
(N'Haifa MedTech Solutions',N'Haifa',N'Haifa District',N'Israel',N'Haifa MedTech Solutions is an Israeli organization operating in the healthcare sector.',N'Healthcare',N'Email',52000000.00,78,'info@haifamedtech.co.il','0537102004',@u4,@u7),
(N'Jerusalem Heritage Planning',N'Jerusalem',N'Jerusalem District',N'Israel',N'Jerusalem Heritage Planning is an Israeli organization operating in the urban planning sector.',N'Urban Planning',N'Website',17500000.00,29,'info@jhplanning.co.il','0537102005',@u5,@u8),
(N'Sharon Food Systems',N'Netanya',N'Central District',N'Israel',N'Sharon Food Systems is an Israeli organization operating in the manufacturing sector.',N'Manufacturing',N'Phone',73500000.00,114,'info@sharonfoodsystems.co.il','0537102006',@u6,@u9),
(N'Yokneam Sensor Labs',N'Yokneam',N'Northern District',N'Israel',N'Yokneam Sensor Labs is an Israeli organization operating in the technology sector.',N'Technology',N'LinkedIn',46000000.00,67,'info@yokneamsensors.co.il','0537102007',@u7,@u10),
(N'Nazareth Community Health',N'Nazareth',N'Northern District',N'Israel',N'Nazareth Community Health is an Israeli organization operating in the healthcare sector.',N'Healthcare',N'Email',39000000.00,121,'info@nazarethhealth.co.il','0537102008',@u8,@u11),
(N'Rehovot AgroScience',N'Rehovot',N'Central District',N'Israel',N'Rehovot AgroScience is an Israeli organization operating in the agriculture sector.',N'Agriculture',N'Website',31500000.00,53,'info@rehovotagro.co.il','0537102009',@u9,@u12),
(N'Herzliya Cyber Risk',N'Herzliya',N'Tel Aviv District',N'Israel',N'Herzliya Cyber Risk is an Israeli organization operating in the cybersecurity sector.',N'Cybersecurity',N'LinkedIn',95000000.00,142,'info@herzliyacyber.co.il','0537102010',@u10,@u13),
(N'Afula Regional Transport',N'Afula',N'Northern District',N'Israel',N'Afula Regional Transport is an Israeli organization operating in the transportation sector.',N'Transportation',N'Phone',67000000.00,184,'info@afulatransport.co.il','0537102011',@u11,@u14),
(N'Caesarea Coastal Engineering',N'Caesarea',N'Haifa District',N'Israel',N'Caesarea Coastal Engineering is an Israeli organization operating in the engineering sector.',N'Engineering',N'Email',43000000.00,61,'info@caesareaengineering.co.il','0537102012',@u12,@u15),
(N'Tel Aviv Retail Insights',N'Tel Aviv',N'Tel Aviv District',N'Israel',N'Tel Aviv Retail Insights is an Israeli organization operating in the business analytics sector.',N'Business Analytics',N'LinkedIn',25500000.00,38,'info@taretailinsights.co.il','0537102013',@u13,@u16),
(N'Akko Port Services',N'Akko',N'Northern District',N'Israel',N'Akko Port Services is an Israeli organization operating in the maritime services sector.',N'Maritime Services',N'Phone',58000000.00,96,'info@akkoport.co.il','0537102014',@u14,@u17),
(N'Modiin Smart Mobility',N'Modi''in',N'Central District',N'Israel',N'Modiin Smart Mobility is an Israeli organization operating in the mobility technology sector.',N'Mobility Technology',N'Website',48500000.00,72,'info@modiinsmartmobility.co.il','0537102015',@u15,@u18),
(N'Eilat Desert Hospitality',N'Eilat',N'Southern District',N'Israel',N'Eilat Desert Hospitality is an Israeli organization operating in the hospitality sector.',N'Hospitality',N'Email',120000000.00,260,'info@eilathospitality.co.il','0537102016',@u16,@u19),
(N'Kfar Saba Green Buildings',N'Kfar Saba',N'Central District',N'Israel',N'Kfar Saba Green Buildings is an Israeli organization operating in the construction sector.',N'Construction',N'Website',76000000.00,109,'info@ksgreenbuildings.co.il','0537102017',@u17,@u20),
(N'Tiberias Lake Services',N'Tiberias',N'Northern District',N'Israel',N'Tiberias Lake Services is an Israeli organization operating in the environmental services sector.',N'Environmental Services',N'Phone',22500000.00,44,'info@tiberiaslake.co.il','0537102018',@u18,@u1),
(N'Petah Tikva DataWorks',N'Petah Tikva',N'Central District',N'Israel',N'Petah Tikva DataWorks is an Israeli organization operating in the information technology sector.',N'Information Technology',N'LinkedIn',54000000.00,83,'info@ptdataworks.co.il','0537102019',@u19,@u2),
(N'Raanana Education Systems',N'Raanana',N'Central District',N'Israel',N'Raanana Education Systems is an Israeli organization operating in the education technology sector.',N'Education Technology',N'Email',36500000.00,58,'info@raananaedtech.co.il','0537102020',@u20,@u3);

DECLARE @a1 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@galilwater.co.il');
DECLARE @a2 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@carmelrenewable.co.il');
DECLARE @a3 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@negevlogistics.co.il');
DECLARE @a4 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@haifamedtech.co.il');
DECLARE @a5 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@jhplanning.co.il');
DECLARE @a6 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@sharonfoodsystems.co.il');
DECLARE @a7 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@yokneamsensors.co.il');
DECLARE @a8 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@nazarethhealth.co.il');
DECLARE @a9 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@rehovotagro.co.il');
DECLARE @a10 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@herzliyacyber.co.il');
DECLARE @a11 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@afulatransport.co.il');
DECLARE @a12 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@caesareaengineering.co.il');
DECLARE @a13 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@taretailinsights.co.il');
DECLARE @a14 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@akkoport.co.il');
DECLARE @a15 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@modiinsmartmobility.co.il');
DECLARE @a16 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@eilathospitality.co.il');
DECLARE @a17 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@ksgreenbuildings.co.il');
DECLARE @a18 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@tiberiaslake.co.il');
DECLARE @a19 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@ptdataworks.co.il');
DECLARE @a20 INT=(SELECT account_num FROM crm_accounts WHERE account_email='info@raananaedtech.co.il');


-- 3. crm_contacts: 20 rows

INSERT INTO crm_contacts (
 contact_first_name,contact_last_name,account_num,contact_job_title,
 contact_email,contact_phone,owner_num,created_by_num
) VALUES
(N'Einat',N'Lavi',@a1,N'Water Network Manager','einat.lavi@galilwater.co.il','0537203001',@u1,@u4),
(N'Yaron',N'Peled',@a2,N'Project Development Director','yaron.peled@carmelrenewable.co.il','0537203002',@u2,@u5),
(N'Hila',N'Mizrahi',@a3,N'Fleet Operations Manager','hila.mizrahi@negevlogistics.co.il','0537203003',@u3,@u6),
(N'George',N'Khoury',@a4,N'Hospital Solutions Manager','george.khoury@haifamedtech.co.il','0537203004',@u4,@u7),
(N'Ruth',N'Elbaz',@a5,N'Conservation Planner','ruth.elbaz@jhplanning.co.il','0537203005',@u5,@u8),
(N'Assaf',N'Biton',@a6,N'Plant Engineering Manager','assaf.biton@sharonfoodsystems.co.il','0537203006',@u6,@u9),
(N'Lina',N'Saleh',@a7,N'Product Partnerships Lead','lina.saleh@yokneamsensors.co.il','0537203007',@u7,@u10),
(N'Nabil',N'Awad',@a8,N'Clinic Operations Director','nabil.awad@nazarethhealth.co.il','0537203008',@u8,@u11),
(N'Sivan',N'Golan',@a9,N'Precision Agriculture Lead','sivan.golan@rehovotagro.co.il','0537203009',@u9,@u12),
(N'Doron',N'Stern',@a10,N'Cyber Risk Director','doron.stern@herzliyacyber.co.il','0537203010',@u10,@u13),
(N'Rinat',N'Azran',@a11,N'Mobility Planning Manager','rinat.azran@afulatransport.co.il','0537203011',@u11,@u14),
(N'Sami',N'Hijazi',@a12,N'Coastal Engineering Lead','sami.hijazi@caesareaengineering.co.il','0537203012',@u12,@u15),
(N'Michal',N'Ziv',@a13,N'Insights Director','michal.ziv@taretailinsights.co.il','0537203013',@u13,@u16),
(N'Walid',N'Yasin',@a14,N'Port Operations Manager','walid.yasin@akkoport.co.il','0537203014',@u14,@u17),
(N'Ofir',N'Raz',@a15,N'Traffic Systems Manager','ofir.raz@modiinsmartmobility.co.il','0537203015',@u15,@u18),
(N'Galit',N'Mor',@a16,N'Sustainability Manager','galit.mor@eilathospitality.co.il','0537203016',@u16,@u19),
(N'Amir',N'Shavit',@a17,N'Green Building Director','amir.shavit@ksgreenbuildings.co.il','0537203017',@u17,@u20),
(N'Manal',N'Zoubi',@a18,N'Water Quality Coordinator','manal.zoubi@tiberiaslake.co.il','0537203018',@u18,@u1),
(N'Yonatan',N'Gal',@a19,N'Data Platform Manager','yonatan.gal@ptdataworks.co.il','0537203019',@u19,@u2),
(N'Reem',N'Saadi',@a20,N'Digital Learning Director','reem.saadi@raananaedtech.co.il','0537203020',@u20,@u3);


-- 4. crm_leads: 20 rows

INSERT INTO crm_leads (
 lead_first_name,lead_last_name,lead_company_name,lead_job_title,city,region,
 country,lead_description,lead_industry,lead_source,lead_status,
 lead_annual_revenue,lead_rating,lead_number_of_employees,lead_email,
 lead_phone,owner_num,created_by_num
) VALUES
(N'Ayelet',N'Dagan',N'Upper Galilee Farms',N'Sustainability Manager',N'Kiryat Shmona',N'Northern District',N'Israel',N'Upper Galilee Farms is a prospective client in the agriculture sector.',N'Agriculture',N'Website',N'Open - Not Contacted',22000000.00,N'Warm',48,'ayelet.dagan@lead1.co.il','0537304001',@u1,@u6),
(N'Bashir',N'Najjar',N'Nazareth Infrastructure',N'Projects Director',N'Nazareth',N'Northern District',N'Israel',N'Nazareth Infrastructure is a prospective client in the construction sector.',N'Construction',N'LinkedIn',N'Working - Contacted',71000000.00,N'Hot',103,'bashir.najjar@lead2.co.il','0537304002',@u2,@u7),
(N'Liat',N'Koren',N'Sharon Retail Group',N'Expansion Manager',N'Netanya',N'Central District',N'Israel',N'Sharon Retail Group is a prospective client in the retail sector.',N'Retail',N'Email',N'Open - Not Contacted',96000000.00,N'Warm',170,'liat.koren@lead3.co.il','0537304003',@u3,@u8),
(N'Hassan',N'Abbas',N'Wadi Ara Water Services',N'Network Engineer',N'Umm al-Fahm',N'Haifa District',N'Israel',N'Wadi Ara Water Services is a prospective client in the water utilities sector.',N'Water Utilities',N'Phone',N'Working - Contacted',38000000.00,N'Hot',74,'hassan.abbas@lead4.co.il','0537304004',@u4,@u9),
(N'Keren',N'Azoulay',N'Jerusalem Civic Data',N'Programme Manager',N'Jerusalem',N'Jerusalem District',N'Israel',N'Jerusalem Civic Data is a prospective client in the public sector technology sector.',N'Public Sector Technology',N'Website',N'Open - Not Contacted',18000000.00,N'Warm',31,'keren.azoulay@lead5.co.il','0537304005',@u5,@u10),
(N'Roi',N'Kadosh',N'Negev Solar Works',N'Business Development Director',N'Dimona',N'Southern District',N'Israel',N'Negev Solar Works is a prospective client in the renewable energy sector.',N'Renewable Energy',N'LinkedIn',N'Working - Contacted',83000000.00,N'Hot',119,'roi.kadosh@lead6.co.il','0537304006',@u6,@u11),
(N'Salma',N'Diab',N'Akko Marine Foods',N'Quality Manager',N'Akko',N'Northern District',N'Israel',N'Akko Marine Foods is a prospective client in the food manufacturing sector.',N'Food Manufacturing',N'Email',N'Open - Not Contacted',29000000.00,N'Warm',62,'salma.diab@lead7.co.il','0537304007',@u7,@u12),
(N'Oren',N'Tal',N'Herzliya Office Parks',N'Asset Manager',N'Herzliya',N'Tel Aviv District',N'Israel',N'Herzliya Office Parks is a prospective client in the real estate sector.',N'Real Estate',N'Phone',N'Working - Contacted',150000000.00,N'Hot',210,'oren.tal@lead8.co.il','0537304008',@u8,@u13),
(N'Rana',N'Masri',N'Haifa Clinical Systems',N'Operations Director',N'Haifa',N'Haifa District',N'Israel',N'Haifa Clinical Systems is a prospective client in the healthcare technology sector.',N'Healthcare Technology',N'LinkedIn',N'Open - Not Contacted',47000000.00,N'Warm',81,'rana.masri@lead9.co.il','0537304009',@u9,@u14),
(N'Ziv',N'Efrati',N'Rishon Mobility Labs',N'Product Manager',N'Rishon LeZion',N'Central District',N'Israel',N'Rishon Mobility Labs is a prospective client in the mobility technology sector.',N'Mobility Technology',N'Website',N'Working - Contacted',44000000.00,N'Hot',69,'ziv.efrati@lead10.co.il','0537304010',@u10,@u15),
(N'Deena',N'Halabi',N'Sakhnin Community Energy',N'Programme Director',N'Sakhnin',N'Northern District',N'Israel',N'Sakhnin Community Energy is a prospective client in the energy services sector.',N'Energy Services',N'Email',N'Open - Not Contacted',14000000.00,N'Warm',27,'deena.halabi@lead11.co.il','0537304011',@u11,@u16),
(N'Guy',N'Meller',N'Ashdod Port Analytics',N'Data Strategy Lead',N'Ashdod',N'Southern District',N'Israel',N'Ashdod Port Analytics is a prospective client in the logistics technology sector.',N'Logistics Technology',N'LinkedIn',N'Working - Contacted',103000000.00,N'Hot',156,'guy.meller@lead12.co.il','0537304012',@u12,@u17),
(N'Nasreen',N'Jaber',N'Tayibe Education Network',N'Digital Services Manager',N'Tayibe',N'Central District',N'Israel',N'Tayibe Education Network is a prospective client in the education sector.',N'Education',N'Phone',N'Open - Not Contacted',24000000.00,N'Warm',88,'nasreen.jaber@lead13.co.il','0537304013',@u13,@u18),
(N'Ido',N'Ben-Shimon',N'Kinneret Eco Tourism',N'General Manager',N'Tiberias',N'Northern District',N'Israel',N'Kinneret Eco Tourism is a prospective client in the tourism sector.',N'Tourism',N'Website',N'Working - Contacted',36000000.00,N'Warm',73,'ido.benshimon@lead14.co.il','0537304014',@u14,@u19),
(N'Fatma',N'Kassem',N'Galilee Packaging',N'Plant Director',N'Shefa-Amr',N'Northern District',N'Israel',N'Galilee Packaging is a prospective client in the manufacturing sector.',N'Manufacturing',N'Email',N'Open - Not Contacted',62000000.00,N'Hot',125,'fatma.kassem@lead15.co.il','0537304015',@u15,@u20),
(N'Nadav',N'Rotem',N'Raanana FinTech Services',N'Compliance Manager',N'Raanana',N'Central District',N'Israel',N'Raanana FinTech Services is a prospective client in the financial technology sector.',N'Financial Technology',N'LinkedIn',N'Working - Contacted',79000000.00,N'Hot',112,'nadav.rotem@lead16.co.il','0537304016',@u16,@u1),
(N'Huda',N'Khatib',N'Carmel Social Services',N'Monitoring and Evaluation Lead',N'Daliyat al-Karmel',N'Haifa District',N'Israel',N'Carmel Social Services is a prospective client in the nonprofit services sector.',N'Nonprofit Services',N'Email',N'Open - Not Contacted',11000000.00,N'Warm',39,'huda.khatib@lead17.co.il','0537304017',@u17,@u2),
(N'Amit',N'Yosef',N'Petah Tikva Industrial Park',N'Infrastructure Manager',N'Petah Tikva',N'Central District',N'Israel',N'Petah Tikva Industrial Park is a prospective client in the industrial real estate sector.',N'Industrial Real Estate',N'Phone',N'Working - Contacted',132000000.00,N'Hot',230,'amit.yosef@lead18.co.il','0537304018',@u18,@u3),
(N'Marwan',N'Suleiman',N'Kafr Yasif Water Cooperative',N'General Manager',N'Kafr Yasif',N'Northern District',N'Israel',N'Kafr Yasif Water Cooperative is a prospective client in the water utilities sector.',N'Water Utilities',N'Website',N'Open - Not Contacted',16000000.00,N'Warm',34,'marwan.suleiman@lead19.co.il','0537304019',@u19,@u4),
(N'Tal',N'Avrahami',N'Tel Aviv Urban Labs',N'Innovation Director',N'Tel Aviv',N'Tel Aviv District',N'Israel',N'Tel Aviv Urban Labs is a prospective client in the urban technology sector.',N'Urban Technology',N'LinkedIn',N'Working - Contacted',57000000.00,N'Hot',76,'tal.avrahami@lead20.co.il','0537304020',@u20,@u5);


-- 5. crm_opportunities: 20 rows

INSERT INTO crm_opportunities (
 opportunity_amount,opportunity_name,opportunity_close_date,account_num,
 opportunity_description,opportunity_type,opportunity_stage,lead_source,
 opportunity_probability,owner_num,created_by_num
) VALUES
(720000.00,N'Water Loss Dashboard - Galil Water','2026-08-15',@a1,N'Proposed consulting engagement for Galil Water Analytics.',N'Existing Customer - Upgrade',N'Needs Analysis',N'LinkedIn',55,@u1,@u5),
(1850000.00,N'Solar Site Screening - Carmel Energy','2026-08-22',@a2,N'Proposed consulting engagement for Carmel Renewable Energy.',N'New Customer',N'Qualification',N'Website',45,@u2,@u6),
(940000.00,N'Fleet Performance Platform - Negev Logistics','2026-08-29',@a3,N'Proposed consulting engagement for Negev Logistics Group.',N'New Customer',N'Value Proposition',N'Phone',65,@u3,@u7),
(1280000.00,N'Hospital Workflow Analytics - Haifa MedTech','2026-09-05',@a4,N'Proposed consulting engagement for Haifa MedTech Solutions.',N'Existing Customer - Upgrade',N'Proposal/Price Quote',N'Email',70,@u4,@u8),
(610000.00,N'Heritage GIS Programme - Jerusalem Planning','2026-09-12',@a5,N'Proposed consulting engagement for Jerusalem Heritage Planning.',N'New Customer',N'Needs Analysis',N'Website',50,@u5,@u9),
(1530000.00,N'Plant Efficiency Review - Sharon Food','2026-09-19',@a6,N'Proposed consulting engagement for Sharon Food Systems.',N'New Customer',N'Qualification',N'Phone',40,@u6,@u10),
(870000.00,N'Industrial Sensor Pilot - Yokneam Labs','2026-09-26',@a7,N'Proposed consulting engagement for Yokneam Sensor Labs.',N'Existing Customer - Upgrade',N'Negotiation/Review',N'LinkedIn',80,@u7,@u11),
(460000.00,N'Clinic KPI Framework - Nazareth Health','2026-10-03',@a8,N'Proposed consulting engagement for Nazareth Community Health.',N'New Customer',N'Value Proposition',N'Email',60,@u8,@u12),
(990000.00,N'Crop Intelligence Platform - Rehovot Agro','2026-10-10',@a9,N'Proposed consulting engagement for Rehovot AgroScience.',N'New Customer',N'Proposal/Price Quote',N'Website',72,@u9,@u13),
(1320000.00,N'Cyber Risk Mapping - Herzliya Cyber','2026-10-17',@a10,N'Proposed consulting engagement for Herzliya Cyber Risk.',N'Existing Customer - Upgrade',N'Needs Analysis',N'LinkedIn',58,@u10,@u14),
(680000.00,N'Regional Route Analytics - Afula Transport','2026-10-24',@a11,N'Proposed consulting engagement for Afula Regional Transport.',N'New Customer',N'Qualification',N'Phone',45,@u11,@u15),
(1740000.00,N'Coastal Resilience Study - Caesarea','2026-10-31',@a12,N'Proposed consulting engagement for Caesarea Coastal Engineering.',N'New Customer',N'Value Proposition',N'Email',62,@u12,@u16),
(540000.00,N'Retail Catchment Analysis - Tel Aviv','2026-11-07',@a13,N'Proposed consulting engagement for Tel Aviv Retail Insights.',N'Existing Customer - Upgrade',N'Negotiation/Review',N'LinkedIn',82,@u13,@u17),
(760000.00,N'Port Operations Dashboard - Akko','2026-11-14',@a14,N'Proposed consulting engagement for Akko Port Services.',N'New Customer',N'Proposal/Price Quote',N'Phone',68,@u14,@u18),
(1190000.00,N'Smart Traffic Pilot - Modiin','2026-11-21',@a15,N'Proposed consulting engagement for Modiin Smart Mobility.',N'New Customer',N'Needs Analysis',N'Website',56,@u15,@u19),
(830000.00,N'Hotel Sustainability Reporting - Eilat','2026-11-28',@a16,N'Proposed consulting engagement for Eilat Desert Hospitality.',N'Existing Customer - Upgrade',N'Qualification',N'Email',48,@u16,@u20),
(2140000.00,N'Green Retrofit Programme - Kfar Saba','2026-12-05',@a17,N'Proposed consulting engagement for Kfar Saba Green Buildings.',N'New Customer',N'Proposal/Price Quote',N'Website',74,@u17,@u1),
(390000.00,N'Lake Water Quality Dashboard - Tiberias','2026-12-12',@a18,N'Proposed consulting engagement for Tiberias Lake Services.',N'New Customer',N'Value Proposition',N'Phone',64,@u18,@u2),
(1460000.00,N'Cloud Reporting Migration - PT DataWorks','2026-12-19',@a19,N'Proposed consulting engagement for Petah Tikva DataWorks.',N'Existing Customer - Upgrade',N'Negotiation/Review',N'LinkedIn',78,@u19,@u3),
(580000.00,N'School Performance Portal - Raanana','2026-12-26',@a20,N'Proposed consulting engagement for Raanana Education Systems.',N'New Customer',N'Needs Analysis',N'Email',52,@u20,@u4);


COMMIT TRANSACTION;

-- Verification
SELECT COUNT(*) AS user_count FROM crm_users;
SELECT COUNT(*) AS account_count FROM crm_accounts;
SELECT COUNT(*) AS contact_count FROM crm_contacts;
SELECT COUNT(*) AS lead_count FROM crm_leads;
SELECT COUNT(*) AS opportunity_count FROM crm_opportunities;
