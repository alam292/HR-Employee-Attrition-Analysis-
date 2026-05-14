<div align="center">

<!-- Animated SVG Title -->
<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=38&duration=3000&pause=1000&color=E84393&center=true&vCenter=true&multiline=true&width=900&height=100&lines=HR+Employee+Attrition+Analysis" alt="Typing SVG" />

<br/>

<!-- Subtitle typing animation -->
<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=18&duration=4000&pause=1000&color=56C8F5&center=true&vCenter=true&width=700&lines=End-to-End+People+Analytics+%7C+SQL+%2B+Python+%2B+Power+BI;Uncover+Why+Employees+Leave+%F0%9F%94%8D;Data-Driven+HR+Decision+Making+%F0%9F%91%A5" alt="Subtitle SVG" />

<br/><br/>

<!-- Badges -->
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![CSV](https://img.shields.io/badge/Dataset-IBM%20HR-E84393?style=for-the-badge&logo=databricks&logoColor=white)

<br/>

> **1,470 employees · 35 features · 3 tools · 1 goal — predict & prevent attrition**

</div>

---

## 📌 Table of Contents

- [📖 Project Overview](#-project-overview)
- [🗂️ Dataset](#️-dataset)
- [🔄 Project Workflow](#-project-workflow)
- [🗃️ SQL Analysis](#️-sql-analysis-mysql)
- [🐍 Python Notebook](#-python-notebook-jupyter)
- [📊 Power BI Dashboard](#-power-bi-dashboard)
- [📁 Repository Structure](#-repository-structure)
- [🚀 Getting Started](#-getting-started)
- [💡 Key Insights](#-key-insights)

---

## 📖 Project Overview

This project performs a **comprehensive HR Attrition Analysis** using the IBM HR Analytics dataset. It answers the critical business question:

> *"Which employees are most likely to leave — and why?"*

The analysis spans three layers of the modern analytics stack:

| Layer | Tool | Purpose |
|-------|------|---------|
| 🗃️ Data Wrangling & Querying | **MySQL** | Explore, clean & aggregate raw HR data |
| 🐍 Exploratory Data Analysis | **Python / Jupyter** | Visualise distributions, correlations & patterns |
| 📊 Executive Reporting | **Power BI** | Interactive dashboard for HR decision-makers |

---

## 🗂️ Dataset

| Attribute | Detail |
|-----------|--------|
| **Source** | [IBM HR Analytics — Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) |
| **Rows** | 1,470 employees |
| **Columns** | 35 features |
| **Target Variable** | `Attrition` (Yes / No) |
| **Files** | `HR-Employee-Attrition.csv` · `HR_Employee_Attrition_clean.csv` |

### 🔑 Key Features

```
Age · Department · Education · EnvironmentSatisfaction
Gender · JobLevel · JobRole · JobSatisfaction
MonthlyIncome · NumCompaniesWorked · OverTime
PercentSalaryHike · TotalWorkingYears · WorkLifeBalance
YearsAtCompany · YearsInCurrentRole · YearsSinceLastPromotion
```

---

## 🔄 Project Workflow

```
┌─────────────────────────────────────────────────────────────────────┐
│                     HR ATTRITION ANALYSIS PIPELINE                  │
└─────────────────────────────────────────────────────────────────────┘

  📥 RAW DATA                  🔧 PROCESSING                📤 OUTPUT
  ──────────                   ──────────────               ──────────
  HR-Employee-Attrition.csv
         │
         ▼
  ┌─────────────┐         ┌──────────────────┐        ┌─────────────┐
  │  STEP  1    │         │    STEP  2        │        │   STEP  3   │
  │             │         │                  │        │             │
  │  Data       │ ──────► │  SQL Analysis    │──────► │  Python EDA │
  │  Cleaning   │         │  (MySQL)         │        │  (Jupyter)  │
  │             │         │                  │        │             │
  │ • Remove    │         │ • 25 queries     │        │ • Charts    │
  │   nulls     │         │ • Aggregations   │        │ • Heatmaps  │
  │ • Fix types │         │ • Window funcs   │        │ • Feature   │
  │ • Rename    │         │ • Risk scoring   │        │   analysis  │
  └─────────────┘         └──────────────────┘        └──────┬──────┘
         │                                                    │
         │                                                    ▼
         │                                           ┌─────────────────┐
         │                                           │    STEP  4      │
         └──────────────────────────────────────────►│                 │
                                                     │  Power BI       │
                                                     │  Dashboard      │
                                                     │                 │
                                                     │ • KPI cards     │
                                                     │ • Dept. view    │
                                                     │ • Drill-through │
                                                     └─────────────────┘
```

---

## 🗃️ SQL Analysis (MySQL)

All 25 analytical queries are in **`HR_Employees.sql`**

### 🟢 Basic Queries (Q1 – Q10)

| # | Question | Concept |
|---|----------|---------|
| 1 | Display first 10 rows | `LIMIT` |
| 2 | Total employee count | `COUNT(*)` |
| 3 | List unique departments | `DISTINCT` |
| 4 | Attrition count breakdown | `GROUP BY` |
| 5 | Employees working overtime | `WHERE` filter |
| 6 | Average monthly income | `AVG()` |
| 7 | Employees with NULL companies worked | `IS NULL` |
| 8 | Employee with max monthly income | Subquery |
| 9 | Employee count by gender | `GROUP BY` |
| 10 | Newly joined employees (0 years) | `WHERE` filter |

### 🟡 Intermediate Queries (Q11 – Q20)

| # | Question | Concept |
|---|----------|---------|
| 11 | Attrition rate % by department | `CASE WHEN` + `ROUND()` |
| 12 | Top 10 by total working years | `ORDER BY DESC` + `LIMIT` |
| 13 | Tenure category buckets | `CASE WHEN` |
| 14 | Avg income by job level & attrition | Multi-column `GROUP BY` |
| 15 | Top 5 roles with most leavers | Aggregation + `LIMIT` |
| 16 | Left within first year | Conditional filter |
| 17 | Median monthly income | `PERCENTILE_CONT` / subquery |
| 18 | New compensation after hike | Arithmetic expression |
| 19 | Overtime × attrition count | Cross-grouping |
| 20 | Top 10 most trained employees | `ORDER BY` training count |

### 🔴 Advanced Queries (Q21 – Q25)

| # | Question | Concept |
|---|----------|---------|
| 21 | Rank employees by experience | `RANK()` window function |
| 22 | Top 25% earners per department | `NTILE(4)` / `PERCENTILE` |
| 23 | Attrition rate by income decile | `NTILE(10)` |
| 24 | Top 50 high-risk employees | Composite risk score |
| 25 | Department + job level summary view | `CREATE VIEW` |

<details>
<summary>📋 Click to see Sample Query — Attrition Rate by Department</summary>

```sql
SELECT
    Department,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr
GROUP BY Department;
```

</details>

<details>
<summary>📋 Click to see Sample Query — Top 50 High-Risk Employees</summary>

```sql
SELECT
    EmployeeNumber,
    (
        CASE WHEN YearsAtCompany < 2 THEN 3
             WHEN YearsAtCompany BETWEEN 2 AND 5 THEN 2
             ELSE 1 END
      + CASE WHEN PerformanceRating < 3 THEN 3 ELSE 1 END
      + CASE WHEN OverTime = 'Yes' THEN 3 ELSE 1 END
      + CASE WHEN WorkLifeBalance < 2 THEN 3 ELSE 1 END
    ) AS RiskScore
FROM hr
ORDER BY RiskScore DESC
LIMIT 50;
```

</details>

---

## 🐍 Python Notebook (Jupyter)

**File:** `HR_Employees.ipynb`

The notebook covers the full EDA lifecycle:

- ✅ Data loading & shape inspection  
- ✅ Missing value treatment  
- ✅ Distribution plots (age, income, tenure)  
- ✅ Correlation heatmap  
- ✅ Attrition breakdown by department, role, gender  
- ✅ Overtime & work-life balance impact  
- ✅ Feature importance (optional ML layer)  

```bash
# Run the notebook
jupyter notebook HR_Employees.ipynb
```

---

## 📊 Power BI Dashboard

**File:** `hr_employees.pbix`

The dashboard includes:

- 🔢 **KPI Cards** — Total employees, attrition count, attrition rate %
- 🏢 **Department View** — Attrition by Sales, R&D, HR
- 💰 **Income Analysis** — Monthly income distribution by role & level
- ⏱️ **Tenure Analysis** — Years at company vs. attrition
- 🔍 **Drill-through** — Employee-level detail on click
- 🔄 **Slicers** — Filter by department, gender, overtime, job level

---

## 📁 Repository Structure

```
📦 HR-Employee-Attrition-Analysis
├── 📄 HR-Employee-Attrition.csv          # Raw dataset
├── 📄 HR_Employee_Attrition_clean.csv    # Cleaned dataset
├── 🗃️ HR_Employees.sql                   # 25 MySQL queries
├── 🐍 HR_Employees.ipynb                 # Jupyter EDA notebook
├── 📊 hr_employees.pbix                  # Power BI dashboard
└── 📖 README.md                          # This file
```

---

## 🚀 Getting Started

### Prerequisites

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### MySQL Setup

```sql
CREATE DATABASE employees;
USE employees;

-- Import HR_Employee_Attrition_clean.csv via Table Data Import Wizard
-- Then run HR_Employees.sql
```

### Run Python EDA

```bash
jupyter notebook HR_Employees.ipynb
```

### Open Power BI Dashboard

Open `hr_employees.pbix` in **Power BI Desktop** (free download from Microsoft).

---

## 💡 Key Insights

| Finding | Detail |
|---------|--------|
| 📉 **Overall Attrition Rate** | ~16% of employees left |
| 🏢 **Highest Attrition Dept** | Sales department leads in turnover |
| ⏰ **Overtime Impact** | Overtime employees are significantly more likely to leave |
| 💸 **Income Gap** | Leavers earn noticeably lower average monthly income |
| 📅 **Critical Tenure Window** | Most attrition occurs within the first 1–3 years |
| ⚖️ **Work-Life Balance** | Poor work-life balance is a top attrition driver |

---

<div align="center">

---

### 🌟 If this project helped you, please give it a star!

[![Star History](https://img.shields.io/github/stars/yourusername/HR-Employee-Attrition?style=social)](https://github.com/yourusername/HR-Employee-Attrition)

**Made with ❤️ using MySQL · Python · Power BI**

</div>
