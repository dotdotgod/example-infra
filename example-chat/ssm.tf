resource "aws_ssm_parameter" "socket_api_gateway_id" {
  name  = "${var.project_name}-${var.stage}-socket-api-gateway-id"
  description = "The ID of the API Gateway for the socket service."
  type  = "SecureString"
  value = aws_apigatewayv2_api.socket.id
}