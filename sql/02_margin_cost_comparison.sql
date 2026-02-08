SELECT 
    Item,
    "2024",
    "As % of revenue (2024)",
    "2023",
    "As % of revenue (2023)",
    Change
FROM 
    Condensed_Consolidated_income_statement
WHERE 
    Item IN (
        'Cost of sales',
        'Gross profit',
        'Fulfilment costs',
        'EBIT',
        'Adjusted EBIT'
    )
ORDER BY 
    CASE Item 
        WHEN 'Cost of sales' THEN 1
        WHEN 'Gross profit' THEN 2
        WHEN 'Fulfilment costs' THEN 3
        WHEN 'EBIT' THEN 4
        WHEN 'Adjusted EBIT' THEN 5
        ELSE 99
    END;
