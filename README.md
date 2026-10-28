<div align="center">

# 🛒 E-Commerce User Behaviour Analytics

**Diagnosing a conversion and retention crisis across 88,000 users — where the funnel breaks, why retention is near zero, and which segments drive disproportionate revenue.**

MySQL · Python · Power BI · pandas · seaborn

<br>

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![seaborn](https://img.shields.io/badge/seaborn-40B5A4?style=flat-square)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)

</div>

---

## 📌 Table of Contents

- [The Business Problem](#-the-business-problem)
- [Dashboard](#-dashboard)
- [Dataset](#-dataset)
- [Key Findings](#-key-findings)
- [Recommendations](#-recommendations)
- [Project Structure](#%EF%B8%8F-project-structure)
- [Technical Approach](#%EF%B8%8F-technical-approach)
- [Data Limitations](#-data-limitations)

## 🎯 The Business Problem

An e-commerce platform with **88,000+ monthly active users** and **$1.68M in revenue** is failing to convert browsers into buyers — and failing to bring buyers back for a second purchase.

This project investigates:

- **Where exactly the funnel breaks** and why
- **Which categories** represent the highest recovery opportunity
- **Why retention is near-zero** and how to fix it
- **Which customer segments** drive disproportionate revenue

## 📊 Dashboard

| Page | Focus |
| --- | --- |
| **Page 1 — Executive Summary** | High-level KPIs, revenue, and the headline problems |
| **Page 2 — Funnel & Pricing** | Session funnel breakdown and price elasticity |
| **Page 3 — Retention & RFM** | Cohort retention heatmap and RFM segment value |

<p align="center">
  <img src="dashboard/Page%201_%20Executive%20Summary/Executive%20summary(Page%201).png" width="90%">
</p>

🔗 **[Live Interactive Dashboard](#)** ← replace with your Power BI link

## 🗃️ Dataset

| Field | Detail |
| --- | --- |
| **Source** | Kaggle — eCommerce behavior data |
| **Period** | October–November 2019 |
| **Sample size** | 300,000 events (from 42M+ row dataset) |
| **Columns** | `event_time`, `event_type`, `product_id`, `category_code`, `brand`, `price`, `user_id`, `user_session` |
| **Event types** | `view`, `cart`, `purchase` |

## 🔍 Key Findings

### 1. 93.2% of sessions never add to cart

**101,061 of 108,456 sessions** end without a single cart addition. The bottleneck is at the **view stage — not checkout**. Cart-to-purchase behaviour is healthy, meaning users with buying intent follow through. **This is a discovery problem, not a checkout problem.**

### 2. Month-1 retention is 1.2% vs 8–15% industry benchmark

Only **28 of 2,434 October buyers** returned in November. The platform has no meaningful re-engagement mechanism. Fixing retention from 1.2% to 5% would compound revenue growth beyond what funnel optimisation alone can achieve.

### 3. Smartphone category — biggest single opportunity

**50,854 views, sub-2% CVR.** If this category reached median platform conversion, it would generate hundreds of additional purchases per month. High traffic + low conversion = recoverable revenue.

### 4. Champions generate 14.3% of revenue from 0.3% of users

**268 Champion users average $1,793 revenue each.** Loyal customers generate the highest total revenue ($1.038M) but Champions lead on per-user value. These two segments require completely different retention strategies.

## 💡 Recommendations

| Priority | Recommendation | Metric it moves | Effort |
| --- | --- | --- | --- |
| 1 | Add social proof + EMI options to smartphone category pages | View-to-cart CVR | Low |
| 2 | 3-email re-engagement sequence for Month-1 churned buyers | Month-1 retention | Medium |
| 3 | VIP programme for Champions segment | Champion retention rate | Low |
| 4 | Schedule promotions at 06:00 UTC (peak conversion hour) | Overall CVR | Low |
| 5 | SEO + marketing investment in Niche high-CVR categories | Traffic volume | High |

> 💰 **Revenue opportunity:** Targeting 2,434 Oct cohort buyers with a re-engagement campaign at 5% conversion = ~120 additional purchases × $300 AOV = **$36,000 recovered revenue from a single campaign.**

## 🗂️ Project Structure

```text
ecommerce-funnel-analytics/
├── sql_queries/
│   ├── Data exploration + quality checks.sql
│   ├── Funnel Analysis.sql
│   ├── Category Performance.sql
│   ├── Cohort Retention Analysis.sql
│   ├── RFM Segmentation.sql
│   └── Pf_DATAsetup.sql
├── python/
│   └── product_funnel_analysis.py
├── images/python_charts/
│   ├── 01_funnel_waterfall.png
│   ├── 02_cohort_retention_heatmap.png
│   ├── 03_category_quadrant.png
│   ├── 04_rfm_segments.png
│   ├── 05_hourly_conversion.png
│   ├── 06_price_elasticity.png
│   └── 07_cart_abandonment.png
├── dashboard/
│   ├── product_funnel.pbix            Power BI dashboard
│   ├── Page 1_ Executive Summary/     Screenshot + insights doc
│   ├── Page 2_ Funnel & Pricing/      Screenshot + insights doc
│   └── Page 3_ Retention & RFM/       Screenshot + insights doc
└── data/
    ├── ecommerce_combined.csv         Combined event data
    ├── m1–m4_*.csv                    Analysis outputs per module
    └── data_dictionary.md
```

## 🛠️ Technical Approach

### SQL (MySQL)

- Session-level funnel using **CTEs** and `CASE WHEN`
- Cohort retention with `TIMESTAMPDIFF` and `DATE_FORMAT`
- **RFM segmentation** using `NTILE` window functions
- Price elasticity via `NTILE` price-decile bucketing
- Category opportunity sizing with revenue-upside calculation
- Window functions: `ROW_NUMBER`, `LAG`, `PERCENT_RANK`

### Python

- **pandas** for data manipulation and sampling
- **matplotlib + seaborn** for 7 analytical charts:
  cohort heatmap · funnel waterfall · category quadrant scatter · RFM bubble chart · hourly conversion dual-axis · price elasticity curve · cart abandonment

### Power BI

- **3-page interactive dashboard**
- Live **DAX measures** responding to category, month, and price slicers
- Cohort retention matrix with conditional colour formatting
- Cross-filtering across all visuals from the events table

## ⚠️ Data Limitations

- Hourly analysis covers **UTC 00:00–07:00 only** due to sampling distribution. Peak at 06:00 UTC = 11:30 PM IST
- Cohort analysis limited to **Month-0 and Month-1 only** — dataset ends November 2019
- `cart_to_purchase_pct` excluded — sampling artifact caused purchase events to outnumber cart events
- 300K sample from 42M+ rows — findings are **directionally valid**; percentages may shift ±1–2% on the full dataset
- RFM scores based on a 2-month window vs the recommended 12 months

---

<div align="center">

⭐ **Star this repo if you find it useful** ⭐

</div>
