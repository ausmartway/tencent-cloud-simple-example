resource "tencentcloud_vpc" "main" {
  name       = "my test vpc"
  cidr_block = "10.0.0.0/16"
}
