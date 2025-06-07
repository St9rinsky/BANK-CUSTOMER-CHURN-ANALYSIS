# BANK-CUSTOMER-CHURN-ANALYSIS

## PROJECT BACKGROUND
A major retail bank with a national footprint has been experiencing high churn rates for their standard recently and the customer retention manager has aproached the data team with concerned regarding the issue of retaining customers in an increasingly competitive environment. The manager would like the data team to investigate the underlying factors responsible for the high increase in churned customers

## EXECUTIVE SUMMARY
This Project was initiated in responce to concerns from the customer retention manager of a top bank with regards to high churn rates recently experinced. The stakeholder wanted to understand the cause behind the increased churn rates and identify ways in which the rates can be reduced.

To address this, a comprehensive analysis was onducted using data provided by the back which included metrics such as the number of products the customers had at the time,Churn status,activity status and customer demographics such as age and gender.The object was to uncover patterns and root causes that caused customers to churn.

Key findings from the analysis highlighted specific areas that had high contributions to the high churn rates, such as customers who recently joined the bank as per tenure and customers with low credit scores.The analysis also revealed that majority of the customers had only 1 product which had significantly higher churn rates compared to customers with more that 1 product, further analysis reaveled that middle aged customers also churned more. Based on these insights the data team prescribed offering customers milestone rewards based on improving credit scores upon completion and introduce loyalty programs that reward long term usage with rewards and exclusive discounts. The team also adviced on suggesting additonal products and services based on user ativity.

![semantic_model](https://github.com/user-attachments/assets/838424c3-c350-4e70-b852-9ca53766eeb5)
Star schema for data

##  INSIGHTS DEEP DIVE
## Insights based on customer demographics

![image](https://github.com/user-attachments/assets/8834c88c-032e-42e0-9287-59b2a7364133)


* Customer churn rates exponentially increase based on age and peak off at age 50 and the proceeds to decrease from there on.
* Majority of the customer base are young people from age 20 to 40.
* Majority of the customers (50%) are based in France
* InActive customers Significantly churn more with churn rates of 27% whilest Active Customers churn less at rates of 14%
* Females tend to have a higher churn rate of 25% compares to males with a churn rate of 17%
  
## Insights based on Services provided

![image](https://github.com/user-attachments/assets/cf84f03f-7ad8-490e-b713-0426b08d8aff)

* Customers with none to lower credit score tend to churn more, however majority of the customers already have an an average credit score between 400 and 600.
* Customers with only 1 product have a significantly high churn rate of 28% compared to those with 2 products with cchurn rate of 8%.
* Customers with more than 2 products are very few and tend to churn more.
* The longer a customer is with the bank the less likely they are to churn, as there is an average decline in churn with increased tenure
* Majority of the customer base have credit cards.

## Insights summarised

* The bank has a low credit score requirement for getting a credit card as 70%  of the total customers have one including those with low to no credit, this attracts a lot of the youth who are starting out to improve their credit. The low credit score requirement however is a double edged sword as it can also attract individuals with bad credit history, and this could be a reason why majority of customers with only 1 product churn more as they fail to gather the requirement of above 600 credit score for a second product and as such leave.

The data also shows that customers who managed to get a second product are happy and churn less, however those with 3 or more are very few and churn more which suggests the benefits do not scale per products
   
## reco
