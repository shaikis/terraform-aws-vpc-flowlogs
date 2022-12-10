# terraform-aws-vpc-flowlogs
Flow logs configuration for VPC

# Usage of this module. 
```
module "vpcFlowLogs" {
    source = "git::ssh://git@github.com:shaikis/terraform-aws-vpc-flowlogs.git"
    vpc_flow_logs_iam_role_name     = ""
    vpc_flow_logs_iam_policy_name   = ""
    vpc_flow_logs_cwatch_group_name = ""
    vpc_id                          = ""
    cloud_watch_traffic_type        = "ACCEPT/REJECT/ALL"
}
```