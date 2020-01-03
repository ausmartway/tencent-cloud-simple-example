resource "tencentcloud_subnet" "web" {
  name              = "my test subnet"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${tc_avalibilityzone}"
  vpc_id            = "${tencentcloud_vpc.main.id}"
  route_table_id = "${tencentcloud_route_table.web.id}"
}

resource "tencentcloud_subnet" "db" {
  name              = "my test subnet"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${tc_avalibilityzone}"
  vpc_id            = "${tencentcloud_vpc.main.id}"
  route_table_id = "${tencentcloud_route_table.db.id}"
}
