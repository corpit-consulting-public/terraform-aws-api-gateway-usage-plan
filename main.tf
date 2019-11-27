resource "aws_api_gateway_usage_plan" "MyUsagePlan_1" {
  count        = "${ !var.has_quota_settings && !var.has_throttle_settings ? 1 : 0}"
  name         = "${var.name}"
  description  = "${var.description}"

  api_stages {
    api_id = "${var.api_id}"
    stage  = "${var.stage}"
  }
}


resource "aws_api_gateway_usage_plan" "MyUsagePlan_2" {
  count        = "${ var.has_quota_settings && var.has_throttle_settings ? 1 : 0 }"
  name         = "${var.name}"
  description  = "${var.description}"
  product_code = "${var.product_code}"

  api_stages {
    api_id = "${var.api_id}"
    stage  = "${var.stage}"
  }


  quota_settings {
    limit  = "${var.limit}"
    offset = "${var.offset}"
    period = "${var.period}"
  }

  throttle_settings {
    burst_limit = "${var.burst_limit}"
    rate_limit  = "${var.rate_limit}"
  }
}
