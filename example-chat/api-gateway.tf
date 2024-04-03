resource "aws_apigatewayv2_api" "this" {
  name                       = "${var.project_name}-${var.stage}-api"
  protocol_type              = "WEBSOCKET"
  route_selection_expression = "$request.body.action"
}

resource "aws_apigatewayv2_stage" "this" {
  api_id = aws_apigatewayv2_api.this.id
  auto_deploy = true
  name   = "$default"
}