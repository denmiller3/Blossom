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
