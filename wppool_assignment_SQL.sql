SELECT * FROM wppool_assignment.wppool_growth_data_sample_20k;

-- Answer To The Question Number 2(a) -- 

SELECT subscription_type, AVG(total_sessions) AS average_sessions
FROM 
	wppool_growth_data_sample_20k
GROUP BY 
    subscription_type;

 
 
 -- Answer To The Question Number 2(b) -- 
 
SELECT user_id, total_sessions
FROM 
    wppool_growth_data_sample_20k
ORDER BY total_sessions DESC
LIMIT 5;


 -- Answer To The Question Number 2(c) -- 
 
 SELECT country, SUM(total_sessions) AS total_engagement
FROM 
    wppool_growth_data_sample_20k
GROUP BY country
ORDER BY total_engagement DESC
LIMIT 5;

 -- Answer To The Question Number 3(a) -- 
 
 SELECT subscription_type, (SUM(churned) / COUNT(user_id)) * 100 AS churn_rate
FROM 
    wppool_growth_data_sample_20k
GROUP BY subscription_type;


 -- Answer To The Question Number 4(c) --  
 
 SELECT plan_type, SUM(monthly_revenue) AS total_revenue
FROM 
    wppool_growth_data_sample_20k
GROUP BY plan_type
ORDER BY total_revenue DESC
limit 3

