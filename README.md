

**Retail Supply Chain Sales Analysis**

**Overview**

This project analyzes a retail supply chain sales dataset to uncover performance patterns across products, customers, regions, discounts, and shipping operations. The goal is simple: break down what’s driving revenue, what’s killing profit, and where operational gaps show up.

The analysis uses MySQL, Python (EDA), and Power BI to turn raw order data into actionable insights.


**Dataset**

The dataset contains detailed order-level records covering order and shipment details, customer segments, product hierarchy (category, sub-category, product name), and key sales metrics such as sales, quantity, discount, profit, returned items, and delivery time in days. This project uses the Retail-Supply-Chain-Sales-Dataset.xlsx file included in the repository as the primary data source.


**Tools & Technologies
**
**MySQL** → Data extraction and transformation

**Python** → Exploratory data analysis (EDA)

**Power BI** → Dashboard and visual analytics

**Excel** → Source dataset


**SQL Work**

The project includes MySQL queries for all analyses, including:

⦁	Aggregated KPI queries

⦁	CTE-based trend calculations

⦁	Discount and profitability breakdowns

⦁	Product and customer ranking queries

A full set of SQL scripts is included in the /sql folder.


**Power BI Dashboard**

An interactive report was built to surface the findings:

⦁	KPIs (Revenue, Profit, Quantity, Return %)

⦁	Product & customer leaderboards

⦁	Geo heatmaps

⦁	Monthly sales trends

⦁	Discount & profit correlation visual

⦁	Shipping performance breakdown


**Results**

The final analysis highlights:

⦁	Strong revenue concentration in a small set of products

⦁	Segments with high value and segments that drain margin

⦁	Cities and regions that consistently underperform

⦁	Discounts that directly cut profit

⦁	Shipping modes that correlate with slower delivery

⦁	Return patterns tied to specific product categories

These findings translate into clear operational recommendations around pricing, inventory planning, and customer targeting.


**Next Steps**

⦁	Predictive modeling for demand or profitability

⦁	Customer segmentation clustering

⦁	Shipping carrier optimization

⦁	Automated ETL pipeline for updated dashboards

