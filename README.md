# Sunrise Coffee Chain Analytics

An OnyxData challenge project analysing a 60-store UK coffee chain with **PostgreSQL**, documenting findings in an English report, and visualising results in a Power BI dashboard.

## About

Sunrise Coffee operates 60 stores across 12 UK regions with varying formats (High-Street, Shopping-Centre, Transport-Hub). This project investigates the chain's financial and operational performance over a two-year period using transactional and dimensional data.

Key areas of analysis:

- **Data quality** — completeness checks, duplicate detection, and calendar validation.
- **Profitability** — regional and store-level profit margins; identification of loss-making locations such as South London Corner.
- **Product & loyalty** — category revenue composition, loyalty programme adoption, and redemption cost impact.
- **Seasonality & benchmarking** — monthly revenue patterns, weekday/weekend splits, and chain-wide store ranking.
- **Regression & gap analysis** — drivers of store revenue (footfall, rent, staffing, loyalty) and year-over-year profit change.

The central finding is that profitability risk is concentrated in London but not limited to it, and that data reliability and store-level monitoring should precede major business decisions.

## Project Structure

```
├── sql/
│   ├── 01_data_exploration.sql          -- Store distribution, operational stats, regional costs
│   ├── 02_data_quality.sql              -- Missing values, duplicates, launch dates, table relationships
│   ├── 03_profitability_analysis.sql    -- Regional & London store profitability
│   ├── 04_customer_transaction_analysis.sql -- Data coverage, store/date example
│   ├── 05_product_performance.sql       -- Revenue reconciliation, annual category revenue
│   ├── 06_loyalty_seasonality.sql       -- Loyalty programme performance & seasonality
│   ├── 07_regression_analysis.sql       -- Multiple linear regression data prep
│   ├── 08_store_benchmarking.sql        -- Chain-wide store benchmarking
│   └── 09_challenge_gap_analysis.sql    -- Store format, regional risk & YoY profit analysis
│
├── outputs/                             -- Query results (CSV)
├── reports/
│   └── analysis_notes.md                -- Detailed findings report
├── dashboard/
│   └── Sunrise_Coffee_Performance.pbix  -- Power BI dashboard
└── README.md
```

## Analyses

| #  | Topic | File |
|----|-------|------|
| 01 | Regional store distribution | `01_data_exploration.sql` |
| 02 | Data quality checks | `02_data_quality.sql` |
| 03 | Profitability (region & store) | `03_profitability_analysis.sql` |
| 04 | Customer transaction analysis | `04_customer_transaction_analysis.sql` |
| 05 | Product performance | `05_product_performance.sql` |
| 06 | Loyalty programme & seasonality | `06_loyalty_seasonality.sql` |
| 07 | Regression data preparation | `07_regression_analysis.sql` |
| 08 | Store benchmarking | `08_store_benchmarking.sql` |
| 09 | Gap analysis (format, risk, YoY) | `09_challenge_gap_analysis.sql` |

## Tech Stack

- **Database:** PostgreSQL
- **Visualisation:** Power BI
- **Language:** SQL
