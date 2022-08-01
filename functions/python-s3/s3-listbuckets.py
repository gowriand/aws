import boto3

s3 = boto3.resource('s3')
buck_name = 'setting-scripts'


# Print out bucket names
for bucket in s3.buckets.all():
    print(bucket.name)
