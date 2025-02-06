output "opsfleet_dev_server" {
  description = "OpsFleet Dev Server Public IP Address."
  value       = {
                name = module.opsfleet_dev_server.default_instance.availability_zone,
                name = module.opsfleet_dev_server.default_instance.instance_state  ,
                ip_address = module.opsfleet_dev_server.default_instance.public_ip
  }
}


