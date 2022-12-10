resource "template_file" "assume_role_template" {
    template = "${file("./templates/flow-logs-role.json")}"
}

resource "aws_iam_role" "this" {
  name = var.vpc_flow_logs_iam_role_name
  assume_role_policy ="${template_file.assume_role_template.rendered}"
  path = "/"
}

resource "aws_iam_role_policy" "this" {
  name = var.vpc_flow_logs_iam_policy_name
  role = aws_iam_role.this.id
  policy = "${file("./files/flow-logs-policy.json")}"
}