variable "lambda-role-arn" {}

resource "aws_lambda_function" "LeftLambda" {
  function_name = "LeftLambda"
  handler = "com.lewandowski.LeftLambda::handleRequest"
  role = "${var.lambda-role-arn}"
  runtime = "java8"
  s3_bucket = "715605258151-jars"
  s3_key    = "zwrotowiadczenia.zip"
}
