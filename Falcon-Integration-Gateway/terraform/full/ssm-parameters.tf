resource "aws_ssm_parameter" "fig_falcon_client_id" {
	name = "FIG_FALCON_CLIENT_ID"
	description = "Falcon client ID used by the FIG service application."
	type = "SecureString"
	value = var.falcon_client_id
}

resource "aws_ssm_parameter" "fig_falcon_client_secret" {
	name = "FIG_FALCON_CLIENT_SECRET"
	description = "Falcon client secret used by the FIG service application."
	type = "SecureString"
	value = var.falcon_client_secret
}

resource "aws_ssm_parameter" "fig_app_id" {
	name = "FIG_APP_ID"
	description = "Application ID used to connect to the event stream."
	type = "String"
	value = var.app_id
}

resource "aws_ssm_parameter" "fig_severity_threshold" {
	name = "FIG_SEVERITY_THRESHOLD"
	description = "Severity threshold to meet before submitting a detection."
	type = "String"
	value = var.severity_threshold
}

resource "aws_ssm_parameter" "fig_sqs_queue_name" {
	name = "FIG_SQS_QUEUE_NAME"
	description = "Name of the SQS queue used by the FIG service application."
	type = "String"
	value = var.sqs_queue_name
}
