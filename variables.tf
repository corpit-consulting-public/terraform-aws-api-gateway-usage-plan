variable "name" {
  type        = "string"
  description = "The name of the usage plan"
}

variable "description" {
  type        = "string"
  description = "The description of a usage plan"
  default     = ""
}

variable "api_stages" {
  type        = "map"
  description = "The associated API stages of the usage plan."
  default     = {}
}

variable "quota_settings" {
  type        = "map"
  description = "The quota settings of the usage plan."
  default     = {}
}

variable "throttle_settings" {
  type        = "map"
  description = "he throttling limits of the usage plan."
  default     = {}
}

variable "product_code" {
  type        = "string"
  description = "The AWS Markeplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace."
  default     = ""
}
##########################
####Api Stage Argument####

variable "api_id" {
  type        = "string"
  description = "API Id of the associated API stage in a usage plan."
  default     = ""
}

variable "stage" {
  type        = "string"
  description = "API stage name of the associated API stage in a usage plan."
  default     = ""
}
################################
####Quota Settings Arguments####

variable "limit" {
  type        = "string"
  description = "The maximum number of requests that can be made in a given time period."
  default     = "20"
}

variable "offset" {
  type        = "string"
  description = "The number of requests subtracted from the given limit in the initial time period."
  default     = "2"
}

variable "period" {
  type        = "string"
  description = "The time period in which the limit applies. Valid values are DAY, WEEK or MONTH."
  default     = "WEEK"
}

#####################################
####Throttling Settings Arguments####

variable "burst_limit" {
  type        = "string"
  description = "The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity."  
  default     = "5"
}

variable "rate_limit" {
  type        = "string"
  description = "The API request steady-state rate limit."
  default     = "10"
}

variable "has_quota_settings" {
  type        = "string"
  description = "true or false"
  default     = "false"
}

variable "has_throttle_settings" {
  type        = "string"
  description = "true or false"
  default     = "false"
}



