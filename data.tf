data "aws_availability_zone" "us-east-1a" {
  name = "us-east-1a"
}

data "aws_availability_zone" "us-east-1b" {
  name = "us-east-1b"
}

data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

data "aws_iam_policy" "cluster_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

data "aws_iam_policy" "resource_controller" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
}

data "aws_iam_policy" "worker_node_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

data "aws_iam_policy" "cni_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

data "aws_iam_policy" "container_registry_read_only_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

# data "aws_iam_policy_document" "assume_role" {
#   statement {
#     effect = "Allow"
#
#     principals {
#       type        = "Service"
#       identifiers = [
#         "pods.eks.amazonaws.com",
#         "cloud9.amazonaws.com",
#         "eks.amazonaws.com",
#         "logs.amazonaws.com",
#         "ec2.amazonaws.com",
#         "glue.amazonaws.com",
#         "cloudtrail.amazonaws.com",
#         "secretsmanager.amazonaws.com",
#         "codewhisperer.amazonaws.com",
#         "ssm.amazonaws.com",
#         "credentials.iot.amazonaws.com",
#         "lambda.amazonaws.com",
#         "application-autoscaling.amazonaws.com",
#         "kms.amazonaws.com",
#         "cloudformation.amazonaws.com",
#         "iot.amazonaws.com",
#         "elasticloadbalancing.amazonaws.com",
#         "athena.amazonaws.com",
#         "ecs.amazonaws.com",
#         "sns.amazonaws.com",
#         "iotanalytics.amazonaws.com",
#         "redshift.amazonaws.com",
#         "codedeploy.amazonaws.com",
#         "apigateway.amazonaws.com",
#         "ec2.application-autoscaling.amazonaws.com",
#         "sqs.amazonaws.com",
#         "elasticfilesystem.amazonaws.com",
#         "rekognition.amazonaws.com",
#         "kinesisanalytics.amazonaws.com",
#         "forecast.amazonaws.com",
#         "firehose.amazonaws.com",
#         "pipes.amazonaws.com",
#         "kinesis.amazonaws.com",
#         "s3.amazonaws.com",
#         "scheduler.amazonaws.com",
#         "autoscaling.amazonaws.com",
#         "sagemaker.amazonaws.com",
#         "deepracer.amazonaws.com",
#         "batch.amazonaws.com",
#         "databrew.amazonaws.com",
#         "rds.amazonaws.com",
#         "dynamodb.amazonaws.com",
#         "cognito-idp.amazonaws.com",
#         "backup.amazonaws.com",
#         "resource-groups.amazonaws.com",
#         "eks-fargate-pods.amazonaws.com",
#         "servicecatalog.amazonaws.com",
#         "ecs-tasks.amazonaws.com",
#         "codecommit.amazonaws.com",
#         "iotevents.amazonaws.com",
#         "elasticmapreduce.amazonaws.com",
#         "events.amazonaws.com",
#         "states.amazonaws.com",
#         "elasticbeanstalk.amazonaws.com",
#       ]
#     }
#
#     actions = [
#       "sts:AssumeRole",
#       "sts:TagSession"
#     ]
#   }
# }