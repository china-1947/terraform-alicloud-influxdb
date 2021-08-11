variable "zone_id" {
  description = "The instance zone ID."
  type        = string
  default     = "cn-hangzhou-g"
}

variable "vpc_cidr_block" {
  description = "The specification of the vpc cidr block."
  type        = string
  default     = "172.16.0.0/16"
}

variable "vpc_name" {
  description = "The specification of the vpc name."
  type        = string
  default     = "tf-testaccTsdbInstance"
}

variable "vswitch_cidr_block" {
  description = "The specification of the vswitch cidr block."
  type        = string
  default     = "172.16.0.0/24"
}

variable "payment_type" {
  description = "The specification of the payment type."
  type        = string
  default     = "PayAsYouGo"
}

variable "instance_storage" {
  description = "The specification of the instance storage."
  type        = string
  default     = "50"
}

variable "instance_class" {
  description = "The specification of the instance class."
  type        = string
  default     = "tsdb.1x.basic"
}

variable "engine_type" {
  description = "The specification of the engine type."
  type        = string
  default     = "tsdb_tsdb"
}

variable "instance_alias" {
  description = "The specification of the instance alias."
  type        = string
  default     = "tf-testaccTsdbInstance"
}
