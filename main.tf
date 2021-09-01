resource "alicloud_tsdb_instance" "example" {
  payment_type     = var.payment_type
  vswitch_id       = var.vswitch_id
  instance_storage = var.instance_storage
  instance_class   = var.instance_class
  engine_type      = var.engine_type
  instance_alias   = var.instance_alias
}
