resource "aws_api_gateway_rest_api" "ev_tracker" {
    name = "EvTrackerAPIGateway"
    binary_media_types = [
        "multipart/form-data",
    ]
}

resource "aws_api_gateway_resource" "ev_tracker" {
    parent_id = aws_api_gateway_rest_api.ev_tracker.root_resource_id
    path_part = "post-savefile"
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_method" "ev_tracker" {
    authorization = "NONE"
    http_method = "POST"
    resource_id = aws_api_gateway_resource.ev_tracker.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_integration" "ev_tracker" {
    http_method = aws_api_gateway_method.ev_tracker.http_method
    integration_http_method = aws_api_gateway_method.ev_tracker.http_method
    resource_id = aws_api_gateway_resource.ev_tracker.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
    type = "AWS_PROXY"
    credentials = aws_iam_role.ev_tracker.arn

    uri = aws_lambda_function.ev_tracker_api.invoke_arn
    content_handling = "CONVERT_TO_BINARY"
}

resource "aws_api_gateway_deployment" "ev_tracker" {
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id

    triggers = {
        // to force re-deployment without changing these values,
        // use the "-replace" option with "terraform apply"
        // https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment#triggers
        redeployment = sha1(jsonencode([
            aws_api_gateway_resource.ev_tracker.id,
            aws_api_gateway_method.ev_tracker.id,
            aws_api_gateway_integration.ev_tracker.id,
        ]))
    }

    // recommended as per AWS provider docs
    lifecycle {
        create_before_destroy = true 
    }
}

variable "stage_name" {
    type = string
    default = "ev_tracker"
}

resource "aws_api_gateway_stage" "ev_tracker" {
    deployment_id = aws_api_gateway_deployment.ev_tracker.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
    stage_name = var.stage_name
    depends_on = [ aws_cloudwatch_log_group.ev_tracker ]
}

output "deployed_api_gateway" {
    description = "ID of deployed API gateway"
    value = aws_api_gateway_rest_api.ev_tracker.id
}