resource "tencentcloud_instance" "nginx" {
  instance_name = "nginx-service${count.index}"
  availability_zone = "ap-guangzhou-3"
  image_id      = "img-pi0ii46r"
  instance_type = "S2.SMALL1"
  system_disk_type = "CLOUD_PREMIUM"
  allocate_public_ip = true
  security_groups = [
    "${tencentcloud_security_group.web.id}"
  ]

vpc_id    = "${tencentcloud_vpc.main.id}"
subnet_id = "${tencentcloud_subnet.web.id}"
  internet_max_bandwidth_out = 10
  count = 4
}

resource "tencentcloud_instance" "mysql" {
  instance_name = "mysql-service"
  availability_zone = "ap-guangzhou-3"
  image_id      = "img-pi0ii46r"
  instance_type = "S2.SMALL1"
  system_disk_type = "CLOUD_PREMIUM"
  allocate_public_ip = false
  security_groups = [
    "${tencentcloud_security_group.web.id}"
  ]

vpc_id    = "${tencentcloud_vpc.main.id}"
subnet_id = "${tencentcloud_subnet.web.id}"
  internet_max_bandwidth_out = 10
  count = 2
}




