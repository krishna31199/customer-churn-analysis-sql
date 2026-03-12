-- Customer Churn Analysis

SELECT * FROM user_activity;

-- Most active users
SELECT user_id, COUNT(*) AS login_count
FROM user_activity
GROUP BY user_id
ORDER BY login_count DESC;

-- Most used feature
SELECT feature_used, COUNT(*) AS usage_count
FROM user_activity
GROUP BY feature_used
ORDER BY usage_count DESC;

-- Average session time
SELECT AVG(session_time) AS avg_session_time
FROM user_activity;

-- Last login per user
SELECT user_id, MAX(login_date) AS last_login
FROM user_activity
GROUP BY user_id
ORDER BY last_login;