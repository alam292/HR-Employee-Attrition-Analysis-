<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1B2A,50:E84393,100:56C8F5&height=200&section=header&text=HR%20Employee%20Attrition%20Analysis&fontSize=38&fontColor=ffffff&fontAlignY=38&desc=End-to-End%20People%20Analytics%20%7C%20MySQL%20%C2%B7%20Python%20%C2%B7%20Power%20BI&descAlignY=58&descSize=16&animation=fadeIn" />

<br/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=700&size=22&pause=1000&color=E84393&center=true&vCenter=true&width=700&lines=Why+do+employees+leave%3F+%F0%9F%94%8D;Predicting+Attrition+with+Data+%F0%9F%93%8A;SQL+%2B+Python+%2B+Power+BI+%F0%9F%9A%80;IBM+HR+Analytics+%7C+1%2C470+Employees" alt="Typing SVG" />

<br/><br/>

<img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Python-3.11-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
<img src="https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white"/>
<img src="https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
<img src="https://img.shields.io/badge/IBM-HR%20Analytics-E84393?style=for-the-badge&logo=ibm&logoColor=white"/>

<br/><br/>

<img src="https://img.shields.io/badge/Employees-1%2C470-0D1B2A?style=flat-square"/>
<img src="https://img.shields.io/badge/Features-35-E84393?style=flat-square"/>
<img src="https://img.shields.io/badge/SQL%20Queries-25-56C8F5?style=flat-square"/>
<img src="https://img.shields.io/badge/Attrition%20Rate-16.1%25-E53E3E?style=flat-square"/>

</div>

---

## 📌 Table of Contents

- [📖 Project Overview](#-project-overview)
- [🗂️ Dataset](#️-dataset)
- [🔄 Project Workflow](#-project-workflow)
- [🗃️ SQL Analysis](#️-sql-analysis)
- [🐍 Python EDA](#-python-eda)
- [📊 Power BI Dashboard](#-power-bi-dashboard)
- [💡 Key Insights](#-key-insights)
- [📁 Repository Structure](#-repository-structure)
- [🚀 Getting Started](#-getting-started)

---

## 📖 Project Overview

<img align="right" width="300" src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExcWJ0bDRiZXNxeGtjaHJvdmk3Z3VhNnZ6dHZwdnZ0bWtiaTcyMXk5biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/qgQUggAC3Pfv687qPC/giphy.gif"/>

This project performs a **comprehensive HR Attrition Analysis** on the IBM HR Analytics dataset to uncover *why employees leave* and *who is most at risk* of leaving.

### 🎯 Business Problem
> *"Which employees are most likely to leave — and what can we do about it?"*

Employee turnover is expensive. Replacing one employee costs **50–200% of their annual salary**. With a 16.1% attrition rate across 1,470 employees, this company faces an estimated **$13.9M in annual replacement costs**.

### 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| **MySQL 8.0** | Data cleaning, querying, window functions, risk scoring |
| **Python + Jupyter** | EDA, visualisations, correlation analysis |
| **Power BI** | Interactive executive dashboard |

---

## 🗂️ Dataset

| Attribute | Detail |
|-----------|--------|
| **Dataset** | IBM HR Analytics — Employee Attrition & Performance |
| **Records** | 1,470 employees |
| **Features** | 35 columns |
| **Target** | `Attrition` (Yes / No) |
| **Raw File** | `HR-Employee-Attrition.csv` |
| **Clean File** | `HR_Employee_Attrition_clean.csv` |

### 🔑 Key Features

```
Demographics  →  Age · Gender · MaritalStatus · Education
Job Info      →  Department · JobRole · JobLevel · OverTime
Compensation  →  MonthlyIncome · DailyRate · PercentSalaryHike
Satisfaction  →  JobSatisfaction · WorkLifeBalance · EnvironmentSatisfaction
Tenure        →  YearsAtCompany · TotalWorkingYears · YearsSinceLastPromotion
```

---

## 🔄 Project Workflow

```
┌──────────────────────────────────────────────────────────────────┐
│                 HR ATTRITION ANALYSIS PIPELINE                   │
└──────────────────────────────────────────────────────────────────┘

   📥 INPUT              🔧 PROCESS              📤 OUTPUT
   ────────              ──────────              ────────

   Raw CSV ──► [STEP 1] Data Cleaning ──────────────────────┐
                │  • Remove nulls                            │
                │  • Fix types & rename                      │
                ▼                                            │
              [STEP 2] SQL Analysis (MySQL)                  │
                │  • 25 structured queries                   │
                │  • Window functions                        │
                │  • Risk scoring                            │
                ▼                                            │
              [STEP 3] Python EDA (Jupyter)                  │
                │  • Distribution plots                      │
                │  • Correlation heatmap                     │
                │  • Attrition breakdown                     │
                ▼                                            │
              [STEP 4] Power BI Dashboard ◄──────────────────┘
                  • KPI cards
                  • Dept. drill-through
                  • Interactive slicers
```

---

## 🗃️ SQL Analysis

> 📄 File: `HR_Employees.sql` — **25 Analytical Queries**

<details>
<summary>🟢 <b>Basic Queries (Q1–Q10)</b> — Click to expand</summary>

| # | Question | Concept |
|---|----------|---------|
| Q1 | Display first 10 rows | `LIMIT` |
| Q2 | Total employee count | `COUNT(*)` |
| Q3 | List unique departments | `DISTINCT` |
| Q4 | Attrition count breakdown | `GROUP BY` |
| Q5 | Employees working overtime | `WHERE` |
| Q6 | Average monthly income | `AVG()` |
| Q7 | NULL companies worked | `IS NULL` |
| Q8 | Max monthly income employee | Subquery |
| Q9 | Employee count by gender | `GROUP BY` |
| Q10 | Newly joined employees | `WHERE` |

</details>

<details>
<summary>🟡 <b>Intermediate Queries (Q11–Q20)</b> — Click to expand</summary>

| # | Question | Concept |
|---|----------|---------|
| Q11 | Attrition rate % by department | `CASE WHEN` + `ROUND()` |
| Q12 | Top 10 by working years | `ORDER BY DESC` + `LIMIT` |
| Q13 | Tenure category buckets | `CASE WHEN` |
| Q14 | Avg income by job level & attrition | Multi-column `GROUP BY` |
| Q15 | Top 5 roles with most leavers | Aggregation + `LIMIT` |
| Q16 | Left within first year | Conditional filter |
| Q17 | Median monthly income | Subquery |
| Q18 | New compensation after hike | Arithmetic |
| Q19 | Overtime × attrition count | Cross-grouping |
| Q20 | Top 10 most trained employees | `ORDER BY` |

</details>

<details>
<summary>🔴 <b>Advanced Queries (Q21–Q25)</b> — Click to expand</summary>

| # | Question | Concept |
|---|----------|---------|
| Q21 | Rank employees by experience | `RANK()` window function |
| Q22 | Top 25% earners per department | `NTILE(4)` |
| Q23 | Attrition rate by income decile | `NTILE(10)` |
| Q24 | Top 50 high-risk employees | Composite risk score |
| Q25 | Dept + job level summary view | `CREATE VIEW` |

</details>

<details>
<summary>📋 <b>Sample Query — Attrition Rate by Department</b></summary>

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
<summary>📋 <b>Sample Query — Top 50 High-Risk Employees</b></summary>

```sql
SELECT EmployeeNumber,
    (
        CASE WHEN YearsAtCompany < 2         THEN 3
             WHEN YearsAtCompany BETWEEN 2 AND 5 THEN 2 ELSE 1 END
      + CASE WHEN PerformanceRating < 3       THEN 3 ELSE 1 END
      + CASE WHEN OverTime = 'Yes'            THEN 3 ELSE 1 END
      + CASE WHEN WorkLifeBalance < 2         THEN 3 ELSE 1 END
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
print(df.shape)          # (1470, 35)
print(df['Attrition'].value_counts())
# No     1233
# Yes     237
```

**EDA Sections:**

- ✅ Data loading & shape inspection
- ✅ Missing value treatment
- ✅ Age, income & tenure distributions
- ✅ Correlation heatmap
- ✅ Attrition by department, role & gender
- ✅ Overtime & work-life balance impact
- ✅ Feature importance (optional ML layer)

---

## 📊 Power BI Dashboard

> 📄 File: `hr_employees.pbix`

| Visual | Description |
|--------|-------------|
| 🔢 **KPI Cards** | Total employees · Attrition count · Attrition rate % |
| 🏢 **Department View** | Sales · R&D · HR attrition comparison |
| 💰 **Income Analysis** | Monthly income by role & job level |
| ⏱️ **Tenure Analysis** | Years at company vs. attrition trend |
| 🔍 **Drill-through** | Employee-level detail on click |
| 🔄 **Slicers** | Department · Gender · OverTime · JobLevel |

---

## 💡 Key Insights

<div align="center">

| # | 🔍 Finding | 📊 Detail |
|---|-----------|----------|
| 1 | 📉 **Attrition Rate** | **16.1%** — above the 10–15% healthy benchmark |
| 2 | 🏢 **Highest Risk Dept** | **Sales** leads in turnover across all departments |
| 3 | ⏰ **Overtime Effect** | Overtime employees are **~2× more likely** to leave |
| 4 | 💸 **Income Gap** | Leavers earn noticeably **lower average income** |
| 5 | 📅 **Critical Window** | Most exits happen in the **first 1–3 years** |
| 6 | ⚖️ **Work-Life Balance** | Score of 1 (poor) = **highest attrition risk** |

</div>

---

## 📁 Repository Structure

```
📦 HR-Employee-Attrition-Analysis
│
├── 📄 HR-Employee-Attrition.csv           ← Raw IBM HR dataset
├── 📄 HR_Employee_Attrition_clean.csv     ← Cleaned dataset
├── 🗃️  HR_Employees.sql                   ← 25 MySQL analytical queries
├── 🐍 HR_Employees.ipynb                  ← Jupyter EDA notebook
├── 📊 hr_employees.pbix                   ← Power BI dashboard
└── 📖 README.md                           ← You are here
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

-- Import HR_Employee_Attrition_clean.csv via
-- Server → Table Data Import Wizard in MySQL Workbench

-- Then run all 25 queries:
SOURCE HR_Employees.sql;
```

### 4️⃣ Power BI Dashboard
```
1. Open hr_employees.pbix in Power BI Desktop
2. Update data source path if prompted
3. Click Refresh → all visuals populate
```

> 💡 Download Power BI Desktop free at [powerbi.microsoft.com](https://powerbi.microsoft.com/desktop)

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:56C8F5,50:E84393,100:0D1B2A&height=120&section=footer"/>

**Made with ❤️ using MySQL · Python · Power BI**

⭐ If this project helped you, give it a star!

[![GitHub stars](https://img.shields.io/github/stars/yourusername/HR-Employee-Attrition-Analysis?style=social)](https://github.com/yourusername/HR-Employee-Attrition-Analysis)

</div>
