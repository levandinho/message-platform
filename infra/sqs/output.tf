output "left-sqs" {
  value = "${aws_sqs_queue.left_queue.arn}"
}

output "right-sqs" {
  value = "${aws_sqs_queue.right_queue.arn}"
}

output "all-sqs" {
  value = "${aws_sqs_queue.all_queue.arn}"
}