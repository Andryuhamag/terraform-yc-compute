output "external_ip_address" {
  description = "The external IP address of the instance"
  value       = var.nat ? yandex_compute_instance.instance.network_interface.0.nat_ip_address : null
}

output "ip_address" {
  description = "The internal IP address of the instance"
  value       = yandex_compute_instance.instance.network_interface.0.ip_address
}

output "hostname" {
  description = "Instance hostname"
  value       = yandex_compute_instance.instance.fqdn
}
