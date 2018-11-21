module "sqs" {
  source = "../sqs"
}

resource "aws_sns_topic" "sns-main" {
  name = "my_first_topic"
}

resource "aws_sns_topic_subscription" "sns-main-to-left-queue" {
  topic_arn = "${aws_sns_topic.sns-main.arn}"
  protocol  = "sqs"
  endpoint  = "${module.sqs.left-sqs}"
}

resource "aws_sns_topic_subscription" "sns-main-to-right-queue" {
  topic_arn = "${aws_sns_topic.sns-main.arn}"
  protocol  = "sqs"
  endpoint  = "${module.sqs.right-sqs}"
}

resource "aws_sns_topic_subscription" "sns-main-to-all-queue" {
  topic_arn = "${aws_sns_topic.sns-main.arn}"
  protocol  = "sqs"
  endpoint  = "${module.sqs.all-sqs}"
}
