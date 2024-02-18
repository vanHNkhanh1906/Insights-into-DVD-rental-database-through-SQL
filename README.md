# Insights-into-DVD-rental-database-through-SQL
## Overview
The project "Insights into DVD Rental Database through SQL" aims to leverage SQL queries to extract valuable insights and perform data analysis on a DVD rental database. By querying the database using SQL, the project seeks to uncover patterns, trends, and key metrics related to DVD rentals, customer behavior, movie popularity, and other relevant aspects.
## Objective & Goals
In this project, I’ll aim to answer the following questions:
* QUESTION1: What are the top and least rented (in-demand) genres and what are their total sales?
* QUESTION 2: Write a query to categorize the movies based on their length: 1 hour or less, Between 1-2 hours, Between 2-3 hours, More than 3 hours.
* QUESTION 3: Create a query that lists each customer's full name, total payment, and customer category based on their total payment amount (Bronze, Silver, Gold, and Platinum)
* QUESTION 4: How many rented films were returned late, early and on time?

**Based on the four questions provided, we can analyze several aspects related to a DVD rental business:**

* Genre Analysis: By identifying the top and least rented genres and their total sales, we can gain insights into customer preferences and trends. This analysis can help in making decisions related to inventory management, marketing strategies, and content acquisition.

* Movie Length Categorization: Categorizing movies based on their length allows us to understand the distribution of movie durations and their popularity among customers. This analysis can inform decisions related to programming schedules, pricing strategies, and audience segmentation.

* Customer Segmentation by Payment Amount: Segmenting customers into categories (Bronze, Silver, Gold, and Platinum) based on their total payment amount provides insights into customer spending behavior and loyalty. This analysis can help in designing targeted promotional offers, loyalty programs, and personalized marketing campaigns.

* Film Return Analysis: Analyzing the timeliness of film returns (late, early, and on time) provides insights into customer behavior and rental experience. This analysis can help in identifying areas for improvement in rental policies, customer service, and late fee management.

Overall, by analyzing these aspects, we can optimize various aspects of the DVD rental business, including inventory management, customer retention, revenue generation, and operational efficiency.
## Dataset
The database DvdRental has 15 tables. Below are the different tables and a brief description of them.
Link to download DVD Rental Database (https://www.postgresqltutorial.com/postgresql-sample-database/ )
* actor — contains actors data including first name and last name.
* film — contains films data such as title, release year, length, rating, etc.
* film_actor — contains the relationships between films and actors.
* category — contains film’s categories data.
* film_category — containing the relationships between films and categories.
* store — contains the store data including manager staff and address.
* inventory — stores inventory data.
* rental — stores rental data.
* payment — stores customer’s payments.
* staff — stores staff data.
* customer — stores customer’s data.
* address — stores address data for staff and customers
* city — stores the city names.
* country — stores the country names.
* language- stores moive language types.

**Here is the Schema below:**

![image](https://github.com/vanHNkhanh1906/Insights-into-DVD-rental-database-through-SQL/assets/157007573/5df279df-9a63-4656-92a5-d8dd22dfc4df)

