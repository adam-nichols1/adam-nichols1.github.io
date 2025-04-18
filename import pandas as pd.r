import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load your dataset (e.g., 'sales_data.csv')
df = pd.read_csv('sales_data.csv')

# Data Cleaning: Handle missing values (if any)
df.fillna(0, inplace=True)

# Convert date column to datetime format (if necessary)
df['Date'] = pd.to_datetime(df['Date'])

# Analysis: Group by date or product category and calculate total sales
sales_by_date = df.groupby('Date')['Revenue'].sum()
sales_by_category = df.groupby('Category')['Revenue'].sum()

# Visualization: Line plot for sales over time
plt.figure(figsize=(10, 6))
plt.plot(sales_by_date.index, sales_by_date.values, label='Total Sales Over Time')
plt.title('Sales Performance Over Time')
plt.xlabel('Date')
plt.ylabel('Revenue')
plt.legend()
plt.grid(True)
plt.show()

# Bar plot for sales by product category
plt.figure(figsize=(10, 6))
sns.barplot(x=sales_by_category.index, y=sales_by_category.values, palette="Blues_d")
plt.title('Sales by Product Category')
plt.xlabel('Category')
plt.ylabel('Total Revenue')
plt.show()
