resource "aws_iam_role" "role" {
  name = "ec2_s3"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
EOF
}

#needs to enable SSM
resource "aws_iam_role_policy_attachment" "node_insights" {
  role       = aws_iam_role.role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

#create instance profile using role to access a s3 bucket
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ChallengeDevops-InstanceProfile"
  role = aws_iam_role.role.name
}