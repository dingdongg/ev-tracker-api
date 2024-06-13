resource "aws_api_gateway_rest_api" "ev_tracker" {
    name = "EvTrackerAPIGateway"
    binary_media_types = [
        "multipart/form-data",
        "application/octet-stream",
    ]

    lifecycle {
        create_before_destroy = true
    }
}

resource "aws_api_gateway_resource" "ev_tracker" {
    parent_id = aws_api_gateway_rest_api.ev_tracker.root_resource_id
    path_part = "post-savefile"
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_resource" "save" {
    parent_id = aws_api_gateway_rest_api.ev_tracker.root_resource_id
    path_part = "save"
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_method" "ev_tracker" {
    authorization = "NONE"
    api_key_required = true
    http_method = "POST"
    resource_id = aws_api_gateway_resource.ev_tracker.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_method" "save" {
    authorization = "NONE"
    api_key_required = true
    http_method = "POST"
    resource_id = aws_api_gateway_resource.save.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
}

resource "aws_api_gateway_integration" "ev_tracker" {
    http_method = aws_api_gateway_method.ev_tracker.http_method
    integration_http_method = aws_api_gateway_method.ev_tracker.http_method
    resource_id = aws_api_gateway_resource.ev_tracker.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
    type = "AWS_PROXY"

    uri = aws_lambda_function.ev_tracker_api.invoke_arn
    content_handling = "CONVERT_TO_BINARY"
}

resource "aws_api_gateway_integration" "save" {
    http_method = aws_api_gateway_method.save.http_method
    integration_http_method = aws_api_gateway_method.save.http_method
    resource_id = aws_api_gateway_resource.save.id
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id
    type = "AWS_PROXY"

    uri = aws_lambda_function.ev_tracker_api.invoke_arn
}

resource "aws_api_gateway_deployment" "ev_tracker" {
    rest_api_id = aws_api_gateway_rest_api.ev_tracker.id

    triggers = {
        // to force re-deployment without changing these values,
        // use the "-replace" option with "terraform apply"
        // https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment#triggers
        redeployment = sha1(jsonencode([
            aws_api_gateway_resource.ev_tracker.id,
            aws_api_gateway_resource.save.id,
            aws_api_gateway_method.ev_tracker.id,
            aws_api_gateway_method.save.id,
            aws_api_gateway_integration.ev_tracker.id,
            aws_api_gateway_integration.save.id,
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
}

resource "aws_api_gateway_usage_plan" "ev_tracker" {
    name = "ev tracker api usage"
    description = "generated via terrafrorm"

    api_stages {
        api_id = aws_api_gateway_rest_api.ev_tracker.id
        stage = aws_api_gateway_stage.ev_tracker.stage_name
    }

    quota_settings {
        limit = 100000
        period = "MONTH"
    }

    throttle_settings {
        burst_limit = 500
        rate_limit = 1000
    }

    lifecycle {
        create_before_destroy = true
    }
}

data "aws_api_gateway_api_key" "api_key" {
    id = "o8phgt32t9"
}

resource "aws_api_gateway_usage_plan_key" "ev_tracker" {
    key_id = data.aws_api_gateway_api_key.api_key.id
    key_type = "API_KEY"
    usage_plan_id = aws_api_gateway_usage_plan.ev_tracker.id
}

output "apigw_url" {
    description = "deployed API Gateway URL"
    value = "${aws_api_gateway_stage.ev_tracker.invoke_url}${aws_api_gateway_resource.ev_tracker.path}"
}

output "apigw_api_key" {
    sensitive = true
    description = "EV Tracker API Key"
    value = data.aws_api_gateway_api_key.api_key.value
}