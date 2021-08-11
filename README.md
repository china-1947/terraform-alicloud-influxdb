Alicloud InfluxDB Terraform Module On Alibaba Cloud

terraform-alicloud-influxdb
---


Terraform module which creates Influx DB instance on Alibaba Cloud.

These types of resources are supported:

* [alicloud_tsdb_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/tsdb_instance)

----------------------

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g., main.tf

    ```
      module "influxdb" {
      source              = "../"
      name                = "slb-rule-basic-config"
      domain              = "*.test.com"
      cookie              = "cookie-test"
      health_check_uri    = "/test"
      health_check_domain = "test"
      }
    ```

2. Setting `access_key` and `secret_key` values through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY
    - ALICLOUD_REGION

## Inputs

| Name | Description | Type | Required | Default |
|------|-------------|:----:|:-----:|:-----:|
| zone_id | The instance zone ID. | string | yes | `cn-hangzhou-g` | 
| vpc_cidr_block | The specification of the vpc cidr block. | string | yes | `172.16.0.0/16` | 
| vpc_name | The specification of the vpc name. | string | yes | `tf-testaccTsdbInstance` | 
| vswitch_cidr_block | The specification of the vswitch cidr block. | string | yes | `172.16.0.0/24` |
| payment_type | The specification of the payment type. | string | yes | `PayAsYouGo` | 
| instance_storage | The specification of the instance storage. | string | yes | `50` | 
| instance_class | The specification of the instance class. | string | yes | `tsdb.1x.basic` | 
| engine_type | The specification of the engine type. | string | yes | `tsdb_tsdb` |
| instance_alias | The specification of the instance alias. | number | yes | `tf-testaccTsdbInstance` | 

## Outputs

| Name | Description |
|------|-------------|
| this_id | The instance ID |
| this_vswitch_id | The vswitch ID |
| this_vpc_id | The VPC ID |

Authors
-------
Created and maintained by He Guimin(@xiaozhu36, heguimin36@163.com)

Reference
---------

* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
