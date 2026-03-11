# Online Retail Return Risk Profitability Analysis
In this project, I analyzed online retail transaction data to understand product return patterns and how returns affect business profitability.
The main goal of this analysis was to identify high return risk products, customers, and regions and evaluate how product returns affect revenue and profit.
I used Excel, SQL, and Power BI to clean the data, perform analysis, and build dashboards.

## Business Problem
Online retail companies often face high product return rates, which can significantly reduce revenue and increase operational costs.
Understanding **why products are returned**, which **customers return the most**, and which **products have the highest return loss** is important for improving profitability.
This project aims to analyze return patterns and identify key factors that contribute to high return losses.

## Data Cleaning & Preparation
Before analysis, the dataset was cleaned and prepared using Excel and SQL:
- Removed cancelled transactions
- Handled missing Customer IDs
- Converted Invoice Date to proper date format
- Calculated Total Sales and Return Amount
- Created return indicators to identify returned orders
These steps ensured the dataset was accurate and ready for analysis.

## Project Overview
Product returns are a common challenge in online retail businesses. High return rates can reduce revenue, increase operational costs, and affect overall profitability.
In this project, I analyzed online retail transaction data to:
- Measure the overall return rate
- Identify products with high return losses
- Analyze customer return behavior
- Understand regional return patterns
- Evaluate how returns affect net revenue
Using SQL and Power BI, I created dashboards that help monitor **return risk and profitability metrics**.

## Tools Used
- Excel – Data cleaning and preparation
- SQL – Data analysis and KPI calculations
- Power BI – Dashboard development and visualization

## Dataset
The dataset contains 541,909 retail transaction records from an online retail store. It includes information about customer purchases, product details, sales values, and returned items.
The dataset contains the following fields:
- Invoice Number
- Product Code
- Product Description
-Quantity
-Unit Price
-Customer ID
-Country
-Invoice Date
This data was used to analyze sales performance, product returns, and profitability impact across customers, products, and countries.

## Dashboard
This dashboards help shows return risk patterns across Customers, Product Categories, and Countries.
### Retail Overview Dashboard
This dashboard gives an overall view of Total Sales, Return Loss, Net Revenue, and Return Rate.
![Retail Overview Dashboard](dashboard/retail_overview_dashboard.png)
### Retail Risk Drivers Dashboard
This dashboard focuses on the main factors that cause Product Returns, such as High-Return Products, Customers, and Regions.
![Retail Risk Drivers Dashboard](dashboard/retail_risk_drivers_dashboard.png)

## Key KPIs
- Total Sales: 8.81M
- Total Return Loss: 597K
- Net Revenue: 8.21M
- Return Rate: 6.78%
- Total Transactions: 541,909

## Key Business Insights
- The total sales in the dataset are **8.81M**, but around **597K is lost because of Product Returns**, which reduces overall profit.
- The overall **Return Rate is 6.78%**, showing that returns have a noticeable impact on the business.
- **United Kingdom has the highest return loss (528K)** compared to other countries, making it the main region contributing to return losses.
- At the product level, **Paper Craft products have the highest return loss (~168K)**, which may indicate issues related to product quality or customer expectations.
- The analysis also shows that **a Small Number of Customers are Responsible for Many of the Returns**, which suggests that monitoring high-return customers could help reduce losses.

## Business Recommendations
- Monitor customers who frequently return products. Setting limits or reviewing high-return accounts can help reduce unnecessary return losses.
- Investigate products with the highest return losses, especially **Paper Craft items**, to understand whether the issue is related to product quality, packaging, or customer expectations.
- Focus on countries with the highest return losses, such as the **United Kingdom**, and analyze the reasons behind the higher return rates in that region.
- Improve product descriptions and images on the online store so customers clearly understand what they are buying, which may reduce incorrect purchases and returns.
- Track return patterns regularly using dashboards so the business can quickly identify high-risk products or customers and take action earlier.

## Project Workflow
- Cleaned and prepared the dataset using Excel
- Performed data analysis and calculated KPIs using SQL
- Created measures and visualizations in Power BI
- Built interactive dashboards to analyze sales performance, return loss, and risk patterns
- Generated business insights and recommendations based on the analysis

## Project Structure
- data/ – raw retail dataset
- sql/ – SQL queries used for analysis
- dashboard/ – Power BI dashboard screenshots
- reports/ – SQL result screenshots
- presentation/ - project presentation slides

## Skills Used
- Data Cleaning
- SQL Data Analysis
- KPI Calculation
- Return Risk Analysis
- Power BI Dashboard Development
- Business Insight Generation
