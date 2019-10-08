import pandas as pd
import boto3

def main():
    # eu-west-1 is the cheapest of EU regions which is closest to Ghana
    region = "eu-west-1"

    # initialized s3 resource
    s3_client = boto3.client('s3', region_name=region)

    # location constraint for s3  bucket
    location = {'LocationConstraint': region}
    bucket = 'blossom-data-engs'

    #download file to local  filesystem
    s3_client.download_file(bucket, "free-7-million-company-dataset.zip", "data.zip")

    df = pd.read_csv('data.zip', compression='zip')
    df2 = df[df.domain.notnull()]
    df2.to_parquet('Data.parquet')
    df2.to_json('Data.json.gzip', compression='gzip')

    # # create bucket, note json response
    bucket2 = "blossom-data-eng-dennis"
    s3_client.upload_file("Data.parquet", bucket2, "Data.parquet")
    s3_client.upload_file("Data.json.gzip", bucket2, "Data.json.gzip")

    




#if __name__ == "__main__":
main()
