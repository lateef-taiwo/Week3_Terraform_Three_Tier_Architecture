terraform {
  backend "s3" {
    bucket = "state-file-bucket-3965"
    key    = "backend/test.tfstate"
    region = "us-east-1"
    dynamodb_table = "DynamoDB-state-lock"
  }
}