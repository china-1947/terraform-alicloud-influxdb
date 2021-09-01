variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
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
