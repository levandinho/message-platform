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
}

module "iam" {
  source = "./iam"
}