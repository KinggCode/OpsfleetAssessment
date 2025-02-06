resource "aws_budgets_budget" "default_savings_plan_utilization" {
  # ...
  name              = "${var.budget_name}"
  budget_type  = "${var.budget_type}"
  limit_amount = "${var.limit_amount}"
  limit_unit   = "${var.limit_unit}"
  time_unit = "${var.time_unit}"

  cost_types {
    include_credit             = var.include_credit
    include_discount           = var.include_discount
    include_other_subscription = var.include_other_subscription
    include_recurring          = var.include_recurring
    include_refund             = var.include_refund
    include_subscription       = var.include_subscription
    include_support            = var.include_support
    include_tax                = var.include_tax
    include_upfront            = var.include_upfront
    use_blended                = var.use_blended
  }


  notification {
    comparison_operator        = "${var.comparison_operator}"
    threshold                  = var.threshold
    threshold_type             = "${var.threshold_type}"
    notification_type          = "${var.notification_type}"
    subscriber_email_addresses = var.subscriber_email_addresses
  }


}