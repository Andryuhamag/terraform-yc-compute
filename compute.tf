resource "yandex_compute_instance" "instance" {
  name        = var.name
  hostname    = var.hostname
  platform_id = var.platform_id
  zone        = var.zone
  labels = {
    name = var.label_name
  }
  resources {
    cores         = var.cores
    core_fraction = var.core_fraction
    memory        = var.memory
  }
  boot_disk {
    initialize_params {
      image_id = var.imade_id
      size     = var.disk_size
    }
  }
  network_interface {
    subnet_id          = var.subnet_id
    security_group_ids = [var.sg_id]
    nat                = var.nat
  }
  metadata = {
    ssh-keys = var.ssh-keys
  }
}
