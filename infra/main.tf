provider "aws" {
  region = "eu-west-2"
}

module "sns" {
  source = "./sns"
}

module "sqs" {
  source = "./sqs"
}

module "lambda" {
  source = "./lambda"
  lambda-role-arn = "${module.iam.lambda-role-arn}"
}

module "iam" {
  source = "./iam"
}

module "s3" {
  source = "./s3"
}