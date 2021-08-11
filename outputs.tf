locals {
  this_id     = alicloud_tsdb_instance.example.id
  this_vswitch_id = alicloud_vswitch.example.id
  this_vpc_id     = alicloud_vpc.example.id
}

output "this_id" {
  value = local.this_id
}

output "this_vswitch_id" {
  value = local.this_vswitch_id
}

output "this_vpc_id" {
  value = local.this_vpc_id
}
