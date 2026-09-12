# RCM Dashboard - AR & Denial Analysis | Healthcare Revenue Cycle

**Analyzing $5.72M Accounts Receivable Balance with 56.07% Collection Rate**


 📊 Executive Summary
- **Total AR Balance:** $5.72M
- **AR Collection Rate:** 56.07%
- **Total Claims:** ~5K (2.78K No Denial = 55.56% clean claims)
- **Biggest Challenge:** 44.44% claims denied

 🏥 Key Insights

 1. Payer-wise AR Exposure (Highest Risk)
- Medicaid: $0.89M
- Humana: $0.87M
- Anthem BCBS: $0.81M
- Cigna: $0.81M
- Medicare: $0.80M

**Insight:** Medicaid & Humana hold 30% of total AR - prioritize follow-up.

2. Denial Analysis
- **No Denial:** 2.78K (55.56%) - Clean claims
- **CO-50:** 0.53K (10.6%) - Non-covered service - Needs eligibility check
- **CO-18:** 0.42K (8.48%) - Duplicate claim - Fix billing process
- **CO-96:** 0.42K (8.36%) - Non-covered charges
- **CO-97:** 0.33K (6.52%) - Benefit included in another service

Insight:** CO-50 is #1 denial - implement front-end eligibility verification to save $600K+.

 3. Collection Rate Issue
- Current: 56.07% vs Industry Best Practice: >90%
- Gap of 34% = $1.94M uncollected opportunity

 🛠️ Tools Used
- Excel - Data Cleaning (AR Aging, Denial Codes)
- MySQL - 6 Business Queries
- Power BI - RCM Dashboard with KPIs, Payer Analysis, Denial Breakdown

📁 Files
- `rcm_data_cleaned.csv` - Cleaned RCM dataset
- `rcm_analysis.sql` - SQL queries
- `rcm_dashboard.png` - Dashboard screenshot

💼 Business Impact
- Identified $1.7M+ AR concentrated in top 2 payers
- Flagged CO-50 denial root cause - recommend eligibility bot
- Roadmap to improve collection rate from 56% to 85%+ = $1.6M additional collection

📈 Dashboard Features
- KPI Cards: AR Balance, Collection Rate
- Donut Chart: Denial Code Distribution
- Bar Chart: AR by Payer
- Slicers: Year (2024, 2025)

---
**Author:** Sagar Pandya | Healthcare RCM Analyst | 
**Domain:** US Healthcare Revenue Cycle Management
**Seeking:** RCM Analyst / AR Analyst / Healthcare Data Analyst Roles
