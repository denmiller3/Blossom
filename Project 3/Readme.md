### Project 3 : Basic End to End ETL Pipeline using Pyspark

**Purpose:**
The aim of this project is to Extract Data(CSV), Tranform and load into Postgres Database using Pyspark.

**Tools Used:**
- Pyspark
- Pandas
- SQL
- Postgres
- Dbeaver

**Task:**
***1. Data Extraction***
- Load Datasets(questions, answers and users) using Pyspark

***2. Data Transformation***
- Select users from only one country of your choosing.
- Extract the country and city into new columns.
- Join this with the questions and only pick questions with at least 20 view_counts.
- Join the answers to the results of step 3.
- Use this to return the minimum updated_at time.

***3. Data Loading***
- Create a new schema called *stackoverflow_filtered*.
- Create one table called results. 
- Use spark to write the results into this table with the snippet below.
- Create a btree index on the reputation column within the results table.
- Create a hash index on the display_name column within the results table.
- From the results table, create a view with the column names display_name, city, questions_id where the accepted_answer_id is not null. - Make sure this view goes into the right schema.
- Create a materialized view similar to (6). They should have different names.
- In your Jupyter notebook, state the difference between views and materialized views

***4. Data Manipulation***
- How many cities appeared more than twice in your results table?
- How many unique created_at dates(not datetime) are in the result table?
- If you were to give an award to one user, who will it be? And why?

