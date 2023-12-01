output "nat_ip_address" {
  description = "The external IP address of the instance"
  value       = yandex_compute_instance.instance.network_interface.0.nat_ip_address
}
output "ip_address" {
  description = "The internal IP address of the instance"
  value       = yandex_compute_instance.instance.network_interface.0.ip_address
}
output "hostname" {
  description = "Instance hostname"
  value       = yandex_compute_instance.instance.fqdn
}
output "label_name" {
  value = yandex_compute_instance.instance.labels.name
}