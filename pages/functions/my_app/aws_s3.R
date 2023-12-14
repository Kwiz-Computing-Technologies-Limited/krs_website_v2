options(timeout = 10000000000)
# install and load the aws.s3 package
# install.packages("aws.s3")
library(aws.s3)

# set your AWS credentials and region
Sys.setenv(
  AWS_ACCESS_KEY_ID = "AKIAYHNLKK7CPEECBD64",
  AWS_SECRET_ACCESS_KEY = "iEINhI6d08m/Vy5PGkpwf4mkO/O3hr/c0FAJTq/7",
  AWS_DEFAULT_REGION = "us-east-1"
)




# define the file path, bucket name, and object key
file_path <- list(
  list(path = "/Users/kwizera.jvk/Downloads/biodiversity-data/multimedia.csv.gz",
       object = "multimedia.gz"),
  list(path = "/Users/kwizera.jvk/Downloads/biodiversity-data/occurence.csv.gz", 
       object = "occurence.gz"))

bucket <- "kwizcomputingtechnologies/biodiversity_data"

# upload the file to S3 using put_object with multipart upload
upload_parts = function(file_path, bucket, object) {
  put_object(
    file = file_path,
    bucket = bucket,
    object = object,
    folder = "biodiversity_data",
    multipart = TRUE,
    multipart_threshold = 100 * 1024 * 1024, # 100 MB
    multipart_chunksize = 10 * 1024 * 1024, # 10 MB
    verbose = TRUE
  )
}

for (i in seq_along(file_path)) {
  upload_parts(file_path = file_path[[i]]$path,
               bucket = bucket,
               object = file_path[[i]]$object)
}
