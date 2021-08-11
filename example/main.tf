module "influxdb" {
  source         = "../"
  instance_class = "tsdb.1x.basic"
}
