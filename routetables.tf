resource "tencentcloud_route_table" "web" {
  name   = "my test web route table"
  vpc_id = "${tencentcloud_vpc.main.id}"
}

resource "tencentcloud_route_table" "db" {
  name   = "my test db route table"
  vpc_id = "${tencentcloud_vpc.main.id}"
}




