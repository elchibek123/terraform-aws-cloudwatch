########## AWS CloudWatch Metric Alarm ##########

resource "aws_cloudwatch_metric_alarm" "cloudwatch_alarm" {
  count = var.create_metric_alarm ? 1 : 0

  alarm_name                = var.alarm_name
  alarm_description         = var.alarm_description
  ok_actions                = var.ok_actions
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = var.insufficient_data_actions
  metric_name               = var.metric_name
  namespace                 = var.namespace
  statistic                 = var.statistic
  period                    = var.period
  dimensions                = var.dimensions
  evaluation_periods        = var.evaluation_periods
  datapoints_to_alarm       = var.datapoints_to_alarm
  threshold                 = var.threshold
  comparison_operator       = var.comparison_operator
  treat_missing_data        = var.treat_missing_data

  tags = var.tags
}