
# 🎬 Netflix Movies and TV Shows Data Analysis using SQL

## 📖 Overview

This project performs a comprehensive analysis of Netflix Movies and TV Shows data using **MySQL**.  
The objective is to clean raw data and answer multiple business-driven questions using SQL.

The project demonstrates practical SQL skills including schema design, data cleaning, and analytical querying.

---

## 🎯 Objectives

- Analyze the distribution of Movies vs TV Shows
- Identify the most common ratings for Movies and TV Shows
- Analyze content based on release year, country, and duration
- Perform genre, actor, and director-based analysis
- Categorize content using keyword-based logic

---

## 🗂️ Dataset

- **Source:** Kaggle – Netflix Movies and TV Shows  
- **Dataset Link:**  
  👉 [https://www.kaggle.com/datasets/shivamb/netflix-shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- **Records:** ~8,800+
- **Format:** CSV

### 🔑 Key Columns
- show_id  
- type  
- title  
- director  
- cast  
- country  
- date_added  
- release_year  
- rating  
- duration  
- listed_in  
- description  

📁 Dataset files are excluded from version control using `.gitignore`.

---

## 🏗️ Project Structure

```

netflix-sql-project/
├── sql/
│   ├── schema.sql
│   ├── netflix_data_cleaning.sql
│   └── Netflix_business_problems&solutions.sql
├── screenshots/
│   ├── business_query_1.png
│   ├── business_query_2.png
│   └── business_query_3.png
└── README.md

```

---

## 🧱 Schema Design

Two tables are used in this project:

- **Raw Table:** Stores data exactly as loaded from the CSV file  
- **Clean Table:** Stores cleaned and transformed data for analysis  

📄 Schema definition is available in:

```

sql/schema.sql

```

---

## 🧹 Data Cleaning

Data cleaning is performed using SQL and includes:

- Trimming whitespace from text columns
- Converting empty strings to `NULL`
- Standardizing content types (`MOVIE`, `TV SHOW`)
- Converting `date_added` to DATE format
- Splitting `duration` into numeric value and unit
- Enforcing primary key on `show_id`

🛠️ Cleaning logic is implemented in:

```

sql/netflix_data_cleaning.sql

```

---

## 📊 Business Problems and Solutions

This project answers **15 real-world business questions**, such as:

1. Count the number of Movies vs TV Shows  
2. Find the most common rating for Movies and TV Shows  
3. List all movies released in a specific year  
4. Find the top 5 countries with the most content  
5. Identify the longest movie  
6. Find content added in the last 5 years  
7. Find Movies/TV Shows by a specific director  
8. List TV Shows with more than 5 seasons  
9. Count the number of content items in each genre  
10. Analyze yearly content release trends in India  
11. List all documentary movies  
12. Find content without a director  
13. Count movies featuring a specific actor in the last 10 years  
14. Identify top actors in Indian-produced movies  
15. Categorize content based on keywords in descriptions  

📂 All SQL solutions are available in:

```

sql/Netflix_business_problems&solutions.sql

```

📸 Sample outputs for selected business queries are available in the `screenshots/` folder.

---

## 🛠️ Tools and Technologies

- 🗄️ **Database:** MySQL 8  
- 🧾 **Language:** SQL  
- 🔗 **Version Control:** Git & GitHub  
- 💻 **Environment:** MySQL CLI, Windows Command Prompt  

---

## 🚀 How to Run the Project

1. ▶️ Run `schema.sql` to create database and tables  
2. 📥 Load the CSV file into the raw table  
3. 🧹 Run `netflix_data_cleaning.sql` to clean and transform data  
4. 📊 Execute queries from `Netflix_business_problems&solutions.sql`

---

## 📌 Conclusion

This project demonstrates an end-to-end SQL workflow, from schema creation and data cleaning to business-oriented data analysis.  
It showcases practical SQL skills relevant to data analyst and business intelligence roles.

---

## 👤 Author

**Varun Karle**  
GitHub: https://github.com/Varun18K
```

