resource "aws_sqs_queue" "left_queue" {
  name = "left-queue"
}

resource "aws_sqs_queue" "right_queue" {
  name = "right-queue"
}

resource "aws_sqs_queue" "all_queue" {
  name = "all-queue"
}