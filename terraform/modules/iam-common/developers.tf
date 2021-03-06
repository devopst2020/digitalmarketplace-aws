resource "aws_iam_policy" "developer" {
  name = "Developer"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "autoscaling:Describe*",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "cloudwatch:List*",
        "ec2:*NetworkAcl*",
        "ec2:AllocateAddress",
        "ec2:AssociateAddress",
        "ec2:AttachVolume",
        "ec2:CreateVolume",
        "ec2:DeleteVolume",
        "ec2:Describe*",
        "ec2:DetachVolume",
        "ec2:DisassociateAddress",
        "ec2:ModifyInstanceAttribute",
        "ec2:RebootInstances",
        "ec2:ReleaseAddress",
        "ec2:RunInstances",
        "ec2:StartInstances",
        "ec2:StopInstances",
        "ec2:TerminateInstances",
        "elasticache:Describe*",
        "elasticache:List*",
        "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
        "es:Describe*",
        "es:List*",
        "events:Describe*",
        "events:List*",
        "events:TestEventPattern",
        "kms:DescribeKey",
        "kms:List*",
        "logs:Describe*",
        "logs:FilterLogEvents",
        "logs:Get*",
        "logs:TestMetricFilter",
        "rds:Describe*",
        "rds:ListTagsForResource",
        "route53:Get*",
        "route53:List*",
        "s3:Get*",
        "s3:List*",
        "sns:Get*",
        "sns:List*",
        "sqs:Get*",
        "sqs:List*"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "Bool": {
          "aws:MultiFactorAuthPresent": true
        }
      }
    }
  ]
}
EOF
}
