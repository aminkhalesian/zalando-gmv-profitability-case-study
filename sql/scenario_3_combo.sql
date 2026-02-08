SELECT
    'Scenario 3 - Combo: Free shipping + 15% loyalty discount' AS Scenario,
    
    251 * 1.12 AS New_Orders_m,
    60.9 * 1.08 AS New_AOV_EUR,
    
    ROUND(251 * 1.12 * 60.9 * 1.08, 1) AS New_GMV_m_EUR,
    
    ROUND(10572.5 * (251 * 1.12 * 60.9 * 1.08 / 15296.2), 1) AS New_Revenue_m_EUR,
    
    ROUND(
        (10572.5 * (251 * 1.12 * 60.9 * 1.08 / 15296.2)) 
        * (4.8 / 100 - 0.045), 
    1) AS New_Adjusted_EBIT_m_EUR,
    
    ROUND(4.8 - 4.5, 1) AS New_EBIT_margin_pct
;
