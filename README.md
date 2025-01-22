# ETL Pipeline for Crowdfunding Data

## Project Overview

This project involves building an **ETL pipeline** using Python, Pandas, PostgreSQL, and Matplotlib for extracting, transforming, and loading crowdfunding data. The goal is to process raw data from Excel files into structured CSV files, then load those into a PostgreSQL database for analysis. After that, the data will be queried and visualized to gain actionable insights.

---

## Project Structure


### Part 1: **Extract and Transform Data**

- **Purpose**: Extract data from Excel files and transform it into the required structure for the database.
- **Output**:
  - A Jupyter Notebook for extracting and transforming data.
	- `ETL_Mini_Project_Starter_Code.ipynb`
  - 4 CSV files representing the transformed data ready for the database.
 	- `category.csv`
  	- `subcategory.csv`
  	- `campaign.csv`
  	- `contacts.csv`

### Part 2: **Design and Create the Database**

- **Purpose**: Design the database schema and relationships, and create the PostgreSQL database.
- **Output**:
  - ERD (Entity Relationship Diagram) as a PNG image.
  - PDF documentation of the ERD and schema design.
  - Physical ERD code for QuickDBD as a TXT file.
  - Database schema in `schema.sql`.

### Part 3: **Load Data into PostgreSQL**

- **Purpose**: Load the transformed CSV data into the PostgreSQL database using python library `pandas`.
- **Output**:
  - A Jupyter Notebook that reads each CSV and writes the data to the PostgreSQL database.
	- `load_to_postgres_notebook.ipynb`

### Part 4: **Analysis and Visualization**

- **Purpose**: Analyze the loaded data with SQL queries, followed by visualizing the results using Matplotlib.
- **Output**:
  - A `queries.sql` file with few queries.
  - A notebook that contains Exploratory Data Analysis (EDA) using Pandas and Matplotlib.
	- `analysis_notebook.ipynb`
  - Images of all charts and graphs used for data visualizations.

### Part 5: **Summarize the Project**
- **Output**:
  - A PDF write-up that summarizes the project.
	- `Crowdfunding_ETL_report.pdf`
---

## File Structure

```
/crowdfunding-etl
├── Resources/
│   ├── crowdfunding.xlsx                  	# crowdfunding excel file as source
│   ├── contacts.xlsx                      	# contacts excel file as source
│   ├── category.csv                       	# CSV for category data as output
│   ├── subcategory.csv                    	# CSV for subcategory data as output
│   ├── campaign.csv                       	# CSV for campaign data as output                              
│   └── contacts.csv                       	# CSV for contacts data as output       
├── notebooks/                  
│   ├── ETL_Mini_Project_Starter_Code.ipynb	# Jupyter Notebook for Extract and Transform excel data
│   └── load_to_postgres_notebook.ipynb    	# Jupyter Notebook for Load into Postgres
│   └── analysis_notebook.ipynb     			# Jupyter Notebook for Visualization
├── crowdfunding_db/
|   ├── crowdfunding_erd_documentation.pdf		# Documentation of ERD
|   ├── crowdfunding_erd.png         			# ERD from QuickDBD
|   ├── physical_erd.txt	               		# Physical ERD code for QuickDBD           
|   ├── Crowdfunding_db_schema.sql		        # Final version of the database schema 
|   ├── queries.sql                        		# SQL file with queries for analysis
├── visualizations/ 
|   ├── image
|   ├── image
|   ├── image
|   ├── image
├── Crowdfunding_ETL_report.pdf       			# PDF write-up             
├── README.md                 
        
```

---	

## Run The Notebooks In Sequence

- **Part 1**: Execute the notebook `ETL_Mini_Project_Starter_Code.ipynb` to extract and transform data from the Excel files into CSVs.
- **Part 3**: Run the notebook `load_to_postgres_notebook.ipynb` to load the CSVs into PostgreSQL.
- **Part 4**: Run `analysis_notebook.ipynb` for analysis and visualization, querying the data in PostgreSQL and generating charts.

---

