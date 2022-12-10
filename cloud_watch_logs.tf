resource "aws_cloudwatch_log_group" "log_group" {
  name = var.vpc_flow_logs_cwatch_group_name
}