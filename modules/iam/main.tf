# resource "aws_iam_policy" "iam_policy" {
#   name        = var.policy_name
#   policy      = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Effect = "Allow"
#         Action = [
#           "route53:GetHostedZone",
#           "route53:ListHostedZonesByName",
#           "route53:CreateHostedZone",
#           "route53:DeleteHostedZone"
#         ]
#         Resource = "*"
#       }
#     ]
#   })
# }

# resource "aws_iam_user_policy_attachment" "iam_attachment" {
#   user       = "maria_laura"
#   policy_arn = aws_iam_policy.iam_policy.arn
# }

resource "aws_iam_policy" "iam_policy" {
  name        = var.policy_name
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:RunInstances",
          "ec2:TerminateInstances",
          "ec2:DescribeInstances",
          "ec2:CreateSecurityGroup",
          "ec2:AuthorizeSecurityGroupIngress",
          "ec2:CreateRouteTable",
          "ec2:CreateRoute",
          "ec2:CreateSubnet",
          "ec2:CreateInternetGateway",
          "ec2:AttachInternetGateway",
          "ec2:DescribeVpcs",
          "ec2:DescribeSecurityGroups",
          "ec2:DescribeRouteTables",
          "ec2:DescribeSubnets",
          "ec2:DescribeInternetGateways",
          "ec2:CreateTags",
          "ec2:DescribeTags",
          "ec2:DescribeAvailabilityZones",
          "ec2:DescribeRegions",
          "ec2:DescribeImages",
          "ec2:DescribeInstanceStatus",
          "ec2:DescribeInstanceTypes",
          "ec2:CreateVpc",
          "ec2:DeleteVpc",
          "ec2:DeleteSubnet",
          "ec2:DeleteRouteTable",
          "ec2:DeleteInternetGateway",
          "ec2:DetachInternetGateway",
          "ec2:DeleteSecurityGroup",
          "ec2:CreateKeyPair",
          "ec2:DeleteKeyPair",
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "iam_policy_attachment" {
  user       = "maria_laura"
  policy_arn = aws_iam_policy.iam_policy.arn
}
