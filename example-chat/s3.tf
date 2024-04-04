resource "aws_s3_bucket" "serverless_chat" {
  bucket = "${var.project_name}-${var.stage}-serverless-chat"

  tags = {
    Name = "${var.project_name}-${var.stage}-serverless-chat"
  }
}