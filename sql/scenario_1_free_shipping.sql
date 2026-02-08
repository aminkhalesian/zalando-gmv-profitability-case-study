SELECT
    'Scenario 1 - Free shipping >50€' AS Scenario,
    
    251 * 1.20 AS New_Orders_m,
    60.9 * 1.05 AS New_AOV_EUR,
    
    ROUND(251 * 1.20 * 60.9, 1) AS New_GMV_m_EUR,
    
    ROUND(10572.5 * (251 * 1.20 * 60.9 / 15296.2), 1) AS New_Revenue_m_EUR,
    
    ROUND(
        (10572.5 * (251 * 1.20 * 60.9 / 15296.2)) 
        * (4.8 / 100 - 0.03), 
    1) AS New_Adjusted_EBIT_m_EUR,
    
    ROUND(
        (4.8 - 3.0), 
    1) AS New_EBIT_margin_pct
;
