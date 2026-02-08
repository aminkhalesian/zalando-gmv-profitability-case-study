SELECT 
    MAX(CASE WHEN Metric = 'Gross merchandise volume (GMV) (in m EUR)' THEN "2024" END) AS GMV_2024,
    MAX(CASE WHEN Metric = 'Revenue (in m EUR)' THEN "2024" END) AS Revenue_2024,
    MAX(CASE WHEN Metric = 'Adjusted EBIT (in m EUR)' THEN "2024" END) AS Adjusted_EBIT_2024,
    MAX(CASE WHEN Metric = 'Adjusted EBIT margin (%)' THEN "2024" END) AS Adjusted_EBIT_margin_2024,
    MAX(CASE WHEN Metric = 'Number of orders (in m)' THEN "2024" END) AS Orders_2024,
    MAX(CASE WHEN Metric = 'Active customers (LTM) (in m)' THEN "2024" END) AS Active_customers_2024,
    MAX(CASE WHEN Metric = 'Average GMV per active customer (LTM) (in EUR)' THEN "2024" END) AS Avg_GMV_per_customer_2024,
    MAX(CASE WHEN Metric = 'Average basket size (LTM) (in EUR)' THEN "2024" END) AS Avg_basket_size_2024
FROM 
    Key_performance_indicators;
