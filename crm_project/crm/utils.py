from django.core.paginator import Paginator

# Pagination function
def paginate_results(request, result):
    allowed_page_sizes = {10, 25, 50, 100, 200}

    raw_page_size = request.GET.get(
        "record-number", 
        "10"
        )

    try:
        records_per_page = int(raw_page_size)
    except (TypeError, ValueError):
        records_per_page = 10

    if records_per_page not in allowed_page_sizes:
        records_per_page = 10

    paginator = Paginator(result, records_per_page)

    page_number = request.GET.get("page")
    records = paginator.get_page(page_number)

    return records, str(records_per_page)

# Search function
def search_results (request, search_term, cursor):
    search_pattern = f"%{search_term}%"
    sql = """
    SELECT
        crm_accounts.*,
        owner.user_first_name AS owner_first_name,
        owner.user_last_name AS owner_last_name,
        creator.user_first_name AS creator_first_name,
        creator.user_last_name AS creator_last_name
    FROM crm_accounts
    INNER JOIN crm_users AS owner
        ON crm_accounts.owner_num = owner.user_num
    INNER JOIN crm_users AS creator
        ON crm_accounts.created_by_num = creator.user_num
    WHERE crm_accounts.account_id LIKE ?
        OR crm_accounts.account_name LIKE ?
        OR crm_accounts.city LIKE ?
        OR crm_accounts.region LIKE ?
        OR crm_accounts.country LIKE ?
        OR crm_accounts.account_description LIKE ?
        OR crm_accounts.account_industry LIKE ?
        OR crm_accounts.account_source LIKE ?
        OR crm_accounts.account_email LIKE ?
        OR crm_accounts.account_phone LIKE ?
        OR CAST(crm_accounts.account_created_date AS NVARCHAR(30)) LIKE ?
        OR CAST(crm_accounts.account_annual_revenue AS NVARCHAR(50)) LIKE ?
        OR CAST(crm_accounts.account_number_of_employees AS NVARCHAR(50)) LIKE ?
        OR owner.user_first_name LIKE ?
        OR owner.user_last_name LIKE ?
        OR creator.user_first_name LIKE ?
        OR creator.user_last_name LIKE ?
    """
    
    parameters = [search_pattern] * 17
    
    cursor.execute(sql, parameters)
    result = cursor.fetchall()

    records, record_number_selection = paginate_results(
        request, 
        result
        )

    return search_term, result, records, record_number_selection

    