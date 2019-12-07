## This Profile contains some of the projects implemented during Blossom Academy Data Engineering Cohort for Fall 2019.

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



### Project 2 :  Batch Processing for Data Mining

**Purpose:**

The aim of this project is to investigate the top keywords companies within various cities in the US require data science candidates to have in their resume.

**Tools Used:**
- Jupyter Notebook
- Pandas
- Pyspark
- Amazon Simple Storage Service(S3)
 
**Task:**

1. Load the data scientist job market dataset and us stocks datasets from the s3 bucket *‘s3://blossom-data-engs’* onto your computer
2. Read the data with pyspark
3.  Read the alldata.csv from the data scientist datasets
4. Join the 2 datasets.
5. Write a function to generate n-grams (unigram & bigram) from a given text/description. 
6. Write another function which uses the function from (5) to create 2 spark data frames which have 3 columns in the order of frequency: 
{Ngram, City, Frequency}
{Ngram, Industry, Frequency}



### Project 3
