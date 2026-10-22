# Sunrise Coffee Chain — Analysis Notes
## Analysis 01 — Regional Store Distribution
**Business Question:** How are stores distributed across regions?

**Findings:**

- London has the highest number of stores, with 7 locations.
- South-East, East-of-England, Wales and Yorkshire-and-Humber each have 6 stores.
- Store presence varies across regions.

Business Insight:

London has the largest store presence. However, store count alone does not indicate profitability or operational efficiency. Further analysis of revenue, costs and profit margins is required.

## Analysis 02 — Missing Value Assessment
**Objective:** Evaluate data completeness in the store dimension table.

**Finding:** No NULL values were identified in the `city`, `store_format`, `monthly_rent_gbp`, and `staff_headcount` columns.

**Interpretation:** The four examined attributes are complete with respect to SQL NULL values. Additional validation is required to identify potential duplicates, invalid values, and inconsistencies.

## Analysis 03 — Duplicate Store Assessment
**Finding:** No duplicate combinations of `store_name` and `city` were identified across the 60 store records.

**Interpretation:** No exact duplicates were detected using these two attributes. Further standardization checks may be needed to identify inconsistently formatted store names.

## Analysis 04 — Descriptive Statistics of Store Operations
**Objective:** To examine the operational cost structure and staffing characteristics of Sunrise Coffee stores using descriptive statistical measures.

**Key Findings:**

- **Average Monthly Rent:** £6,467.03
- **Minimum Monthly Rent:** £2,200.00
- **Maximum Monthly Rent:** £14,540.60
- **Average Staff Headcount:** Approximately 12 employees
- **Staff Headcount Range:** 6–17 employees
- **Average Monthly Staffing Cost:** £19,355.96

**Business Insights:**

The analysis reveals considerable variation in rental expenses and staffing levels across Sunrise Coffee stores.

Monthly rental costs range from £2,200 to £14,540.60, indicating substantial differences in operating expenses between locations. These variations may be associated with geographic location, store size, or store format.

Staffing levels also vary, with stores employing between 6 and 17 employees. The average monthly staffing cost of £19,355.96 highlights personnel expenses as an important component of operational costs.

**Conclusion and Next Steps:**

Although the results reveal differences in operating costs, high expenses do not necessarily indicate poor financial performance. Further analysis should compare operating costs across regions and evaluate their relationship with store revenue and profitability.

## Analysis 05 — Regional Operating Cost Assessment
**Project:** Sunrise Coffee Chain Analytics

**Analysis Scope:** 60 Stores Across 12 UK Regions

**Data Source:** `dim_store`

**Methodology:** Regional Aggregation and Comparative Cost Analysis

### 1. Executive Summary
This analysis evaluates regional differences in rental and staffing expenditure across Sunrise Coffee's 60-store network, identifying cost concentrations, structural variations, and areas requiring further financial investigation.

The findings reveal significant disparities in store-level expenditure, with London recording the highest average combined monthly rental and staffing cost at **£32,816.57**, approximately **27.1% above the company-wide store average of £25,822.99**.

In contrast, Northern Ireland demonstrates the lowest average combined cost at £19,837.85, highlighting a substantial geographical cost differential.

However, lower operating expenditure does not inherently indicate superior financial performance. A comprehensive evaluation of regional profitability requires integrating cost structures with revenue generation, transaction volumes, and store-level operating margins.

### 2. Key Findings
#### 2.1 Regional Cost Concentration
- **London:** £32,816.57 — Highest average combined monthly cost.
- **South-West:** £27,751.63 — Second-highest combined cost.
- **Scotland:** £27,052.52 — Third-highest combined cost.
- **Northern Ireland:** £19,837.85 — Lowest combined cost.

London's average combined expenditure exceeds Northern Ireland's by **£12,978.72 per store per month**, representing a 65.4% cost premium relative to Northern Ireland.

This significant disparity suggests that location-specific cost structures warrant further investigation before evaluating store efficiency or expansion opportunities.

#### 2.2 Rental Cost Disparities
London records the highest average monthly rent at **£11,806.31**, approximately 82.6% above the company-wide average of £6,467.03.

Rental expenditure also accounts for approximately 36% of London's combined rental and staffing costs.

South-East follows with an average monthly rental expense of £8,233.49. However, its relatively lower staffing expenditure results in a substantially lower combined cost of £24,930.23.

**Analytical Interpretation:**

Rental expenditure appears to be a major contributor to London's elevated cost structure. Nevertheless, without incorporating revenue per store, store size, and customer transaction volume, it is not possible to determine whether these costs are commercially justified.

#### 2.3 Staffing Cost Variations
Interestingly, London does not record the highest staffing expenditure despite having the highest overall combined cost.

North-West leads in average monthly staffing expenses at **£21,417.26**, compared with London's £21,010.26.

This finding indicates that staffing expenditure does not necessarily follow the same regional pattern as rental costs.

Potential explanatory factors include differences in staffing levels, wage structures, employee working hours, and store operating requirements. These factors require further validation.

### 3. Business Implications and Risk Assessment
**Cost Concentration Risk — London**

London's elevated rental expenditure may increase its exposure to occupancy-related financial pressure, particularly if revenue growth fails to keep pace with operating expenses.

However, cost reductions or store closures should not be recommended without first assessing profitability and commercial performance.

**Labour Cost Efficiency — North-West**

North-West's comparatively high staffing expenditure warrants closer examination of employee productivity and labour cost efficiency.

Further analysis should evaluate revenue per employee, staffing expenditure relative to revenue, and transaction volumes before identifying potential inefficiencies.

**Benchmarking Limitations — Northern Ireland**

Northern Ireland's relatively low cost structure may provide a useful comparison benchmark.

However, the region contains only three stores. This limited sample means that its average could be influenced significantly by individual locations.

Furthermore, differences in store formats, location characteristics, and commercial demand must be considered when making regional comparisons.

### 4. Strategic Recommendations
**Recommendation 1 — Implement Revenue-Adjusted Cost Benchmarking**

Develop regional and store-level indicators that evaluate operating expenses relative to financial performance.

Priority metrics should include:

- Rental Cost-to-Revenue Ratio
- Staffing Cost-to-Revenue Ratio
- Revenue per Employee
- Operating Profit Margin

These metrics will provide a more balanced assessment than absolute expenditure alone.

**Recommendation 2 — Prioritize London for Profitability Assessment**

Conduct a detailed financial evaluation of London's seven stores to determine whether their higher occupancy costs are offset by stronger revenue generation and profitability.

Stores with persistently weak margins should be investigated individually before considering corrective measures.

**Recommendation 3 — Investigate North-West Labour Expenditure**

Examine whether North-West's elevated staffing costs reflect higher employee numbers, wage differences, or operating requirements.

Compare staffing expenditure with store-level revenue and employee productivity rather than interpreting high labour costs as inefficiency.

**Recommendation 4 — Establish Comparable Store Groups**

Segment stores by location type, format, and operational characteristics before conducting performance benchmarking.

This will reduce the risk of comparing stores with fundamentally different cost structures and commercial conditions.

### 5. Analytical Limitations
The analysis is based on store-level rental and staffing information available in `dim_store`.

The combined cost metric includes only these two expense categories and should not be interpreted as total operating expenditure.

Furthermore, the dataset does not establish causal relationships between geographic location, expenditure, and financial performance.

Regional averages may also conceal substantial variation between individual stores. The results represent the available store-level cost attributes rather than a verified monthly financial time series.

Consequently, no definitive conclusions regarding operational efficiency, profitability, or expansion suitability can be drawn from this analysis alone.

### 6. Conclusion and Next Steps
The analysis identifies material regional differences in Sunrise Coffee's rental and staffing cost structures, with London emerging as the highest-cost region and Northern Ireland as the lowest.

The findings demonstrate that cost structures vary considerably across the store network. However, expenditure alone is an insufficient measure of operational performance.

**The central business question is not which regions are the cheapest to operate in, but which regions generate the strongest financial returns relative to their cost structures.**

The next phase will integrate the regional cost assessment with store-level financial performance data to evaluate revenue generation, net profitability, and operating margins.

This will support more evidence-based recommendations concerning cost optimization, resource allocation, and future investment priorities.

## Analysis 06 — Regional Profitability Analysis
**Business Question:** Which regions generate the strongest financial returns relative to revenue?

**Analysis Period:** 2023–2024

**Data Sources:** `fact_store_monthly_profitability`, `dim_store`

**Result File:** [Regional profitability](../outputs/regional_profitability.csv)

### Key Findings
The regional comparison covers 12 regions, each with 24 distinct months represented. Net profit margin is calculated as total net profit divided by total revenue, rather than an average of individual monthly margins.

| Region | Total Revenue | Total Net Profit | Net Profit Margin |
|---|---:|---:|---:|
| Northern-Ireland | £4,436,907.14 | £1,261,503.88 | 28.43% |
| West-Midlands | £4,599,218.71 | £1,126,683.28 | 24.50% |
| Wales | £8,854,454.13 | £2,018,601.37 | 22.80% |
| East-of-England | £9,011,244.27 | £1,995,460.43 | 22.14% |
| Yorkshire-and-Humber | £9,090,630.59 | £1,913,869.72 | 21.05% |
| South-East | £8,918,824.97 | £1,764,034.53 | 19.78% |
| Scotland | £6,186,884.36 | £1,131,847.23 | 18.29% |
| East-Midlands | £7,590,436.54 | £1,364,426.33 | 17.98% |
| North-East | £5,846,507.21 | £1,043,584.83 | 17.85% |
| South-West | £7,525,820.54 | £1,219,372.55 | 16.20% |
| North-West | £7,167,688.43 | £1,156,200.74 | 16.13% |
| London | £10,457,372.29 | £883,919.18 | 8.45% |

London generates the highest total revenue, **£10,457,372.29**, but has the lowest net profit margin at **8.45%**. Northern Ireland has the highest margin at **28.43%**.

### Business Interpretation and Next Step
The results extend Analysis 05 by comparing financial returns with the regional cost context. London's high revenue does not translate into a high net profit margin, making its stores a priority for further investigation.

Regional totals conceal differences between individual stores. Northern Ireland also has only three stores, so its higher margin should not be treated as sufficient evidence for expansion without considering store formats, local demand, and operational conditions.

The next step is to compare London's seven stores to identify whether its low regional margin is shared across all locations or concentrated in particular stores.

## Analysis 07 — Store-Level Profitability Analysis
**Business Question:** Which London stores contribute to the region's low profitability?

**Analysis Period:** 2023–2024

**Scope:** Seven London stores

**Data Sources:** `fact_store_monthly_profitability`, `dim_store`

**Result File:** [London store profitability](../outputs/london_store_profitability.csv)

### Key Findings
Each store has 24 monthly financial records in the result. The table is ordered from the lowest to the highest net profit margin; margins are displayed to two decimal places.

| Store | Total Revenue | Total Net Profit | Net Profit Margin |
|---|---:|---:|---:|
| South London Corner | £1,382,721.02 | -£50,494.58 | -3.65% |
| Canary Wharf Express | £1,351,123.81 | £42,807.39 | 3.17% |
| North London Yard | £1,443,582.05 | £74,178.61 | 5.14% |
| Canary Wharf Quarter | £1,512,182.70 | £131,422.52 | 8.69% |
| East London Lounge | £1,713,156.43 | £164,644.15 | 9.61% |
| Central London House | £1,497,966.27 | £201,618.64 | 13.46% |
| West London Quarter | £1,556,640.01 | £319,742.45 | 20.54% |

**South London Corner (Store ID: 32)** is the only London store with a negative aggregate net profit over the two-year period: **-£50,494.58**, with a **-3.65%** margin. West London Quarter records the highest margin at **20.54%**.

Canary Wharf Express generates less revenue than South London Corner but remains profitable, earning **£42,807.39** in net profit. Low revenue alone therefore does not explain why South London Corner is loss-making.

### Business Interpretation and Next Step
London's stores show substantial variation in profitability. A region-wide conclusion that all London stores perform poorly would overlook these differences.

Rent, staffing costs, location, customer loyalty, and competition were identified as possible explanations for South London Corner's performance. These remain hypotheses; competitor effects would require additional external evidence.

The next step is to inspect the store's monthly financial results to determine whether the two-year loss reflects frequent losses or a small number of unusually weak months. The record count alone does not establish that each record represents a different month; Analysis 08 examines the monthly series for the focus store.

## Analysis 08 — Monthly Profitability Analysis
**Business Question:** When did South London Corner's profitability deteriorate, and how frequently did the store incur losses?

**Focus Store:** Sunrise Coffee South London Corner (Store ID: 32)

**Analysis Period:** January 2023–December 2024

**Data Sources:** `fact_store_monthly_profitability`, `dim_store`

**Result File:** [South London monthly profitability](../outputs/08_south_london_monthly_profitability.csv)

### Key Findings
The output contains 24 distinct monthly results. Summing the existing whole-pound monthly figures produces the following annual comparison:

| Metric | 2023 | 2024 |
|---|---:|---:|
| Monthly Results | 12 | 12 |
| Revenue, Sum of Rounded Monthly Values | £786,977 | £595,746 |
| Net Profit, Sum of Rounded Monthly Values | £28,648 | -£79,144 |
| Net Profit Margin, Calculated from These Sums | 3.64% | -13.28% |
| Loss-Making Months | 4 | 9 |

The store moved from an annual profit in 2023 to a substantial loss in 2024. Revenue fell by approximately **24.3%**, and losses occurred in **nine of the twelve months in 2024**.

August 2024 recorded the largest monthly loss in the series, with **£25,324 revenue** and **-£23,799 net profit**. The deterioration therefore includes a particularly weak month, but the frequency of losses shows that it was not confined to one or two isolated periods.

### Precision and Interpretation
These annual figures reproduce the conversation's calculations from the rounded monthly output. They are not a replacement for aggregation of the underlying unrounded financial records. In particular, the 2024 revenue sum here is £2 higher than the annual result in Analysis 09 because rounding was applied at different aggregation levels. Likewise, the combined rounded monthly net profit of -£50,496 differs from the precise two-year result of -£50,494.58 in Analysis 07.

The monthly pattern establishes financial deterioration but does not identify its cause. It does not, by itself, demonstrate customer losses, changes in loyalty, or a need to close the store.

**Next Step:** Compare annual rent, staffing costs, and cost of goods sold with revenue to investigate the cost pressure associated with the decline.

## Analysis 09 — Cost Structure Investigation
**Business Question:** How did revenue and the cost structure change as South London Corner's profitability deteriorated?

**Focus Store:** Sunrise Coffee South London Corner (Store ID: 32)

**Analysis Period:** 2023–2024

**Data Sources:** `fact_store_monthly_profitability`, `dim_store`

**Result File:** [South London cost structure](../outputs/09_south_london_cost_structure.csv)

### Annual Financial Comparison
The annual output combines the cost structure assessment and the subsequent cost-to-revenue ratio analysis (Analysis 09.2). Amounts retain the existing whole-pound rounding; ratios retain two decimal places.

| Metric | 2023 | 2024 |
|---|---:|---:|
| Total Revenue | £786,977 | £595,744 |
| Rent | £90,838 | £93,246 |
| Staffing Cost | £364,851 | £349,902 |
| Cost of Goods Sold (COGS) | £289,080 | £216,797 |
| Gross Profit Margin | 63.27% | 63.61% |
| Rent / Revenue | 11.54% | 15.65% |
| Staffing Cost / Revenue | 46.36% | 58.73% |
| COGS / Revenue | 36.73% | 36.39% |

### Key Findings and Business Interpretation
Revenue decreased by approximately **24.3%**, while staffing expenditure decreased by only **4.1%** and rent increased by **2.65%**. Consequently, staffing cost rose from **46.36% to 58.73% of revenue**, despite falling in absolute terms. Rent also absorbed a larger share of revenue, increasing from **11.54% to 15.65%**.

Gross profit margin improved slightly, from **63.27% to 63.61%**, while gross profit in pounds fell from approximately **£497,897 to £378,947**. These amounts are derived from the rounded annual revenue and COGS figures. The approximately **£118,950 reduction in gross profit** left less income available to cover rent, staffing, and other operating expenses.

The main finding is that revenue declined much faster than key operating costs. The deterioration is consistent with increased cost pressure as revenue fell, rather than an increase in the absolute staffing bill or a worsening COGS-to-revenue ratio.

### Limitations and Next Step
The analysis does not establish why revenue declined, nor does a higher staffing-to-revenue ratio prove that the store is overstaffed. Rent, staffing, and COGS also do not include every expense used to calculate net profit.

Investigate the revenue decline before recommending major operational interventions. Customer traffic, transaction volume, average transaction value, and product mix are possible areas for investigation, subject to validation of the available daily sales data. Operational cost improvements can be considered alongside this work without treating workforce reductions as an established solution.

Analysis 10 assesses whether daily sales coverage and the definitions of customer and transaction measures support that investigation.

## Analysis 10 — Customer Traffic & Transaction Data Coverage Assessment
**Project:** Sunrise Coffee Chain Analytics

**Focus Store:** Sunrise Coffee South London Corner (Store ID: 32)

**Analysis Period:** 2023–2024

### 1. Business Objective
This analysis evaluates whether the available daily sales data can reliably support an investigation into the revenue decline at South London Corner.

Previous financial analysis identified a **24.3% decrease in annual revenue**, from approximately £786,977 in 2023 to £595,744 in 2024.

The primary objective is to assess data coverage, transaction-level structure, and the suitability of the available records for customer traffic and sales performance analysis.

### 2. Data Sources and Methodology
The analysis was conducted using the following PostgreSQL tables:

- `fact_daily_sales` — Recorded daily trading snapshots that carry a top-selling product identifier, footfall and transaction measures.
- `dim_date` — Calendar attributes used to identify and compare reporting years.
- `dim_store` — Store identification and regional information.

SQL queries were used to:

1. Identify multiple records associated with the same store and date.

2. Examine differences in footfall and transaction values across repeated store-date rows.

3. Measure the number of available sales records, distinct dates, and distinct products.

4. Compare daily sales data coverage between 2023 and 2024.

### 3. Key Findings
#### 3.1 Annual Data Coverage
| Metric | 2023 | 2024 |
|---|---:|---:|
| Sales Records | 80 | 81 |
| Distinct Dates | 75 | 72 |
| Distinct Top-Product IDs | 35 | 35 |

Across both years, South London Corner had:

- **161 daily sales records**
- **147 distinct recorded dates**
- **40 distinct top-product identifiers**

The number of sales records increased by approximately **1.25%**, while the number of distinct dates with recorded observations declined by **4.0%**.

However, neither change establishes a corresponding increase or decrease in actual customer demand.

Only 147 of the 730 dates represented in the calendar dimension have sales observations for this store, corresponding to approximately **20.1% calendar-date coverage**.

This limited coverage prevents the available daily sales records from being treated as a complete record of annual store activity.

#### 3.2 Data Granularity and Transaction Interpretation
The dataset contains multiple observations for the same store and date with different recorded top-product identifiers.

A record-level inspection identified four rows for the same store-date combination, with four distinct recorded top-product identifiers and different footfall and transaction values.

Although the data dictionary describes the intended grain as one daily snapshot per store, the actual data are not unique at the store-date level. The meaning of repeated store-date records requires clarification.

Consequently, directly summing `footfall` or `total_transactions` across repeated store-date records may double-count activity. Neither aggregation nor deduplication is justified until the operational meaning of those rows is verified.

The business definitions and aggregation rules for these measures require further validation before they can be reported as unique store visitors or transactions.

#### 3.3 Top-Product Identifier Coverage
Although 35 distinct top-product identifiers were observed in each year, 40 distinct identifiers appeared across the combined period.

This means 30 top-product identifiers appeared in both years, with five appearing only in 2023 and five appearing only in 2024.

This difference may provide a starting point for studying the recorded top-selling-product labels. However, the absence of a product identifier from this field does not imply that the product had no sales, was discontinued, or was unavailable.

### 4. Business Interpretation
South London Corner experienced a substantial decline in annual revenue, while the available daily sales record count remained broadly stable.

These findings do not establish whether the decline resulted from:

- Lower customer traffic.
- Reduced transaction volume.
- Lower average spending per transaction.
- Changes in product mix or purchasing behavior.

The limited coverage and unresolved aggregation rules mean that a reliable decomposition of the revenue decline cannot yet be performed using the available daily sales observations alone.

Importantly, **missing daily sales records must not automatically be interpreted as zero-sales days**.

### 5. Recommendations
**Data Governance:** Validate the completeness of daily sales records and establish the intended aggregation rules for footfall and transaction measures.

**Financial Reconciliation:** Investigate whether the daily sales dataset represents a sample or complete population and assess its consistency with monthly financial reporting.

**Commercial Investigation:** Use the more complete monthly profitability records as the primary source for financial trend analysis until daily sales coverage is validated.

**Product Performance:** Examine the four recorded category-revenue streams and validate product-level attribution before attempting individual product revenue or volume rankings.

**Management Decision-Making:** Avoid attributing the revenue decline to customer losses or recommending workforce reductions without additional evidence.

### 6. Conclusion
The analysis identified significant limitations in the completeness and interpretation of South London Corner's daily sales data.

Although the store's annual revenue declined by approximately 24.3%, the available observations are insufficient to determine whether this decline was caused by reduced customer traffic, fewer transactions, or lower customer spending.

The key outcome of this analysis is the identification of a **data reliability limitation that must be addressed before customer-level performance indicators can be used confidently in business decisions**.

The next analytical priority is product performance and sales-mix assessment, supported by the available data and accompanied by appropriate methodological limitations.

## Analysis 11 — Category Revenue Performance & Sales Mix Assessment
**Project:** Sunrise Coffee Chain Analytics

**Analysis Period:** 2023–2024

**Scope:** Chain-wide recorded daily sales observations

**Data Sources:** `fact_daily_sales`, `dim_date` (the `dim_product` table was inspected for field interpretation but was not used in the annual category-revenue aggregation).

### 1. Business Objective
The objective of this analysis is to evaluate year-over-year revenue performance across Sunrise Coffee's principal product categories, identify potential changes in revenue composition, and provide actionable insights for commercial decision-making.

The analysis focuses on Espresso Drinks, Filter Coffee, Food, and Retail Beans.

### 2. Methodology and Data Validation
Revenue figures were aggregated annually using PostgreSQL queries, joining the daily sales fact table with the date dimension.

Prior to the performance analysis, a revenue reconciliation test was conducted across all 10,000 daily sales records.

**Validation Results:**

- Total records evaluated: 10,000.
- Records with revenue reconciliation differences exceeding £0.01: 0.
- Revenue reconciliation success rate: 100% within the specified tolerance.

The test confirmed that the sum of the four recorded category revenue fields matched total recorded revenue within the defined tolerance.

Annual data coverage was also assessed:

| Coverage Metric | 2023 | 2024 |
|---|---:|---:|
| Sales Records | 5,037 | 4,963 |
| Distinct Recorded Dates | 365 | 365 |

The number of recorded observations declined by approximately 1.47%.

Although the dataset includes observations across 365 dates in each year, this does not establish complete store-level transaction coverage.

### 3. Category Revenue Performance
| Category | 2023 Revenue | 2024 Revenue | YoY Change |
|---|---:|---:|---:|
| Espresso Drinks | £4,724,093.08 | £4,622,860.38 | -2.14% |
| Filter Coffee | £1,961,735.05 | £1,962,337.27 | +0.03% |
| Food | £2,704,872.99 | £2,627,530.74 | -2.86% |
| Retail Beans | £917,012.63 | £933,198.07 | +1.77% |
| **Total** | **£10,307,713.75** | **£10,145,926.46** | **-1.57%** |

Total recorded revenue decreased by approximately **£161,787.29**, equivalent to a **1.57% year-over-year decline**.

#### 3.1 Espresso Drinks
Espresso Drinks remained the largest revenue-generating category, contributing approximately 45.56% of total recorded revenue in 2024.

However, revenue decreased by £101,232.70, representing a 2.14% reduction.

This category accounted for the largest absolute negative revenue movement among the four categories.

Given its substantial contribution to revenue, even relatively small changes in espresso-related performance may have meaningful commercial implications.

#### 3.2 Food
Food revenue declined by £77,342.25, equivalent to a 2.86% decrease.

Its contribution to recorded revenue decreased from approximately 26.24% in 2023 to 25.90% in 2024.

Further investigation should examine whether the observed decrease is associated with changes in the recorded product mix, availability, purchasing patterns, or differences in data coverage.

#### 3.3 Filter Coffee
Filter Coffee revenue remained nearly unchanged, increasing by approximately £602.22, or 0.03%.

Its share of total recorded revenue rose from 19.03% to 19.34%, primarily reflecting its relatively stable performance compared with the overall revenue decline.

#### 3.4 Retail Beans
Retail Beans demonstrated the strongest positive percentage movement, with recorded revenue increasing by £16,185.44, equivalent to 1.77%.

Its share of total revenue increased from 8.90% to 9.20%.

This suggests a potentially promising category for further investigation, although the underlying drivers of this growth have not yet been established.

### 4. Business Interpretation
The recorded revenue decline was concentrated primarily in Espresso Drinks and Food.

Combined, these categories experienced a reduction of approximately £178,574.95, partially offset by positive movements in Filter Coffee and Retail Beans.

While the revenue composition changed slightly, the overall category distribution remained broadly stable.

The findings indicate several possible commercial investigation priorities, but they do not establish changes in customer preferences or purchasing behavior.

Furthermore, since the number of recorded observations differs between years, part of the apparent revenue movement may reflect differences in data representation rather than changes in actual business performance.

### 5. Management Recommendations
1. **Prioritize Espresso and Food Investigations:** Examine store-level performance, pricing, product availability, and sales patterns to understand the observed revenue reductions.

2. **Evaluate Retail Beans Opportunities:** Investigate whether the category's positive performance reflects commercially sustainable demand before expanding promotional activity or inventory commitments.

3. **Assess Category Performance by Region and Store:** Determine whether the observed changes are broadly distributed or concentrated in specific locations.

4. **Validate Revenue Attribution:** Confirm the relationship between product identifiers, product-level attributes, and category revenue fields before producing individual product rankings or product-specific profitability estimates.

5. **Strengthen Data Reliability:** Reconcile sampled daily sales data with monthly financial records and clarify reporting coverage prior to interpreting these aggregates as complete chain-wide revenue.

### 6. Analytical Limitations
The `fact_daily_sales` table provides recorded observations whose completeness has not been established for every store and date.

Additionally, individual records contain multiple category revenue components. Therefore, attributing an entire record's total revenue to its `product_id` may misrepresent individual product performance.

The reconciliation test validates the arithmetic relationship between recorded revenue fields but does not establish the completeness or accuracy of the underlying transactions.

Year-over-year changes should therefore be interpreted as **changes in recorded category revenue**, not definitive evidence of shifts in customer demand or the company's complete financial results.

### 7. Conclusion
Sunrise Coffee's recorded daily sales revenue declined by 1.57% between 2023 and 2024.

Espresso Drinks and Food were the principal negative contributors, while Retail Beans showed moderate growth and Filter Coffee remained broadly stable.

The analysis identifies opportunities for targeted commercial investigation rather than immediate operational interventions.

The next analytical steps should focus on regional and store-level comparisons, validation of product-level attribution, and further investigation of the operational factors associated with revenue changes.

## Appendix — Supporting Data Quality Assessments
### Product Launch Date Completeness Assessment
**Objective**

To assess the completeness of product launch date information, evaluate its implications for product lifecycle analysis, and recommend improvements to product data governance.

**Key Findings**

- The product dimension contains 40 products, of which 36 (90%) have missing launch dates.
- Cold Drinks, Merchandise, and Filter Coffee exhibit 100% missing launch date rates.
- Only four products have recorded launch dates, all associated with seasonal or special-occasion offerings.
- The distribution suggests a possible systematic difference in how product launch information has been recorded.

**Business Implications**

The high proportion of missing launch dates limits the reliability of product lifecycle analysis, particularly when comparing products introduced at different points in time.

One potential explanation is that longstanding menu items were not assigned formal introduction dates, whereas selected seasonal products were recorded separately. However, this hypothesis requires validation against historical menu or product management records.

The daily sales dataset contains product and date identifiers, potentially enabling the identification of first recorded sales. These dates may provide useful indicators of product activity but should not automatically be interpreted as official launch dates.

**Strategic Recommendations**

1. **Implement Product Lifecycle Tracking:** Record product introduction, discontinuation, and reintroduction dates within a structured product management system.

2. **Establish Data Validation Controls:** Introduce mandatory data entry rules for newly launched products and maintain historical records of product status changes.

3. **Investigate Historical Sales Records:** Examine available transaction data to identify potential first recorded sales dates, while clearly distinguishing observed activity from verified launch information.

4. **Preserve Existing Product Records:** Avoid excluding products solely because their launch dates are missing, as this could introduce substantial selection bias.

**Conclusion**

The current data completeness issue restricts lifecycle-based product comparisons but does not necessarily prevent other forms of product performance analysis.

Improved product data governance and validation of historical sales records would strengthen future product performance measurement and support more reliable assortment decisions.

**Next Step:** Validate the relationship between product identifiers, sales records, and the date dimension before performing product-level temporal analysis.

### Date Dimension Data Quality Assessment
**Objective**

To evaluate the completeness, uniqueness, and date coverage of the `dim_date` table and identify potential issues affecting time-based business analysis.

**Key Findings**

- **Total Records:** 730
- **Distinct Dates:** 730
- **NULL Date Values:** 0
- **Date Range:** January 1, 2023 – December 30, 2024
- **Missing Calendar Date:** December 31, 2024

**Business Insights**

The analysis confirms that all 730 records contain unique, non-NULL date values, indicating satisfactory uniqueness and non-NULL completeness for the calendar dimension.

However, the dataset does not fully cover the 2023–2024 calendar period. As 2024 is a leap year, the two-year period contains 731 days.

The absence of December 31, 2024, represents a potential completeness issue that may affect year-end sales reporting, daily performance comparisons, and time-based analysis. The challenge brief and data dictionary state an end date of December 31, 2024, but the supplied `dim_date.csv` ends on December 30, 2024; this documentation-versus-data discrepancy should be investigated.

**Recommendations**

1. Verify whether December 31, 2024, was intentionally excluded from the reporting period.

2. Examine the daily sales dataset for transactions associated with the missing date.

3. Validate date relationships between the dimension and fact tables.

4. Establish automated calendar completeness checks for future reporting periods.

**Conclusion**

The date dimension contains no duplicate or NULL date values. Nevertheless, one calendar date is missing from the expected two-year reporting period.

Further investigation is required to determine whether this omission affects financial reporting or is consistent with the intended dataset coverage.

**Next Step:** Validate the relationship between `dim_date` and `fact_daily_sales` before conducting time-series analysis.



## Analysis 12 — Loyalty Programme Performance, Cost Efficiency, Seasonality & Correlation

**Project:** Sunrise Coffee Chain Analytics  
**Analysis Period:** January 2023 – December 2024  
**Scope:** 60 stores across the UK  
**Data Sources:** `fact_store_monthly_profitability`, `dim_store`  
**SQL File:** `../sql/06_loyalty_seasonality.sql`  
**Output Files:** `../outputs/12_loyalty_store_performance.csv`, `../outputs/12_loyalty_cost_by_format.csv`, `../outputs/12_monthly_seasonality.csv`, `../outputs/12_loyalty_correlation.csv`

### 1. Executive Summary

This analysis investigates store-level loyalty participation, the relationship between member-generated revenue and reward expenditure, monthly financial variation, and the association of loyalty measures with profitability.

Across 60 stores, loyalty adoption and the loyalty-member share of revenue show an extremely high positive Pearson correlation (**r = 0.998**). In contrast, neither loyalty adoption (**r = -0.014**) nor member revenue share (**r = -0.011**) demonstrates a material linear association with the stores' aggregate net profit margins in this dataset. The high correlation between the first two loyalty measures is unsurprising because the measures are closely related; it should not be presented as evidence that the loyalty programme increases revenue or profits.

At the chain level, annual monthly-financial-record revenue declined from **£44,982,189.94 in 2023** to **£44,703,799.24 in 2024 (-0.62%)**, while net profit declined from **£8,473,165.55** to **£8,406,338.52 (-0.79%)**. The peak month differed between years, providing insufficient support for a stable seasonal pattern.

### 2. Methodology

- **12.1 — Store loyalty performance:** Combine static adoption rates from `dim_store` with 24 months of store-level revenue, member spend, and redemption costs from the monthly financial fact table. Calculate each store's member revenue share using a revenue-weighted percentage, rather than summing monthly percentages.
- **12.2 — Loyalty cost by store format and year:** Group monthly financial observations by year derived from `month_id` and by store format. Compute member revenue share, redemption cost divided by recorded member spend, and net profit margin using ratios of aggregated sums.
- **12.3 — Monthly seasonality:** Aggregate revenue and net profit by `month_id` for 24 months, retaining the number of distinct stores represented in each month.
- **12.4 — Cross-sectional correlation:** Build one aggregate observation per store for loyalty adoption, member revenue share, and two-year net profit margin. Apply PostgreSQL `CORR()` to the 60 store-level observations.

All results are descriptive. A correlation is not a causal estimate; no randomized programme comparison, regression adjustment, or hypothesis test is included in this phase.

### 3. Analysis 12.1 — Store-Level Loyalty Performance

Selected results from the store-level output are shown below:

| Store | Store ID | Adoption Rate | Member Revenue Share | Member Spend | Redemption Cost |
|---|---:|---:|---:|---:|---:|
| Cheltenham Quarter | 24 | 58.50% | 59.70% | £966,670.25 | £30,060.26 |
| Bradford Brew Bar | 50 | 57.30% | 57.26% | £915,123.83 | £26,655.81 |
| Guildford Hub | 20 | 56.50% | 56.00% | £762,435.36 | £25,783.14 |
| South London Corner | 32 | 8.70% | 8.87% | £122,593.38 | £28,501.16 |
| Newport House | 51 | 5.70% | 5.71% | £86,507.06 | Not shown in the supplied excerpt |

South London Corner is among the lowest-adoption locations, substantially below the leading stores. It also exhibits a notably high *redemption-cost-to-member-spend ratio* of approximately **23.25%**, compared with **3.11%** at Cheltenham Quarter. These are ratios of recorded programme expense to all recorded member spending, **not programme ROI** or an estimate of the programme's incremental effect.

The screenshot excerpts show zero missing loyalty-percentage months for the displayed stores. The complete exported store output should be checked to confirm this for all 60 stores.

**Business implication:** South London Corner's programme participation and recorded reward-cost intensity warrant further investigation, but its poor profitability cannot be attributed to low loyalty adoption from this evidence alone.

### 4. Analysis 12.2 — Loyalty Revenue and Reward Cost by Store Format

| Year | Format | Stores | Member Revenue Share | Reward Cost / Member Spend | Net Profit Margin |
|---|---|---:|---:|---:|---:|
| 2023 | Transport-Hub | 2 | 45.30% | 4.17% | 25.35% |
| 2023 | High-Street | 58 | 32.56% | 5.93% | 18.60% |
| 2024 | Transport-Hub | 2 | 44.50% | 4.27% | 24.93% |
| 2024 | High-Street | 58 | 32.96% | 5.86% | 18.58% |

Transport-Hub stores have a higher member revenue share and a lower reward-cost-to-member-spend ratio than High-Street stores in both years. However, **only two stores** belong to the Transport-Hub category, compared with 58 High-Street stores. These figures should not be generalized to all transit locations, nor interpreted as proof that a given store format or loyalty programme causes better profitability.

Between 2023 and 2024, the Transport-Hub member revenue share fell by **0.80 percentage points**, while the High-Street share rose by **0.40 percentage points**. Net profit margins declined slightly for both formats.

**Business implication:** Investigate loyalty offer design, customer mix, redemption rules, and store-level economics before comparing programme efficiency or extending promotions.

### 5. Analysis 12.3 — Monthly Financial Performance and Seasonality

| Metric | 2023 | 2024 |
|---|---:|---:|
| Total Revenue | £44,982,189.94 | £44,703,799.24 |
| Total Net Profit | £8,473,165.55 | £8,406,338.52 |
| Aggregate Net Profit Margin | 18.84% | 18.80% |
| Highest-Revenue Month | July (£3,878,266.63) | November (£3,898,543.57) |
| Lowest-Revenue Month | November (£3,570,019.96) | May (£3,573,496.48) |
| Highest Monthly Net Profit Margin | July (20.83%) | November (20.95%) |
| Lowest Monthly Net Profit Margin | November (15.80%) | July (16.96%) |

All 24 monthly results contain 60 represented stores. Annual revenue decreased approximately **0.62%** and aggregate net profit approximately **0.79%** between 2023 and 2024. The aggregate net profit margin declined by approximately **0.03 percentage points**.

Two notable year-over-year monthly revenue changes were November (**approximately +9.20%**) and July (**approximately -7.10%**). However, July is the strongest revenue month of 2023 and one of the weakest-margin months of 2024, whereas November moves from the weakest month in 2023 to the strongest in 2024. This inconsistency limits any claim of a stable seasonal effect.

**Business implication:** Use the 24-month trend to flag unusual periods for investigation and dashboard storytelling, but avoid forecasting seasonality from only two years of observations without further validation.

### 6. Analysis 12.4 — Loyalty and Profitability Correlation

**Unit of analysis:** One record per store, `n = 60`; figures are Pearson correlation coefficients.

| Relationship | Pearson r | Interpretation |
|---|---:|---|
| Loyalty adoption rate vs member revenue share | **+0.998** | Extremely strong positive linear association between closely related measures |
| Loyalty adoption rate vs net profit margin | **-0.014** | Near-zero linear association |
| Member revenue share vs net profit margin | **-0.011** | Near-zero linear association |

**Interpretation:** Higher loyalty adoption is strongly associated with a higher share of revenue attributed to loyalty members, but there is **no substantial linear association in this cross-sectional dataset between the examined loyalty metrics and store net profit margins**. This does not establish that the loyalty programme has no commercial impact, and it does not rule out nonlinear relationships or effects that differ by region, store type, or customer segment.

The `r = 0.998` finding should be communicated cautiously: the two loyalty measures may reflect closely related underlying constructs or common data-generation assumptions, making this association less informative than the comparison with actual profit margins.

### 7. Management Recommendations

1. **Audit South London Corner's reward economics.** Investigate redemption rules, reward eligibility, campaign structure, and the high recorded cost-to-member-spend ratio; reconcile with actual member transaction records before recommending changes.
2. **Measure incremental programme value.** Use cohort analysis or a controlled experiment, where feasible, to distinguish the programme's additional revenue from purchases members would otherwise have made.
3. **Benchmark comparable stores.** Compare locations after accounting for region, rent, staffing, format, customer profile, and sales volume. Avoid conclusions based on a two-store format segment.
4. **Investigate monthly anomalies.** Review promotions, holiday trading, product availability, and store-level patterns behind unusual July and November changes.
5. **Design trustworthy dashboard metrics.** Display adoption, member revenue share, redemption cost intensity, aggregate net profit margin, and monthly trend as separate measures. Make it clear that correlation is not causation.

### 8. Limitations and Conclusion

The analysis relies on store-level aggregate financial records and a cross-sectional adoption measure. It does not include experimental identification of loyalty impact, repeated historical adoption measurements, or sufficient years to confirm long-term seasonality. Store format comparisons are imbalanced (2 versus 58 stores); redemption-cost intensity is not a programme ROI calculation.

**Conclusion:** Loyalty participation closely tracks the share of sales attributed to members, but does not show a meaningful linear relationship with net profitability across the observed 60 stores. Monthly financial performance fluctuates without a stable seasonal pattern established by the two-year sample. Management should prioritize programme economics, customer-level validation, and comparable-store investigation rather than treating loyalty adoption alone as a profitability lever.

**Next Step:** Integrate the validated financial and loyalty KPIs into Power BI; retain data-source coverage warnings for the sampled `fact_daily_sales` dataset. Further regression modelling is optional and should be scoped to a specific testable business hypothesis.




# Analysis 14 — Chain-Wide Store Performance Benchmarking

**Project:** Sunrise Coffee Chain Analytics  
**Analysis Period:** January 2023 – December 2024  
**Scope:** 60 stores across 12 UK regions  
**Data Sources:** `fact_store_monthly_profitability`, `dim_store`

## 1. Business Objective

This analysis evaluates the financial performance of all 60 Sunrise Coffee stores to identify underperforming locations, compare operational cost structures, and determine whether the profitability challenges previously observed in London are isolated or part of wider business patterns.

## 2. Methodology

Store-level financial indicators were aggregated across 24 months, including total revenue, total net profit, net profit margin, rent-to-revenue ratio, staffing-to-revenue ratio, and the number of loss-making months.

Net profit margins and cost ratios were calculated using aggregated financial amounts rather than averages of monthly percentages.

All 60 stores were represented by 24 monthly reporting periods.

## 3. Key Findings

### 3.1 South London Corner — Lowest Profitability

South London Corner recorded the lowest net profit margin across the entire chain:

- Total revenue: £1,382,721.02
- Total net loss: £50,494.58
- Net profit margin: -3.65%
- Loss-making months: 13 out of 24
- Rent-to-revenue ratio: 13.31%
- Staffing-to-revenue ratio: 51.69%

The store was the only location with a negative aggregate net profit over the two-year evaluation period.

This result validates its selection for the earlier detailed profitability and cost structure investigations.

### 3.2 Canary Wharf Express — Recurring Losses Despite Positive Aggregate Profit

Canary Wharf Express had the second-lowest net profit margin, at 3.17%.

Despite generating £42,807.39 in aggregate net profit, the store recorded losses in 13 of the 24 months.

Its rent-to-revenue ratio of 21.78% indicates substantial occupancy cost pressure relative to revenue.

This finding demonstrates that positive cumulative profitability can conceal recurring periods of financial weakness.

### 3.3 Regional Concentration of Low-Performing Stores

Five of the ten lowest-margin stores were located in London.

The remaining five were distributed across North-West, East-Midlands, and South-West.

This reinforces the earlier finding that London's profitability challenges warrant management attention, while demonstrating that underperformance is not exclusive to the capital.

### 3.4 High-Performing Store Benchmarks

Coventry Roastery recorded the highest net profit margin at 38.21%, followed by Derry Station at 31.43% and Newport House at 31.15%.

These stores provide potential benchmarks for identifying operational and commercial differences between high- and low-performing locations.

However, meaningful benchmarking requires consideration of differences in location, store characteristics, customer demand, and operating costs.

## 4. Business Interpretation

The analysis reveals significant differences in profitability across Sunrise Coffee's store network.

South London Corner represents the most substantial cumulative profitability concern, whereas Canary Wharf Express demonstrates a different risk profile characterized by repeated monthly losses despite an overall positive return.

The findings suggest that profitability challenges should be assessed through multiple indicators rather than net profit margin alone.

In particular, management should consider the frequency of losses, cost-to-revenue ratios, and consistency of financial performance.

The observed associations do not establish the underlying causes of poor profitability.

## 5. Strategic Recommendations

1. **Prioritize Underperforming Stores:** Conduct targeted operational reviews of South London Corner, Canary Wharf Express, Manchester Collective, and other low-margin locations.

2. **Monitor Recurring Monthly Losses:** Implement alerts for stores experiencing repeated negative monthly profitability, including those remaining profitable over longer periods.

3. **Investigate Cost Structures:** Compare staffing and rental cost burdens with revenue, sales patterns, and operational requirements before considering cost-reduction measures.

4. **Establish Comparable Benchmarks:** Compare low-performing stores with higher-performing locations that share similar operating characteristics.

5. **Develop Interactive Performance Monitoring:** Incorporate store rankings, profitability trends, cost ratios, and loss-making month counts into Power BI to support management decision-making.

## 6. Analytical Limitations

The analysis uses aggregated historical financial records and does not establish causality.

Differences in market conditions, store locations, customer demand, staffing requirements, and operational characteristics may influence observed performance.

A positive cumulative profit does not guarantee stable monthly profitability, while a negative cumulative result does not by itself justify closure.

Management recommendations should be validated against additional operational and commercial evidence.

## 7. Conclusion

Chain-wide benchmarking confirms that South London Corner is the lowest-performing store by net profit margin and the only location with an overall negative net profit during 2023–2024.

However, the analysis also identifies additional locations with weak margins and recurring losses, particularly Canary Wharf Express.

The findings support a broader performance management approach that evaluates the entire store network while prioritizing locations requiring more detailed investigation.

**The key recommendation is to establish a chain-wide, evidence-based store monitoring framework rather than relying on isolated profitability case studies.**





# Sunrise Coffee Chain — Final Challenge Gap Analysis Report

**Project:** Sunrise Coffee Chain Analytics  
**Reporting Period:** 2023–2024  
**Prepared for:** Chief Commercial Officer  
**Scope:** Chain-Wide Store Benchmarking and Challenge Gap Analysis  
**Currency:** GBP

---

## Analysis 14 — Chain-Wide Store Performance Benchmarking

### Business Objective

This analysis evaluates the financial performance of all 60 Sunrise Coffee stores to identify underperforming locations, compare operational cost structures, and determine whether profitability problems are concentrated in particular stores or regions.

### Methodology

The analysis uses monthly profitability records covering 24 months for each store.

The following indicators were calculated:

- Total Revenue
- Total Net Profit
- Weighted Net Profit Margin
- Rent-to-Revenue Ratio
- Staffing-to-Revenue Ratio
- Number of Loss-Making Months

Net profit margin was calculated by dividing aggregated net profit by aggregated revenue.

### Key Findings

**1. South London Corner — Lowest Profitability**

South London Corner recorded the weakest overall financial performance across the chain.

- Total Revenue: £1,382,721.02
- Total Net Loss: £50,494.58
- Net Profit Margin: -3.65%
- Loss-Making Months: 13 out of 24
- Rent-to-Revenue Ratio: 13.31%
- Staffing-to-Revenue Ratio: 51.69%

The store was the only location with a negative cumulative net profit during the two-year period.

**2. Canary Wharf Express — Recurring Financial Weakness**

Canary Wharf Express recorded the second-lowest net profit margin at 3.17%.

Although the store generated £42,807.39 in cumulative net profit, it experienced losses in 13 of the 24 months.

Its rent-to-revenue ratio reached 21.78%, suggesting substantial occupancy cost pressure relative to revenue.

**3. Regional Concentration**

Five of the ten lowest-margin stores were located in London.

This confirms that London's profitability challenges extend beyond a single location.

**4. High-Performing Stores**

Coventry Roastery recorded the highest cumulative net profit margin at 38.21%.

Other high-performing stores included:

- Derry Station: 31.43%
- Newport House: 31.15%
- Leeds Roastery: 29.73%
- Belfast Yard: 28.89%

These locations may provide useful benchmarks for future operational comparisons.

### Business Interpretation

Store profitability varies substantially across the Sunrise Coffee network.

Positive cumulative profitability does not necessarily indicate consistent monthly performance.

Similarly, negative profitability alone does not establish the underlying cause of financial weakness.

### Strategic Recommendations

1. Prioritise South London Corner and Canary Wharf Express for detailed operational reviews.
2. Monitor recurring monthly losses alongside cumulative profitability.
3. Investigate rental, staffing, and revenue patterns before recommending store closures or workforce reductions.
4. Compare underperforming stores with operationally similar high-performing locations.
5. Develop an interactive chain-wide profitability monitoring dashboard.

---

## Challenge Gap Analysis 01 — Store Format Profitability and Space Efficiency

### Business Objective

Evaluate differences in financial performance, space utilisation, and customer traffic between Sunrise Coffee store formats.

### Key Findings

| Store Format | Stores | Total Revenue | Net Profit | Net Margin |
|---|---:|---:|---:|---:|
| Transport-Hub | 2 | £3,186,525.91 | £801,111.46 | 25.14% |
| High-Street | 58 | £86,499,463.27 | £16,078,392.61 | 18.59% |

Additional operational indicators:

| Metric | Transport-Hub | High-Street |
|---|---:|---:|
| Average Monthly Revenue per Sq Ft | £50.07 | £52.46 |
| Reported Average Daily Footfall | 455.47 | 481.97 |

Transport-Hub stores achieved a net profit margin 6.55 percentage points higher than High-Street stores.

However, High-Street stores recorded slightly higher average revenue per square foot and reported customer footfall.

### Business Interpretation

Transport-Hub stores appear more effective at converting revenue into net profit despite lower reported traffic and space efficiency.

However, the format contains only two stores, limiting the reliability of broad generalisations.

Furthermore, the source data contains no Retail-Park stores despite the format being mentioned in the challenge brief.

### Management Recommendations

- Investigate the operational characteristics contributing to Transport-Hub profitability.
- Compare rental expenses, staffing requirements, and location-specific commercial conditions.
- Avoid expansion recommendations based solely on the performance of two stores.
- Use revenue-adjusted cost and profitability indicators for future format comparisons.

**Output:** `outputs/09_01_store_format_performance.csv`

---

## Challenge Gap Analysis 02 — Regional Profitability Risk Assessment

### Business Objective

Identify regions with the highest concentration of financially vulnerable store-month observations and validate the reliability of existing profitability classifications.

### Methodology

Monthly financial records were classified using the net profit margin thresholds defined in the data dictionary.

The recalculated profitability classification was compared with the original `profitability_status` field.

### Key Findings

Across 1,440 monthly profitability records:

- 600 records had profitability classifications inconsistent with the documented thresholds.
- These records represented approximately 41.67% of observations.
- Recalculated classifications identified 197 risk months.
- Original profitability labels identified 164 risk months.

The highest regional risk concentrations were:

| Region | Store-Months | Risk Months | Risk Share |
|---|---:|---:|---:|
| London | 168 | 49 | 29.17% |
| South-West | 120 | 23 | 19.17% |
| North-West | 120 | 21 | 17.50% |
| East-Midlands | 120 | 20 | 16.67% |

### Business Interpretation

London demonstrates the highest concentration of financially vulnerable observations.

The differences between existing and recalculated classifications also represent a significant data governance concern.

Using the original profitability status without validation could misrepresent the financial risk associated with individual stores or regions.

### Strategic Recommendations

1. Recalculate profitability classifications using documented net margin thresholds.
2. Preserve the original status values for audit purposes.
3. Prioritise London, South-West, and North-West for financial risk monitoring.
4. Evaluate risk as a proportion of store-month observations rather than relying solely on absolute counts.
5. Introduce automated profitability classification validation.

**Output:** `outputs/09_02_regional_risk_summary.csv`

---

## Challenge Gap Analysis 03 — Year-over-Year Store Profitability Changes

### Business Objective

Identify stores experiencing the largest improvements and deteriorations in annual net profit between 2023 and 2024.

### Key Findings

**Stores with the largest profit deterioration**

| Store | Region | Annual Profit Change |
|---|---|---:|
| Bristol Station | South-West | -£141,296.80 |
| South London Corner | London | -£107,793.24 |
| Chester House | North-West | -£91,618.16 |

**Stores with the strongest improvement**

| Store | Region | Annual Profit Change |
|---|---|---:|
| Belfast Yard | Northern-Ireland | +£116,789.62 |
| Liverpool Collective | North-West | +£116,496.79 |
| Cheltenham Quarter | South-West | +£90,224.33 |

### Business Interpretation

South London Corner is not the only store experiencing financial deterioration.

Bristol Station recorded an even larger year-over-year net profit decline, although it remained cumulatively profitable over the two-year period.

Meanwhile, several stores recorded substantial improvements.

These differences demonstrate that financial performance changes are not uniform across the chain.

### Strategic Recommendations

- Conduct root-cause investigations for the stores with the largest profit declines.
- Examine revenue trends, cost structures, and operational characteristics.
- Identify possible best practices among improving stores.
- Compare stores only after considering location, format, and other operational differences.
- Monitor both cumulative profitability and annual performance deterioration.

**Output:** `outputs/09_03_store_yoy_profit_change.csv`

---

## Challenge Gap Analysis 04 — Revenue Mix by Store Format

### Business Objective

Examine changes in recorded product category revenue composition across High-Street and Transport-Hub stores between 2023 and 2024.

### Key Findings

| Format / Year | Espresso Share | Filter Share | Food Share | Retail Beans Share |
|---|---:|---:|---:|---:|
| High-Street 2023 | 45.85% | 18.95% | 26.25% | 8.95% |
| High-Street 2024 | 45.51% | 19.32% | 25.98% | 9.18% |
| Transport-Hub 2023 | 45.44% | 21.10% | 26.09% | 7.37% |
| Transport-Hub 2024 | 46.75% | 19.76% | 23.91% | 9.58% |

Within Transport-Hub observations:

- Retail Beans revenue share increased by 2.21 percentage points.
- Espresso share increased by 1.31 percentage points.
- Food share decreased by 2.18 percentage points.
- Filter Coffee share decreased by 1.34 percentage points.

High-Street category shares remained comparatively stable.

### Business Interpretation

Transport-Hub stores experienced more pronounced changes in recorded category revenue composition.

The growing share of Retail Beans may indicate an opportunity for further commercial investigation.

However, an increasing revenue share does not necessarily demonstrate increasing customer demand or higher profitability.

The number of observed daily sales records also changed between years, limiting conclusions about underlying revenue growth.

### Strategic Recommendations

1. Investigate Retail Beans purchasing patterns in Transport-Hub locations.
2. Evaluate category revenue changes alongside customer traffic and transaction records.
3. Validate daily sales completeness before interpreting changes as full-business trends.
4. Investigate opportunities for targeted category promotions.
5. Avoid major inventory or assortment changes without reliable sales volume data.

**Output:** `outputs/09_04_format_revenue_mix.csv`

---

## Challenge Gap Analysis 05 — Product Category Gross Margin Assessment

### Business Objective

Compare catalogue-level gross margins across product categories to identify potential pricing and product profitability opportunities.

### Key Findings

| Product Category | Products | Average Gross Margin |
|---|---:|---:|
| Filter-Coffee | 4 | 88.30% |
| Espresso-Drinks | 12 | 83.88% |
| Cold-Drinks | 4 | 81.33% |
| Food | 10 | 73.98% |
| Merchandise | 2 | 70.20% |
| Retail-Beans | 8 | 67.70% |

Filter Coffee recorded the highest average catalogue-level gross margin at 88.30%.

Retail Beans had the lowest average catalogue-level gross margin at 67.70%.

### Business Interpretation

High catalogue gross margins suggest favourable unit economics but do not necessarily indicate high total gross profit.

A product with a relatively low unit margin may generate substantial total profit through greater sales volume.

Furthermore, the available figures are unweighted averages of product-level gross margins.

They do not represent realised sales-weighted category profitability.

The observed catalogue margin values also exceed the upper range documented in the supplied data dictionary.

### Strategic Recommendations

- Evaluate product profitability using both margin and sales volume.
- Investigate commercial opportunities for high-margin coffee categories.
- Avoid prioritising products solely on the basis of catalogue margins.
- Improve product-level sales attribution.
- Validate catalogue margin definitions and data documentation.

**Output:** `outputs/09_05_product_category_margins.csv`

---

## Challenge Gap Analysis 06 — Weekday, Weekend and Bank Holiday Performance

### Business Objective

Investigate recorded sales performance differences between normal weekdays, weekends, and UK bank holidays across store formats.

### Key Findings

| Store Format | Day Type | Average Revenue per Record | Average Transactions per Record |
|---|---|---:|---:|
| High-Street | Normal Weekday | £2,207.13 | 303.37 |
| High-Street | Weekend | £1,651.98 | 227.34 |
| High-Street | Bank Holiday | £1,365.39 | 183.59 |
| Transport-Hub | Normal Weekday | £2,731.79 | 368.74 |
| Transport-Hub | Weekend | £1,982.59 | 266.82 |
| Transport-Hub | Bank Holiday | £1,793.90 | 235.38 |

Compared with normal weekdays, observed average revenue per record decreased:

**High-Street**

- Weekend: approximately 25.15%.
- Bank Holiday: approximately 38.14%.

**Transport-Hub**

- Weekend: approximately 27.43%.
- Bank Holiday: approximately 34.33%.

### Business Interpretation

Both store formats recorded higher average revenue and transaction counts per observation on normal weekdays.

This may reflect differences in commuting, working patterns, and customer activity.

However, the results are descriptive and do not establish that weekends or holidays directly cause lower revenue.

The Transport-Hub bank holiday group contains only eight observations.

Furthermore, the daily sales dataset includes repeated store-date combinations, meaning these averages represent recorded observations rather than verified unique store-days.

The holiday flag also follows the England and Wales calendar rather than all regional UK holiday calendars.

### Strategic Recommendations

1. Evaluate whether staffing schedules reflect observed differences in demand across day types.
2. Review inventory and product availability during lower-activity periods.
3. Investigate targeted weekend and holiday promotional opportunities.
4. Validate these patterns using complete store-day sales histories.
5. Incorporate appropriate regional holiday calendars before operational implementation.

**Output:** `outputs/09_06_weekday_weekend_bank_holidays.csv`

---

## Challenge Gap Analysis 07 — Quarterly Financial Performance

### Business Objective

Assess quarterly revenue and profitability across the Sunrise Coffee network, identify periods of financial strength or weakness, and compare seasonal performance between store formats.

### Key Findings

| Period | Total Revenue | Net Profit | Net Profit Margin |
|---|---:|---:|---:|
| 2023 Q1 | £11.33M | £2.13M | 18.80% |
| 2023 Q2 | £11.23M | £2.15M | 19.15% |
| 2023 Q3 | £11.34M | £2.21M | 19.48% |
| 2023 Q4 | £11.08M | £1.98M | 17.90% |
| 2024 Q1 | £11.41M | £2.27M | 19.92% |
| 2024 Q2 | £11.02M | £2.03M | 18.41% |
| 2024 Q3 | £10.90M | £1.89M | 17.31% |
| 2024 Q4 | £11.37M | £2.22M | 19.51% |

### Business Interpretation

The strongest financial quarter varied between the two reporting years.

In 2023, Q3 generated the highest revenue and net profit.

In 2024, Q1 generated the highest revenue and net profit.

The most notable deterioration occurred in Q3, when net profit margin declined from 19.48% in 2023 to 17.31% in 2024.

This represents a reduction of approximately 2.17 percentage points.

Transport-Hub stores maintained higher net profit margins than High-Street stores across the observed quarters.

However, the Transport-Hub format contains only two stores.

### Strategic Recommendations

- Investigate the causes of the 2024 Q3 profitability decline.
- Compare regional and store-level performance during weaker quarters.
- Use historical quarterly patterns to support management monitoring.
- Avoid assuming that two years of observations establish permanent seasonal behaviour.
- Combine financial seasonality with complete customer traffic and transaction data before adjusting future staffing and inventory plans.

**Output:** `outputs/09_07_quarterly_format_performance.csv`

---

# Final Executive Business Insights

## Key Finding 1 — Profitability Challenges Are Concentrated

London exhibits the highest proportion of financially vulnerable store-month observations.

South London Corner represents the weakest cumulative profitability case, while Canary Wharf Express demonstrates recurring monthly losses despite remaining cumulatively profitable.

**Business Recommendation:** Prioritise targeted operational reviews and establish chain-wide profitability risk monitoring.

## Key Finding 2 — Store Performance Changes Are Uneven

Some stores experienced substantial year-over-year profit deterioration, whereas others recorded significant improvements.

Bristol Station demonstrated the largest annual profit decline, while Belfast Yard and Liverpool Collective showed strong improvement.

**Business Recommendation:** Combine performance deterioration monitoring with comparable-store benchmarking.

## Key Finding 3 — Store Formats Have Different Financial Profiles

Transport-Hub stores recorded higher weighted net profit margins than High-Street stores.

However, the difference cannot establish superior format performance across the wider UK market because only two Transport-Hub stores were observed.

**Business Recommendation:** Investigate format economics and location characteristics before making expansion decisions.

## Key Finding 4 — Category Revenue Composition Is Changing

Transport-Hub records show a growing Retail Beans revenue share and declining Food revenue share.

Meanwhile, Filter Coffee and Espresso Drinks have relatively high average catalogue margins.

**Business Recommendation:** Evaluate revenue mix changes together with realised sales volume and gross profit contribution.

## Key Finding 5 — Operational Performance Varies Over Time

Recorded weekday sales observations show higher average revenue and transaction counts than weekend and bank holiday observations.

Quarterly profitability also varies between reporting periods, with a notable decline in Q3 2024.

**Business Recommendation:** Investigate temporal differences using complete sales data before implementing staffing, inventory, or promotional changes.

---

# Data Quality and Analytical Limitations

The analysis identified several issues requiring documentation and validation:

1. **Profitability Status:** Existing profitability classifications are inconsistent with documented net margin thresholds in 600 of 1,440 records.

2. **Store Format Representation:** Retail-Park stores are mentioned in the challenge brief but are absent from the provided source data.

3. **Daily Sales Coverage:** Multiple records exist for some store-date combinations, and complete daily reporting coverage has not been established.

4. **Daily and Monthly Revenue Reconciliation:** Aggregated daily sales observations do not represent the same verified revenue population as monthly financial records.

5. **Product-Level Attribution:** The `product_id` field identifies the top-selling product for a recorded day and must not be used to assign an entire day's revenue to that product.

6. **Seasonal Data:** Two years of observations are insufficient to establish consistent long-term seasonal patterns.

7. **Loyalty ROI:** Member-attributed spending does not establish incremental revenue generated by the loyalty programme. A credible comparison or counterfactual would be required for causal ROI estimation.

8. **Catalogue Margins:** Average product margins are not equivalent to realised, sales-weighted category profitability.

These limitations should be communicated alongside the dashboard findings to prevent inappropriate operational conclusions.

---

# Final Management Recommendations

The following actions are recommended for Sunrise Coffee's commercial management team:

1. Establish a chain-wide profitability monitoring system combining net profit margin, cost ratios, monthly losses, and year-over-year changes.
2. Prioritise detailed reviews of South London Corner, Canary Wharf Express, and Bristol Station.
3. Investigate higher-performing stores to identify transferable practices while accounting for differences in location and operating conditions.
4. Validate profitability classifications before using them for investment or closure decisions.
5. Evaluate loyalty programme effectiveness using member spending, redemption costs, profitability, and appropriate incremental impact measurement.
6. Improve product-level sales information to support reliable assortment and gross profit analysis.
7. Investigate seasonal and day-type patterns before revising staffing schedules and promotional strategies.
8. Build an interactive Power BI dashboard to support regional, store-level, financial, and commercial performance monitoring.

---

# Recommended Power BI Dashboard Structure

## Page 1 — Executive Performance Overview

**Key Indicators**

- Total Revenue
- Total Net Profit
- Net Profit Margin
- Year-over-Year Revenue Change
- Year-over-Year Profit Change
- Store Count

**Visualisations**

- Revenue and profit trends
- Regional profitability comparison
- Quarterly performance
- Executive performance highlights

## Page 2 — Regional & Store Performance

**Key Indicators**

- Store Profitability Ranking
- Loss-Making Months
- Recalculated Profitability Status
- Rent-to-Revenue Ratio
- Staffing-to-Revenue Ratio

**Visualisations**

- Bottom 10 Stores by Profit Margin
- Revenue vs Profitability
- Regional Risk Concentration
- Year-over-Year Store Profit Change
- Store-Level Drill-Down

## Page 3 — Commercial & Loyalty Insights

**Key Indicators**

- Category Revenue Share
- Loyalty Adoption Rate
- Loyalty Member Revenue Share
- Loyalty Redemption Costs
- Catalogue Product Margins

**Visualisations**

- Product Category Revenue Composition
- Revenue Mix by Store Format
- Loyalty Performance Comparison
- Catalogue Gross Margin Ranking
- Weekday and Weekend Performance

---

# Final Conclusion

The Sunrise Coffee Chain analysis demonstrates substantial variation in financial performance across regions, store formats, individual locations, and reporting periods.

London exhibits the highest concentration of profitability risk, with South London Corner emerging as the weakest cumulative profitability case.

However, broader comparisons reveal that profitability challenges are not limited to London and that multiple stores experienced significant year-over-year deterioration.

Transport-Hub stores show higher recorded net margins, while product category and temporal analyses reveal potential commercial opportunities requiring further validation.

The findings support the development of a comprehensive, evidence-based business intelligence framework that enables management to monitor financial performance, investigate operational risks, and evaluate commercial opportunities.

**The central recommendation is to prioritise data reliability, store-level profitability monitoring, and targeted business investigations before making major expansion, staffing, or investment decisions.**

**Project Status:** All required analytical themes addressed.  
**Next Phase:** Power BI Dashboard Development, Validation, Executive Storytelling, and Competition Submission.