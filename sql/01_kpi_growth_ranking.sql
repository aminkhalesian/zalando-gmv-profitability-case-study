SELECT 
    Metric,
    "2024",
    "2023",
    Change,
    CAST(REPLACE(REPLACE(Change, '%', ''), ' pp', '') AS REAL) AS Change_Value
FROM 
    Key_performance_indicators
WHERE 
    Change IS NOT NULL 
    AND Change != ''
ORDER BY 
    Change_Value DESC;
