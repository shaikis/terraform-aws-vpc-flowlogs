resource "aws_flow_log" "vpcflowlogs" {
  iam_role_arn    = aws_iam_role.this.arn
  log_destination = aws_cloudwatch_log_group.log_group.arn
  traffic_type    = var.cloud_watch_traffic_type
  vpc_id          = var.vpc_id
}
