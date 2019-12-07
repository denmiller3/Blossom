### Project 1 : ETL Pipeline Using Pandas.

**Purpose:**
The aim of this project was to build a basic **ETL pipeline** to read data from **Amazon Simple Storage Service(S3)**, transform this data, then load the output into an S3 Bucket.

**Tools used :**
- Jupyter Notebook
- Pandas
- Amazon Simple Storage Service(S3)

**Task:**
1. Write a python script with the following features; 
2. Download the 7+ Million Dataset from S3 *[bucket: blossom-data-engs key:-project1/free-7-million-company-dataset.zip].*
3. Read the file with pandas.
4. Filter out companies without a domain name using pandas.
5. Write out the output in the following formats (parquet, Json)
6. Upload the resulting 3 file to your S3 buckets **blossom-data-eng-dennis**.
