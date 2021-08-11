terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.126.0"
    }
  }
}

resource "alicloud_vpc" "example" {
  cidr_block = var.vpc_cidr_block
  vpc_name   = var.vpc_name
}

resource "alicloud_vswitch" "example" {
  zone_id    = var.zone_id
  cidr_block = var.vswitch_cidr_block
  vpc_id     = alicloud_vpc.example.id
}

resource "alicloud_tsdb_instance" "example" {
  payment_type     = var.payment_type
  vswitch_id       = alicloud_vswitch.example.id
  instance_storage = var.instance_storage
  instance_class   = var.instance_class
  engine_type      = var.engine_type
  instance_alias   = var.instance_alias
}
