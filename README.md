# Swiggy Restaurant Data Analysis (SQLite)
## 📌 Project Overview
An exploratory data analysis (EDA) project using SQLite to uncover key insights from Swiggy restaurant data. This project focuses on writing clean, structured SQL queries to analyse restaurant ratings, pricing trends, popular cuisines, and city-wise distributions.

## 🛠️ Tools & Technologies
* *Database:* SQLite
* *SQL Client:* DB Browser for SQLite
* *Version Control:* GitHub

## 📂 Repository Contents
* Swiggy_analysis.sql – Contains all the SQL queries used for data exploration and analysis.
* README.md – Project documentation and summary.

## 🔍 Key Questions Answered
1. Which cities/localities offer the best value for money (highest average rating at the lowest average cost)?
2. Which top-performing restaurants hold a rating of 4.5 or above with over 1,000 customer ratings?
3. Which cuisines achieve the highest average customer ratings?
4. Which top 5 cities/localities lead in average restaurant ratings (among areas with 50+ listings)?
5. What are the most popular cuisines listed on Swiggy across India?
6. Which cities/localities have the highest number of listed restaurants?

## 💡 Key Findings
* *Best Value for Money:* *Mylapore, Chennai* leads with a *4.23* avg rating at *₹313* avg cost.
* *Top-Rated Popular Spots:* Dessert brands dominate the 4.5+ rating (1K+ reviews) tier, led by *NIC Natural Ice Creams* (4.7, ₹120).
* *Highest-Rated Cuisine:* *Ice Cream, Desserts* earns the highest avg rating (*4.36* across 1,046 outlets).
* *Top-Rated Localities:* *Mylapore, Chennai* (*4.23) leads, closely followed by **South Kolkata, **Frazer Town, and **Adyar* (*4.22*).
* *Most Popular Cuisine:* *North Indian, Chinese* ranks #1 across India with *2,911 listings*.
* *Highest Restaurant Density:* *Bikaner* leads single entries (*850), while **Bangalore* dominates overall with 4 localities in the top 5

## 🚀 How to Run This Project
1. Download or clone this repository to your local machine.
2. Open *DB Browser for SQLite* (or any SQLite-compatible environment).
3. Import the Swiggy dataset into a local SQLite database.
4. Open Swiggy_analysis.sql and execute the queries to view the results.
