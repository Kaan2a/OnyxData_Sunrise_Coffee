### Analysis 01 — Regional Store Distribution
**Business Question:** How are stores distributed across regions?

**Findings:**

- London has the highest number of stores, with 7 locations.
- South-East, East-of-England, Wales and Yorkshire-and-Humber each have 6 stores.
- Store presence varies across regions.

Business Insight:
London has the largest store presence. However, store count alone does not indicate profitability or operational efficiency. Further analysis of revenue, costs and profit margins is required


### Analysis 02 — Missing Value Assessment

**Objective:** Evaluate data completeness in the store dimension table.

**Finding:** No NULL values were identified in the `city`, `store_format`, `monthly_rent_gbp`, and `staff_headcount` columns.

**Interpretation:** The four examined attributes are complete with respect to SQL NULL values. Additional validation is required to identify potential duplicates, invalid values, and inconsistencies.


### Analysis 03 — Duplicate Store Assessment

**Finding:** No duplicate combinations of `store_name` and `city` were identified across the 60 store records.

**Interpretation:** No exact duplicates were detected using these two attributes. Further standardization checks may be needed to identify inconsistently formatted store names.


### Analysis 04 — Descriptive Statistics of Store Operations

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


# Analysis 05 — Regional Operating Cost Assessment

**Project:** Sunrise Coffee Chain Analytics  
**Analysis Scope:** 60 Stores Across 12 UK Regions  
**Data Source:** `dim_store`  
**Methodology:** Regional Aggregation and Comparative Cost Analysis

## 1. Executive Summary

This analysis evaluates regional differences in rental and staffing expenditure across Sunrise Coffee's 60-store network, identifying cost concentrations, structural variations, and areas requiring further financial investigation.

The findings reveal significant disparities in store-level expenditure, with London recording the highest average combined monthly rental and staffing cost at **£32,816.57**, approximately **27.1% above the company-wide store average of £25,822.99**.

In contrast, Northern Ireland demonstrates the lowest average combined cost at £19,837.85, highlighting a substantial geographical cost differential.

However, lower operating expenditure does not inherently indicate superior financial performance. A comprehensive evaluation of regional profitability requires integrating cost structures with revenue generation, transaction volumes, and store-level operating margins.

## 2. Key Findings

### 2.1 Regional Cost Concentration

- **London:** £32,816.57 — Highest average combined monthly cost.
- **South-West:** £27,751.63 — Second-highest combined cost.
- **Scotland:** £27,052.52 — Third-highest combined cost.
- **Northern Ireland:** £19,837.85 — Lowest combined cost.

London's average combined expenditure exceeds Northern Ireland's by **£12,978.72 per store per month**, representing a 65.4% cost premium relative to Northern Ireland.

This significant disparity suggests that location-specific cost structures warrant further investigation before evaluating store efficiency or expansion opportunities.

### 2.2 Rental Cost Disparities

London records the highest average monthly rent at **£11,806.31**, approximately 82.6% above the company-wide average of £6,467.03.

Rental expenditure also accounts for approximately 36% of London's combined rental and staffing costs.

South-East follows with an average monthly rental expense of £8,233.49. However, its relatively lower staffing expenditure results in a substantially lower combined cost of £24,930.23.

**Analytical Interpretation:**

Rental expenditure appears to be a major contributor to London's elevated cost structure. Nevertheless, without incorporating revenue per store, store size, and customer transaction volume, it is not possible to determine whether these costs are commercially justified.

### 2.3 Staffing Cost Variations

Interestingly, London does not record the highest staffing expenditure despite having the highest overall combined cost.

North-West leads in average monthly staffing expenses at **£21,417.26**, compared with London's £21,010.26.

This finding indicates that staffing expenditure does not necessarily follow the same regional pattern as rental costs.

Potential explanatory factors include differences in staffing levels, wage structures, employee working hours, and store operating requirements. These factors require further validation.

## 3. Business Implications and Risk Assessment

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

## 4. Strategic Recommendations

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

## 5. Analytical Limitations

The analysis is based on store-level rental and staffing information available in `dim_store`.

The combined cost metric includes only these two expense categories and should not be interpreted as total operating expenditure.

Furthermore, the dataset does not establish causal relationships between geographic location, expenditure, and financial performance.

Regional averages may also conceal substantial variation between individual stores. The results represent the available store-level cost attributes rather than a verified monthly financial time series.

Consequently, no definitive conclusions regarding operational efficiency, profitability, or expansion suitability can be drawn from this analysis alone.

## 6. Conclusion and Next Steps

The analysis identifies material regional differences in Sunrise Coffee's rental and staffing cost structures, with London emerging as the highest-cost region and Northern Ireland as the lowest.

The findings demonstrate that cost structures vary considerably across the store network. However, expenditure alone is an insufficient measure of operational performance.

**The central business question is not which regions are the cheapest to operate in, but which regions generate the strongest financial returns relative to their cost structures.**

The next phase will integrate the regional cost assessment with store-level financial performance data to evaluate revenue generation, net profitability, and operating margins.

This will support more evidence-based recommendations concerning cost optimization, resource allocation, and future investment priorities.



### Analysis — Product Launch Date Completeness Assessment

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


### Analysis — Date Dimension Data Quality Assessment

**Objective**

To evaluate the completeness, uniqueness, and date coverage of the `dim_date` table and identify potential issues affecting time-based business analysis.

**Key Findings**

- **Total Records:** 730
- **Distinct Dates:** 730
- **NULL Date Values:** 0
- **Date Range:** January 1, 2023 – December 30, 2024
- **Missing Calendar Date:** December 31, 2024

**Business Insights**

The analysis confirms that all 730 records contain unique, non-NULL date values, indicating satisfactory data integrity at the record level.

However, the dataset does not fully cover the 2023–2024 calendar period. As 2024 is a leap year, the two-year period contains 731 days.

The absence of December 31, 2024, represents a potential completeness issue that may affect year-end sales reporting, daily performance comparisons, and time-based analysis.

**Recommendations**

1. Verify whether December 31, 2024, was intentionally excluded from the reporting period.
2. Examine the daily sales dataset for transactions associated with the missing date.
3. Validate date relationships between the dimension and fact tables.
4. Establish automated calendar completeness checks for future reporting periods.

**Conclusion**

The date dimension contains no duplicate or NULL date values. Nevertheless, one calendar date is missing from the expected two-year reporting period.

Further investigation is required to determine whether this omission affects financial reporting or is consistent with the intended dataset coverage.

**Next Step:** Validate the relationship between `dim_date` and `fact_daily_sales` before conducting time-series analysis.
