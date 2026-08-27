resource "aws_security_group" "worker_group_mgmt_one" {
  name_prefix = "worker_group_mgmt_one"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
    ]
  }
}

resource "aws_security_group" "worker_group_mgmt_two" {
  name_prefix = "worker_group_mgmt_two"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "192.168.0.0/16",
    ]
  }
}

resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_management"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/8",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }
}

# resource "aws_security_group_rule" "example" {
#   type                     = "ingress"
#   from_port                = 31148
#   to_port                  = 31148
#   protocol                 = "tcp"
#   security_group_id        = aws_security_group.worker_group_mgmt_one.id
#   source_security_group_id = "sg-065fc4e728e0535f6"
# }

# resource "aws_security_group_rule" "exampletwo" {
#   type                     = "ingress"
#   from_port                = 31148
#   to_port                  = 31148
#   protocol                 = "tcp"
#   security_group_id        = aws_security_group.worker_group_mgmt_two.id
#   source_security_group_id = "sg-065fc4e728e0535f6"
# }