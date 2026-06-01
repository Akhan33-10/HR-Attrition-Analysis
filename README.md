# 👥 HR Attrition Analysis Dashboard

## 📌 Project Overview
Analyzed 1,470 employee records to identify key attrition 
patterns and provide actionable retention recommendations 
using MySQL and Power BI with a custom dark blue theme.

---

## 🛠️ Tools & Technologies
| Tool | Purpose |
|------|---------|
| MySQL | Data storage & advanced SQL analysis |
| Power BI | Interactive dashboard |
| Excel | Data preparation |
| Custom JSON Theme | Professional dark blue branding |
| DAX | Calculated measures |

---

## 📊 Dataset
- 1,470 employees — 35 features
- IBM HR Analytics dataset from Kaggle
- Features include:
  - Department & Job Role
  - Salary & Overtime
  - Marital Status
  - Work Life Balance
  - Age & Experience

---

## 📊 Dashboard Pages

### Page 1 — Dashboard
- Total Employee KPI (1,470)
- Active Employees KPI (1,233)
- Total Attrition KPI (237)
- Attrition Rate KPI (16.12%)
- Avg Monthly Income KPI ($6.50K)
- Active vs Attrited Employees (Donut Chart)
- Attrition by Department (Bar Chart)
- Attrition by Marital Status (Bar Chart)
- Attrition by Job Role (Bar Chart)
- Interactive Slicer (Department)
- Custom HR Logo

### Page 2 — Key Insights
- Complete analysis summary
- Key findings
- Business recommendations
- Most at-risk employee profile

---

## 🔍 Key Findings

### 📊 Overview
- Overall attrition rate: **16.12%** (237 of 1,470)
- 1,233 employees actively retained

### 🏢 Department
| Department | Attrition Rate |
|------------|---------------|
| Sales | **0.21** — highest |
| Human Resources | 0.19 |
| Research & Development | **0.14** — lowest |

### 💍 Marital Status
| Status | Attrition Rate |
|--------|---------------|
| Single | **0.26** — highest |
| Divorced | 0.10 |
| Married | **0.12** — lowest |

### 👔 Job Role
| Role | Attrition Rate |
|------|---------------|
| Sales Representative | **0.40** — highest |
| Laboratory Technician | 0.24 |
| Human Resources | 0.23 |
| Research Director | **0.03** — lowest |

### 💰 Salary Impact
- Low salary employees leave at 28.61%
- Overtime employees leave at 30.53% vs 10.44%

### ⚖️ Work Life Balance
- Bad work life balance causes 31.25% attrition
Single + Low Salary + Overtime + Sales Role
= Highest probability of leaving!

---

## ✅ Business Recommendations

1. Reduce overtime — hire additional staff
2. Review salary for below $3K employees
3. Improve Sales team commission structure
4. Introduce flexible working hours
5. Focus retention on Sales department
6. Support single employees with work-life programs

---

## 💡 Advanced SQL Used
- CTEs (Common Table Expressions)
- RANK() Window Function
- CASE WHEN salary buckets
- Subqueries
- Attrition rate calculations per segment

---

## 🎨 Custom Theme
Professional dark blue Power BI theme:
- Background: #0F172A (dark navy)
- Primary: #2563EB (blue)
- Accent: #EF4444 (red for attrition)
- Text: #FFFFFF (white)

---

## 📁 Files
| File | Description |
|------|-------------|
| `hr_attrition_analysis.sql` | All SQL queries |
| `HR_Attrition_Dashboard.pbix` | Power BI dashboard |
| `hr_theme.json` | Custom dark blue theme |
| `HR_Attrition_Dashboard.png` | Dashboard screenshot |

---

## 📸 Dashboard Screenshot

### Page 1 — Dashboard
![HR Attrition Dashboard](HR_Attrition_dashboard.png)

---

## 📚 Skills Demonstrated
- SQL advanced analysis & window functions
- Attrition rate calculations
- Power BI dashboard design
- Custom theme creation
- DAX calculations
- HR domain knowledge
- Business insight generation
- Interactive visualizations

---

## 👤 Author
Anas Khan
HR Attrition Analysis — 2025
Tools: MySQL | Power BI | Excel
Certificate: Microsoft Power BI Data Analyst
