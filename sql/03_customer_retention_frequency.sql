SELECT 
    Metric,
    "2024",
    "2023",
    Change
FROM 
    Key_performance_indicators
WHERE 
    Metric IN (
        'Active customers (LTM) (in m)',
        'Number of orders (in m)',
        'Average orders per active customer (LTM)',
        'Average GMV per active customer (LTM) (in EUR)',
        'Average basket size (LTM) (in EUR)'
    )
ORDER BY 
    CASE Metric
        WHEN 'Active customers (LTM) (in m)' THEN 1
        WHEN 'Number of orders (in m)' THEN 2
        WHEN 'Average orders per active customer (LTM)' THEN 3
        WHEN 'Average GMV per active customer (LTM) (in EUR)' THEN 4
        WHEN 'Average basket size (LTM) (in EUR)' THEN 5
        ELSE 99
    END;
