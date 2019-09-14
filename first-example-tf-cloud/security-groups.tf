resource "tencentcloud_security_group" "web" {
  name        = "web accessibility"
  description = "make it accessible for both HTTP and SSH"
}

resource "tencentcloud_security_group" "db" {
  name        = "web accessibility"
  description = "make it accessible for both mysql and SSH from web tier"
}

resource "tencentcloud_security_group_rule" "web-from-public" {
  security_group_id = "${tencentcloud_security_group.web.id}"
  type              = "ingress"
  cidr_ip           = "0.0.0.0/0"
  ip_protocol       = "tcp"
  port_range        = "80,22"
  policy            = "accept"
}

resource "tencentcloud_security_group_rule" "mysql-from-webtier" {
  security_group_id = "${tencentcloud_security_group.db.id}"
  type              = "ingress"
  cidr_ip           = "10.0.1.0/24"
  ip_protocol       = "tcp"
  port_range        = "22,3306"
  policy            = "accept"
}

