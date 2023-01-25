module "aws_s3_create" {
    source = "./modules/s3_bucket"
    bucket_name = var.root_module_s3_name
}

module "dynamo_db_create" {
    source = "./modules/DynamoDB"
    hash_key = var.root_module_hash_key
    dynamodb_name = var.root_module_dynamodb_name
}