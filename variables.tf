variable "vpc_flow_logs_iam_role_name" {
    type = string
    description = "Iam role  to access Cloudwatch."
    default = "flow-logs-cloud-watch-role"
}

variable "vpc_flow_logs_iam_policy_name" {
    type = string
    description = " Iam policy to create logs in cloudwatch."
    default = "flow-logs-cloud-watch-policy"
}

variable "vpc_flow_logs_cwatch_group_name" {
    type = string
    description = "cloud watch group to seperate the logs."
    default = "flow-logs-cloud-watch"
}

variable "vpc_id" {
    type = string
    description = "vpc id details"
}

variable "cloud_watch_traffic_type" {
    type = string
    description = "Cloud Watch traffic type ACCEPT/REJECT/ALL"
    default = "ALL"
}