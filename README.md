# CREDIT_RISK_ANALYSIS
Credit Risk Analysis project using Python, SQL, Excel, and Power BI to analyze borrower and loan data, identify default patterns, and build an interactive dashboard with key risk metrics and insights.
# Credit Risk Analysis

## About the Project

I created this project to understand how different borrower and loan characteristics can be used to analyze credit risk.

The main goal was to explore the data, identify patterns related to loan defaults, and build an interactive Power BI dashboard that makes those patterns easier to understand.

This project was also a practical way for me to apply the data analytics skills I have been learning, especially Python, SQL, Excel, and Power BI.

---

## What I Wanted to Find

While working on the project, I wanted to answer questions such as:

- How many applicants are in the dataset?
- What is the overall default rate?
- How does default rate change across different loan grades?
- How does the average loan amount vary across income groups?
- How does the loan-to-income relationship relate to default risk?
- Which risk segments have more applicants?

---

## Dataset

The dataset contains information about borrowers, their income, employment and credit history, along with details about their loans.

Some of the important columns include:

- Age
- Income
- Home Ownership
- Employment Length
- Loan Intent
- Loan Grade
- Loan Amount
- Interest Rate
- Loan Status
- Loan-to-Income Percentage
- Previous Default History
- Credit History Length

I also created a few additional categories such as income group, loan-income group, and risk segment to make the analysis easier to understand.

---

## Tools I Used

- **Python** – data cleaning and initial analysis
- **SQL** – data analysis and querying
- **Excel** – checking and working with the dataset
- **Power BI** – dashboard creation and visualization

---

## What I Did

### 1. Data Cleaning

I first worked on preparing the dataset for analysis.

This included checking the data, working with missing values, reviewing data types, and creating useful categories for analysis.

### 2. Exploratory Analysis

I explored different borrower and loan characteristics to understand the data better.

I looked at things such as:

- Loan amounts
- Interest rates
- Income groups
- Loan grades
- Default status
- Risk segments

### 3. Power BI Dashboard

After preparing the data, I created an interactive dashboard in Power BI.

The dashboard includes:

- Total Applicants
- Total Loan Amount
- Average Interest Rate
- Default Rate
- Applicants by Risk Segment
- Default Rate by Loan Grade
- Average Loan Amount by Income Group
- Default Rate by Loan-Income Group

I also added slicers so that the data can be explored based on:

- Loan Grade
- Loan Intent
- Home Ownership
- Risk Segment

---

## Key Numbers

The final dataset contains **32,416 applicants**.

Some of the main metrics from the dashboard are:

| Metric | Value |
|---|---:|
| Total Applicants | 32,416 |
| Total Loan Amount | 310,994,100 |
| Average Interest Rate | 11.02% |
| Overall Default Rate | 21.87% |

---

## What I Learned

This project helped me understand that data analysis is not just about creating charts.

A large part of the work was making sure the data was clean, choosing the right calculations, and then deciding how to present the information in a way that someone else can understand quickly.

I also got more comfortable working with Power BI measures, filters, and different types of visualizations.

One thing I particularly learned from this project was the importance of choosing the right aggregation. For example, since loan status is represented as 0 and 1, using an average allows it to be interpreted as a default rate.

---

## Dashboard

Here is a preview of my Power BI dashboard:

![Credit Risk Dashboard](Images/credit_risk_dashboard.png)

The `.pbix` file is also included in this repository for reference.

---

## Conclusion

This project gave me hands-on experience working through a data analytics project from data preparation to visualization.

My main focus was to keep the analysis practical and easy to understand rather than making it unnecessarily complicated.

I would also like to build on this project in the future by exploring more detailed risk patterns and adding further analysis as I continue improving my data analytics skills.
