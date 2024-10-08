resource "yandex_compute_instance" "instance" {
  name                      = var.name
  hostname                  = var.hostname
  platform_id               = var.platform_id
  zone                      = var.zone
  labels                    = var.labels
  allow_stopping_for_update = var.allow_stopping_for_update

  resources {
    cores         = var.cores
    core_fraction = var.core_fraction
    memory        = var.memory
    gpus          = var.gpus
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  boot_disk {
    initialize_params {
      image_id = var.imade_id
      type     = var.disk_type
      size     = var.disk_size
    }
  }

  network_interface {
    subnet_id          = var.subnet_id
    security_group_ids = [var.sg_id]
    nat                = var.nat
  }

  metadata = {
    user-data = var.user-data
  }
}
