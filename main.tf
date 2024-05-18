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
    source_file = "${path.module}/${local.filename}"
    output_path = "${path.module}/${local.filename}.zip"
}

resource "aws_lambda_function" "ev_tracker_api" {
    function_name = local.fn_name
    description = "Backend API for my EV Tracking application"
    role = aws_iam_role.lambda_role.arn

    runtime = local.runtime
    filename = "${local.filename}.zip"
    handler = local.handler
    source_code_hash = filebase64sha256("${local.filename}.zip")
}

variable "region" {
    default = "us-east-1"
    type = string
}

variable "accountId" {
    type = string
}

resource "aws_lambda_permission" "apigw_lambda" {
    statement_id = "AllowExecutionFromAPIGateway"
    action = "lambda:InvokeFunction"
    function_name = aws_lambda_function.ev_tracker_api.function_name
    principal = "apigateway.amazonaws.com"

    source_arn = "arn:aws:execute-api:${var.region}:${var.accountId}:${aws_api_gateway_rest_api.ev_tracker.id}/*/${aws_api_gateway_method.ev_tracker.http_method}${aws_api_gateway_resource.ev_tracker.path}"
}