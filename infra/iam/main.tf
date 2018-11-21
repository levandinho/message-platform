resource "aws_iam_role" "lambda-role" {
  name = "LambdaRole"
  assume_role_policy = "${file("${path.module}/resources/lambda-assume-role-policy.json")}"
}

resource "aws_iam_policy" "lambda-role-policy" {
  policy = "${file("${path.module}/resources/lambda-policy.json")}"
  name = "LambdaRolePolicy"
}

resource "aws_iam_role_policy_attachment" "lambda-policy-attachment" {
  policy_arn = "${aws_iam_policy.lambda-role-policy.arn}"
  role = "${aws_iam_role.lambda-role.name}"
}