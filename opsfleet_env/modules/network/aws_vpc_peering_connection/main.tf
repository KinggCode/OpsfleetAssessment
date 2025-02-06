resource "aws_vpc_peering_connection" "default_peering_connection" {
  peer_owner_id = var.owner_id
  peer_vpc_id   = var.peer_vpc_id
  vpc_id        = var.vpc_id
  auto_accept   = var.auto_accept

  accepter {
    allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
  }

  requester {
    allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
  }

  tags = {
    Name = "${var.peering_connection_name}"
    env = "${var.env}"
    company = "${var.company}"
  }
}