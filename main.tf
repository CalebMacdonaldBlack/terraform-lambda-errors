resource "aws_cloudwatch_metric_alarm" "errors" {
  alarm_name = "${var.function_name}-errors"
  alarm_description = "Metric to monitor ${var.function_name} lambda errors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = 1
  metric_name = "Errors"
  namespace = "AWS/Lambda"
  period = 3600
  threshold = 0
  statistic = "Sum"

  dimensions {
    FunctionName = "${var.function_name}"
  }

  alarm_actions = [
    "${var.alarm_sns_arn}"
  ]
}

resource "aws_cloudwatch_metric_alarm" "throttles" {
  alarm_name = "${var.function_name}-throttles"
  alarm_description = "Metric to monitor ${var.function_name} lambda throttles"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = 1
  metric_name = "Throttles"
  namespace = "AWS/Lambda"
  period = 3600
  threshold = 0
  statistic = "Sum"

  dimensions {
    FunctionName = "${var.function_name}"
  }

  alarm_actions = [
    "${var.alarm_sns_arn}"
  ]
}
