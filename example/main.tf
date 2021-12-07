data "alicloud_tsdb_zones" "default" {}

resource "alicloud_vpc" "default" {
  cidr_block = "192.168.0.0/16"
  vpc_name       = "tf-testaccTsdbInstance"
}

resource "alicloud_vswitch" "example" {
  zone_id = data.alicloud_tsdb_zones.default.ids.0
  cidr_block        = "192.168.1.0/24"
  vpc_id            = alicloud_vpc.default.id
}
module "example" {
  source         = "../"
  vswitch_id     = alicloud_vswitch.example.id
}
