terraform {
  required_providers {
    bizflycloud = {
      version = ">= 0.0.5"
      source  = "bizflycloud/bizflycloud"
    }
  }
}

provider "bizflycloud" {
  auth_method  = "password"
  region_name  = "HN"
  email        = var.username
  password     = var.password
}

#resource "bizflycloud_cloud_database_instance" "test_instance_1" {
#  name                         = "test_tera_1"
#  flavor_name                  = "1c_2g"
#  instance_type                = "enterprise"
#  volume_size                  = 10
#  datastore_type               = "MongoDB"
#  datastore_version_id         = "b48a59df-7a71-49a2-838c-50c9369976bc"
#  network_ids                  = ["d9000861-9958-461d-889e-04eab30f6dfc"]
#  public_access                = false
#  availability_zone            = "HN1"
#  autoscaling_enable           = false
#  autoscaling_volume_threshold = 90
#  autoscaling_volume_limited   = 90
#}

#resource "bizflycloud_cloud_database_configuration" "test_configuration_1" {
#  configuration_name = "test_configuration_1"
#  parameters = {
#    "auditLog.format" = "test12345434"
#    "net.ipv6" = false,
#    "net.maxIncomingConnections" = 345
#  }
#  datastore_type = "MongoDB"
#  datastore_version_name = "4.4.7"
#}

#resource "bizflycloud_cloud_database_backup" "test_backup" {
#  backup_name = "test_backup_1"
#  node_id = "9ed6c0fb-205a-45fb-9d95-80d101affbbb"
#}

#resource "bizflycloud_cloud_database_schedule" "test_schedule" {
#  schedule_name = "test_schedule_1"
#  limit_backup = 1
#  schedule_type = "monthly"
#  minute = [20, 50]
#  hour = [7]
#  day_of_month = [10]
#  node_id = "9ed6c0fb-205a-45fb-9d95-80d101affbbb"
#}

#resource "bizflycloud_cloud_database_node" "test_node_1" {
#  replica_of = "1c2490bd-8fc1-4649-99f7-db848f5d8d0d"
#}
