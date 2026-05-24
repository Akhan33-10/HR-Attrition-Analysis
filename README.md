# 👥 HR Attrition Analysis Dashboard

## 📌 Project Overview
Analyzed 1,470 employee records to identify key attrition 
patterns and provide actionable retention recommendations 
using MySQL and Power BI.

## 🛠️ Tools Used
- **MySQL** — Data storage and advanced SQL analysis
- **Power BI** — Interactive dashboard
- **Excel** — Data preparation

## 📊 Dataset
- 1,470 employees — 35 features
- IBM HR Analytics dataset from Kaggle
- Features include department, job role, salary,
  overtime, marital status, work life balance

## 🔍 Key Findings
- Overall attrition rate: **16.12%** (237 employees)
- **Overtime** employees leave at 30.53% vs 10.44%
- **Sales Representatives** highest attrition at 39.76%
- **Low salary** employees leave at 28.61%
- **Single** employees leave most at 25.53%
- **Bad work life balance** causes 31.25% attrition
- **Research Directors** most stable at only 2.50%

## ⚠️ Most At-Risk Profile
Single + Low Salary + Overtime + Sales Role

## ✅ Business Recommendations
- Reduce overtime — hire additional staff
- Review salary for below $3K employees
- Improve Sales team commission structure
- Introduce flexible working hours

## 💡 Advanced SQL Used
- CTEs (Common Table Expressions)
- RANK() Window Function
- CASE WHEN salary buckets
- Subqueries

## 📁 Files
| File | Description |
|---|---|
| `hr_attrition_analysis.sql` | All SQL queries |
| `HR_Attrition_Dashboard.pbix` | Power BI dashboard |

## 📸 Dashboard Preview
![HR Attrition Dashboard](HR%20dashboard.png)
