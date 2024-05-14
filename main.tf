terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_role" "lambda_role" {
    name = "lambda_exec_role"
    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action = "sts:AssumeRole"
                Effect = "Allow"
                Principal = {
                    Service = "lambda.amazonaws.com"
                }
            }
        ]
    })
}

resource "aws_iam_role_policy" "lambda_policy" {
    name = "lambda_policy"
    role = aws_iam_role.lambda_role.id

    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
            {
                Action = [
                    "logs:CreateLogGroup",
                    "logs:CreateLogStream",
                    "logs:PutLogEvents",
                ]
                Effect = "Allow"
                Resource = "*"
            },
            {
                Action = "lambda:*"
                Effect = "Allow"
                Resource = "*"
            }
        ]
    })
}

data "archive_file" "lambda_ev_tracker_api" {
    type = "zip"
    source_file = "${path.module}/src"
    output_path = "${path.module}/src.zip"
}

resource "aws_lambda_function" "ev_tracker_api" {
    function_name = "EVTrackerAPI"
    description = "Backend API for my EV Tracking application"
    role = aws_iam_role.lambda_role.arn

    runtime = "provided.al2023"
    handler = "main"
    filename = "src.zip"
    source_code_hash = filebase64sha256("src.zip")
}