# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "jf_log_group" {
  name              = "/ecs/jf-app"
  retention_in_days = 30

  tags = {
    Name = "jf-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "jf_log_stream" {
  name           = "jf-log-stream"
  log_group_name = aws_cloudwatch_log_group.jf_log_group.name
}

