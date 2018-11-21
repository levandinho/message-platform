provider "aws" {
  region = "eu-west-2"
}

module "sns" {
  source = "./sns"
}

module "sqs" {
  source = "./sqs"
}