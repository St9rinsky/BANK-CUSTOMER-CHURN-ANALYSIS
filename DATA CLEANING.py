import pandas as pd

# Loading the dataset
file_path = r"C:\Users\XUser\Documents\PROJECTS\churn\customerchurn.csv"
data = pd.read_csv(file_path)

# Mapping of 1 and 0 as Yes or No for credit_card
data['credit_card'] = data['credit_card'].map({1: 'Yes', 0: 'No'})

# Mapping of 1 and 0 to Active or Inactive for active_member
data['active_member'] = data['active_member'].map({1: 'Active', 0: 'InActive'})

# Mapping of 1 and 0 to Left or Stayed for churn
data['churn'] = data['churn'].map({1: 'Left', 0: 'Stayed'})

# Rounding of float columns to the nearest whole number
data['balance'] = data['balance'].round(0)
data['estimated_salary'] = data['estimated_salary'].round(0)

transformed_file_path = r"C:\Users\XUser\Documents\PROJECTS\churn\transformed_customerchurn.csv"
data.to_csv(transformed_file_path, index=False)

print(f"Cleaned dataset saved to: {transformed_file_path}")


