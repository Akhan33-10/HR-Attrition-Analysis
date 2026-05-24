USE hr_attrition_db;
SELECT * FROM hr_data;
SELECT COUNT(*) employees FROM hr_data;
SELECT attrition , COUNT(*) total_employee FROM hr_data GROUP BY attrition;
SELECT COUNT(*) total_employee ,SUM( CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END ) attrited ,
ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct FROM hr_data;
WITH a as(SELECT department , COUNT(*) total_employee , SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) attrited,
ROUND(SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct from Hr_data GROUP BY department)
SELECT * FROM a ORDER BY attrition_pct DESC;
SELECT gender , COUNT(*) total_employee , SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) attrited,
CONCAT(ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2),'%') attrition_pct FROM hr_data GROUP BY gender;
WITH A as (SELECT jobrole , COUNT(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited,
ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0 ,2) attrition_pct FROM hr_data GROUP BY jobrole),
 B AS (SELECT *, rank() OVER(order by attrition_pct DESC) attrition_rnk FROM a)
 SELECT * FROM b order by attrition_rnk;
SELECT overtime, COUNT(*) total_employee, SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited,
ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct
FROM hr_data GROUP BY overtime;
SELECT maritalstatus, count(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited ,
 ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct FROM hr_data GROUP BY maritalstatus; 
SELECT YearsAtCompany , count(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited ,
 ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct FROM hr_data GROUP BY YearsAtCompany ORDER BY YearsAtCompany;
 SELECT YearsAtCompany,YearsSinceLastPromotion ,count(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited ,
 ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct FROM hr_data GROUP BY YearsSinceLastPromotion,YearsAtCompany;
SELECT AGE , count(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1 ELSE 0 END) attrited ,
 ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct FROM hr_data GROUP BY AGE order by attrition_pct;
 
 SELECT CASE WHEN monthlyincome < 3000 THEN 'low (below 3k)'
 WHEN monthlyincome BETWEEN 3000 AND 6000 THEN 'medium (3k-6k)'
 WHEN monthlyincome BETWEEN 6001 AND 10000 THEN 'high (6k-10k)'
 ELSE 'very high (10k+)' END salary_band ,
 COUNT(*) total_employee, SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) attrited,
ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct
FROM hr_data group by salary_band order by attrition_pct;
SELECT worklifebalance, CASE worklifebalance WHEN 1 THEN 'bad'
WHEN 2 THEN 'good' WHEN 3 THEN 'better' WHEN 4 THEN 'best' END balance_label,
COUNT(*) total_employee , SUM(CASE WHEN attrition ='yes' THEN 1  ELSE 0 END) attrited,
ROUND(SUM(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END)/COUNT(*)*100.0,2) attrition_pct  FROM hr_data GROUP BY worklifebalance , balance_label
ORDER BY worklifebalance;












