<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1B2A,50:E84393,100:56C8F5&height=220&section=header&text=HR%20Employee%20Attrition%20Analysis&fontSize=40&fontColor=ffffff&fontAlignY=38&desc=End-to-End%20People%20Analytics%20%7C%20MySQL%20%C2%B7%20Python%20%C2%B7%20Power%20BI&descAlignY=60&descSize=16&animation=fadeIn" />

<br/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=E84393&center=true&vCenter=true&width=750&lines=Why+Do+Employees+Leave%3F+%F0%9F%94%8D;Predicting+Attrition+with+Real+HR+Data+%F0%9F%93%8A;6+Interactive+Power+BI+Dashboard+Pages+%F0%9F%9A%80;SQL+%2B+Python+%2B+Power+BI+End-to-End+Project" alt="Typing SVG" />

<br/><br/>

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![IBM HR](https://img.shields.io/badge/IBM-HR%20Analytics-E84393?style=for-the-badge&logo=ibm&logoColor=white)

<br/>

![Employees](https://img.shields.io/badge/Employees-1%2C470-0D1B2A?style=flat-square&logoColor=white)
![Attrition](https://img.shields.io/badge/Attrition%20Rate-16.12%25-E53E3E?style=flat-square)
![Features](https://img.shields.io/badge/Features-35-E84393?style=flat-square)
![Dashboards](https://img.shields.io/badge/Dashboard%20Pages-6-56C8F5?style=flat-square)
![SQL](https://img.shields.io/badge/SQL%20Queries-25-38A169?style=flat-square)

</div>

---

## 👤 Author

<div align="center">

| | |
|---|---|
| **Name** | Md Matloob Alam |
| **Project** | HR Employee Attrition Analysis |
| **Tools** | MySQL · Python · Jupyter · Power BI |
| **Dataset** | IBM HR Analytics — Employee Attrition & Performance |

[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=for-the-badge&logo=github)](https://github.com/yourusername)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/yourusername)

</div>

---

## 📌 Table of Contents

- [📖 Project Overview](#-project-overview)
- [🗂️ Dataset](#️-dataset)
- [🔄 Project Workflow](#-project-workflow)
- [📊 Power BI Dashboard](#-power-bi-dashboard---all-6-pages)
- [🗃️ SQL Analysis](#️-sql-analysis)
- [🐍 Python EDA](#-python-eda)
- [💡 Key Insights](#-key-insights)
- [📁 Repository Structure](#-repository-structure)
- [🚀 Getting Started](#-getting-started)

---

## 📖 Project Overview

This project delivers a **comprehensive end-to-end HR Attrition Analysis** on the IBM HR Analytics dataset, built by **Md Matloob Alam**.

> 🎯 *"Which employees are most likely to leave — and what can we do about it?"*

Employee turnover is expensive. Replacing one employee costs **50–200% of their annual salary**. With a **16.12% attrition rate** across 1,470 employees, this organisation faces an estimated **$13.9M+ in annual replacement costs**.

### 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| **MySQL** | 8.0 | Data cleaning, 25 analytical queries, risk scoring |
| **Python** | 3.11 | EDA, visualisations, correlation analysis |
| **Jupyter Notebook** | Latest | Interactive analysis environment |
| **Power BI** | Latest | 6-page interactive executive dashboard |

---

## 🗂️ Dataset

| Attribute | Detail |
|-----------|--------|
| **Dataset** | IBM HR Analytics — Employee Attrition & Performance |
| **Total Records** | 1,470 employees |
| **Total Features** | 35 columns |
| **Target Variable** | `Attrition` — Yes (237) / No (1,233) |
| **Attrition Rate** | **16.12%** |
| **Avg Monthly Income** | **$6.50K** |
| **Avg Experience** | **11.28 years** |

### 🔑 Key Feature Groups

```
Demographics  →  Age (Avg: 36.92) · Gender · MaritalStatus · Education
Job Info      →  Department · JobRole · JobLevel · OverTime (28.30%)
Compensation  →  MonthlyIncome · DailyRate · PercentSalaryHike (Avg: 15.21%)
Satisfaction  →  JobSatisfaction · WorkLifeBalance (Avg: 2.76) · EnvironmentSatisfaction
Tenure        →  YearsAtCompany · TotalWorkingYears · YearsSinceLastPromotion
```

---

## 🔄 Project Workflow

```
╔══════════════════════════════════════════════════════════════════════╗
║              HR ATTRITION ANALYSIS — STEP BY STEP PIPELINE          ║
╚══════════════════════════════════════════════════════════════════════╝

  ┌─────────────────────────────────────────────────────────────────┐
  │  📥  STEP 1 — DATA COLLECTION                                   │
  │                                                                 │
  │   Raw CSV (HR-Employee-Attrition.csv)                           │
  │   • 1,470 rows  •  35 columns  •  IBM HR Analytics Dataset      │
  └──────────────────────────┬──────────────────────────────────────┘
                             │
                             ▼
  ┌─────────────────────────────────────────────────────────────────┐
  │  🧹  STEP 2 — DATA CLEANING (MySQL)                             │
  │                                                                 │
  │   • CREATE DATABASE employees                                   │
  │   • RENAME table → hr                                           │
  │   • DROP unknown columns (MyUnknownColumn)                      │
  │   • Handle NULL values in NumCompaniesWorked                    │
  │   • Validate data types & consistency                           │
  └──────────────────────────┬──────────────────────────────────────┘
                             │
                             ▼
  ┌─────────────────────────────────────────────────────────────────┐
  │  🗃️   STEP 3 — SQL ANALYSIS (25 Queries)                        │
  │                                                                 │
  │   🟢 Basic    (Q1–Q10)  →  Filtering, aggregation, NULL checks  │
  │   🟡 Medium   (Q11–Q20) →  CASE WHEN, attrition %, tenure bands │
  │   🔴 Advanced (Q21–Q25) →  RANK(), NTILE(), VIEW, risk scoring  │
  └──────────────────────────┬──────────────────────────────────────┘
                             │
                             ▼
  ┌─────────────────────────────────────────────────────────────────┐
  │  🐍  STEP 4 — PYTHON EDA (Jupyter Notebook)                     │
  │                                                                 │
  │   • Load cleaned CSV → pandas DataFrame                         │
  │   • Missing value treatment                                     │
  │   • Distribution plots (Age, Income, Tenure)                    │
  │   • Correlation heatmap (35 features)                           │
  │   • Attrition breakdown by Dept, Role, Gender, OverTime         │
  │   • Feature importance analysis                                 │
  └──────────────────────────┬──────────────────────────────────────┘
                             │
                             ▼
  ┌─────────────────────────────────────────────────────────────────┐
  │  📊  STEP 5 — POWER BI DASHBOARD (6 Pages)                      │
  │                                                                 │
  │   Page 1  →  Overview Dashboard                                 │
  │   Page 2  →  Salary & Compensation Insights                     │
  │   Page 3  →  Advanced HR Insights (Key Influencers)             │
  │   Page 4  →  Attrition Risk & Predictive Insights               │
  │   Page 5  →  Satisfaction & Work Environment                    │
  │   Page 6  →  Employee Demographics                              │
  └─────────────────────────────────────────────────────────────────┘
```

---

## 📊 Power BI Dashboard — All 6 Pages

> 📄 File: `hr_employees.pbix` — Built by **Md Matloob Alam**

---

### 🖥️ Page 1 — Overview Dashboard
> *Workforce Overview & Employee Attrition Insights*

![Overview Dashboard](screenshots/01_overview_dashboard.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Total Employees | **1,470** |
| Employees Left | **237** |
| Employees Stayed | **1,233** |
| Attrition Rate | **16.12%** |
| Avg Experience | **11.28 years** |
| Avg Monthly Income | **$6.50K** |

**Visuals:** Sum of DailyRate by JobRole & OverTime · Monthly Income scatter by YearsAtCompany · Attrition by Department (stacked bar) · Attrition by Gender (donut) · EducationField matrix table · Slicers: Age, Attrition, Gender, JobRole, MaritalStatus, Education

---

### 🖥️ Page 2 — Salary & Compensation Insights
> *Income, Salary Hike & Compensation Analysis*

![Salary & Compensation](screenshots/02_salary_compensation.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Avg Monthly Income | **$6.50K** |
| Max Salary | **$20K** |
| Min Salary | **$1,009** |
| Avg Salary Hike | **15.21%** |

**Visuals:** Attrition by Salary Slab (Low/Medium/High/Executive) · Avg Income by Department · Income vs Salary Hike combo chart · Avg Income by JobRole treemap

---

### 🖥️ Page 3 — Advanced HR Insights
> *Predictive Workforce Analytics & Strategic HR Recommendations*

![Advanced HR Insights](screenshots/03_advanced_hr_insights.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Promotion Due | **260** |
| Avg Training | **2.80** |
| Avg Promotion Years | **2.19** |

**Visuals:** AI Key Influencers visual (Monthly Income ≤ $2,800 = 2.60× more likely to leave · Business Travel_Frequently = 1.77×) · Attrition Employees & Avg JobSatisfaction by YearsSinceLastPromotion · Narrative text insights panel

---

### 🖥️ Page 4 — Attrition Risk & Predictive Insights
> *High-Risk Employee Detection & Attrition Driver Analysis*

![Attrition Risk](screenshots/04_attrition_risk.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Avg Years Before Leaving | **5.13** |
| Avg WorkLife Balance | **2.76** |
| Overtime Employees | **28.30%** |

**Visuals:** Attrition Drivers Decomposition Tree (Department → JobRole → OverTime → WorkLifeBalance) · Attrition Employees by Risk Level & Department matrix · Slicers: OverTime, WorkLifeBalance

---

### 🖥️ Page 5 — Satisfaction & Work Environment
> *Employee Satisfaction, Work-Life Balance & Retention Insights*

![Satisfaction & Work Environment](screenshots/05_satisfaction_work_env.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Overtime Employees | **28.30%** |
| Avg Work-Life Balance | **2.76** |

**Visuals:** Total Employees vs WorkLifeBalance donut · Attrition by JobSatisfaction (grouped bar) · Avg WorkLife Balance & Attrition by RelationshipSatisfaction · Environment Satisfaction matrix by Department & Gender

---

### 🖥️ Page 6 — Employee Demographics
> *Gender, Age, Education & Workforce Diversity Insights*

![Employee Demographics](screenshots/07_employee_demographics.png)

**KPIs Displayed:**
| Metric | Value |
|--------|-------|
| Attrition Rate | **16.12%** |
| Avg Education Level | **2.91** |
| Average Age | **36.92** |

**Visuals:** Attrition by Gender donut (Male 60% · Female 40%) · Attrition Employees by Age Group & Attrition (bar) · Total Employees by Department & Gender (100% stacked) · Total by EducationField treemap · Demographics matrix with attrition rates by Dept & Gender

---

## 🗃️ SQL Analysis

> 📄 File: `HR_Employees.sql` — **25 Queries by Md Matloob Alam**

<details>
<summary>🟢 <b>Basic Queries (Q1–Q10)</b></summary>

| # | Business Question | SQL Concept |
|---|------------------|-------------|
| Q1 | Display first 10 rows | `LIMIT` |
| Q2 | Total employee count | `COUNT(*)` |
| Q3 | List unique departments | `DISTINCT` |
| Q4 | Attrition count breakdown | `GROUP BY` |
| Q5 | Employees working overtime | `WHERE` filter |
| Q6 | Average monthly income | `AVG()` |
| Q7 | NULL companies worked | `IS NULL` |
| Q8 | Max monthly income employee | Subquery |
| Q9 | Employee count by gender | `GROUP BY` |
| Q10 | Newly joined (0 years) | `WHERE` filter |

</details>

<details>
<summary>🟡 <b>Intermediate Queries (Q11–Q20)</b></summary>

| # | Business Question | SQL Concept |
|---|------------------|-------------|
| Q11 | Attrition rate % by department | `CASE WHEN` + `ROUND()` |
| Q12 | Top 10 by total working years | `ORDER BY DESC` + `LIMIT` |
| Q13 | Tenure category buckets | `CASE WHEN` |
| Q14 | Avg income by job level & attrition | Multi-column `GROUP BY` |
| Q15 | Top 5 roles with most leavers | Aggregation + `LIMIT` |
| Q16 | Left within first year | Conditional filter |
| Q17 | Median monthly income | Subquery |
| Q18 | New compensation after hike | Arithmetic expression |
| Q19 | Overtime × attrition count | Cross-grouping |
| Q20 | Top 10 most trained employees | `ORDER BY` |

</details>

<details>
<summary>🔴 <b>Advanced Queries (Q21–Q25)</b></summary>

| # | Business Question | SQL Concept |
|---|------------------|-------------|
| Q21 | Rank employees by experience | `RANK()` window function |
| Q22 | Top 25% earners per department | `NTILE(4)` |
| Q23 | Attrition rate by income decile | `NTILE(10)` |
| Q24 | Top 50 high-risk employees | Composite risk score |
| Q25 | Department + job level summary | `CREATE VIEW` |

</details>

<details>
<summary>📋 <b>Sample — Attrition Rate by Department</b></summary>

```sql
SELECT
    Department,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr
GROUP BY Department
ORDER BY Attrition_Rate DESC;
```

</details>

<details>
<summary>📋 <b>Sample — Top 50 High-Risk Employees (Risk Score)</b></summary>

```sql
SELECT EmployeeNumber,
    (
        CASE WHEN YearsAtCompany < 2            THEN 3
             WHEN YearsAtCompany BETWEEN 2 AND 5 THEN 2 ELSE 1 END
      + CASE WHEN PerformanceRating < 3          THEN 3 ELSE 1 END
      + CASE WHEN OverTime = 'Yes'               THEN 3 ELSE 1 END
      + CASE WHEN WorkLifeBalance < 2            THEN 3 ELSE 1 END
    ) AS RiskScore
FROM hr
ORDER BY RiskScore DESC
LIMIT 50;
```

</details>

---

## 🐍 Python EDA

> 📄 File: `HR_Employees.ipynb`

```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

df = pd.read_csv('HR_Employee_Attrition_clean.csv')
print(df.shape)                        # (1470, 35)
print(df['Attrition'].value_counts())  # No: 1233 | Yes: 237

attrition_rate = df['Attrition'].map({'Yes':1,'No':0}).mean() * 100
print(f"Attrition Rate: {attrition_rate:.2f}%")  # 16.12%
```

**EDA Coverage:**
- ✅ Data loading, shape inspection & dtype check
- ✅ Missing value detection & treatment
- ✅ Age, income & tenure distributions
- ✅ Correlation heatmap (35 features)
- ✅ Attrition breakdown — Department, Gender, JobRole, OverTime
- ✅ Work-Life Balance & Satisfaction impact
- ✅ Feature importance (optional ML layer)

---

## 💡 Key Insights

<div align="center">

| # | Finding | Detail |
|---|---------|--------|
| 1 | 📉 **Attrition Rate** | **16.12%** — 237 of 1,470 left (above 10–15% benchmark) |
| 2 | 🏢 **Highest Risk Dept** | **Sales** — highest attrition rate among all 3 departments |
| 3 | ⏰ **Overtime Impact** | Employees on overtime are **~2.60× more likely** to leave |
| 4 | 💸 **Income Threshold** | Monthly income ≤ **$2,800** increases attrition likelihood 2.60× |
| 5 | 🌍 **Travel Risk** | Frequent business travel increases attrition **1.77×** |
| 6 | 📅 **Critical Window** | Most exits happen in the **first 1–3 years** of tenure |
| 7 | ⚖️ **Work-Life Balance** | Score of **1 (poor)** = highest attrition risk |
| 8 | 🎓 **Life Sciences** | Largest education group — **606 employees (41.2%)** |

</div>

---

## 📁 Repository Structure

```
📦 HR-Employee-Attrition-Analysis
│   Author: Md Matloob Alam
│
├── 📄 HR-Employee-Attrition.csv            ← Raw IBM HR dataset
├── 📄 HR_Employee_Attrition_clean.csv      ← Cleaned dataset
├── 🗃️  HR_Employees.sql                    ← 25 MySQL queries
├── 🐍 HR_Employees.ipynb                   ← Jupyter EDA notebook
├── 📊 hr_employees.pbix                    ← Power BI dashboard (6 pages)
├── 📖 README.md                            ← Project documentation
│
└── 📁 screenshots/
    ├── 01_overview_dashboard.png
    ├── 02_salary_compensation.png
    ├── 03_advanced_hr_insights.png
    ├── 04_attrition_risk.png
    ├── 05_satisfaction_work_env.png
    ├── 06_overview_dashboard2.png
    └── 07_employee_demographics.png
```

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/yourusername/HR-Employee-Attrition-Analysis.git
cd HR-Employee-Attrition-Analysis
```

### 2️⃣ Python Setup
```bash
pip install pandas numpy matplotlib seaborn jupyter
jupyter notebook HR_Employees.ipynb
```

### 3️⃣ MySQL Setup
```sql
CREATE DATABASE employees;
USE employees;

-- Import HR_Employee_Attrition_clean.csv via:
-- MySQL Workbench → Server → Table Data Import Wizard

-- Run all 25 queries:
SOURCE HR_Employees.sql;
```

### 4️⃣ Power BI Dashboard
```
1. Open hr_employees.pbix in Power BI Desktop
2. Update data source path if prompted
3. Click Refresh → all 6 dashboard pages populate
4. Use slicers to filter by Department, Gender, OverTime, JobRole
```

> 💡 Download Power BI Desktop free at [powerbi.microsoft.com](https://powerbi.microsoft.com/desktop)

---

<div align="center">

## 🤝 Connect with the Author

**Md Matloob Alam**

[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/yourusername)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/yourusername)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:your@email.com)

---

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:56C8F5,50:E84393,100:0D1B2A&height=130&section=footer&text=Made%20with%20%E2%9D%A4%EF%B8%8F%20by%20Md%20Matloob%20Alam&fontSize=18&fontColor=ffffff&fontAlignY=65"/>

⭐ **If this project helped you, please give it a star!**

</div>
