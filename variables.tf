#================= Main parameters ==================#
variable "zone" {
  description = "The availability zone of the instance"
  type        = string
  default     = "ru-central1-a"
}

variable "name" {
  description = "Resource name on Yandex Cloud"
  type        = string
  default     = "instance"
}

variable "hostname" {
  description = "Hostname of the instance"
  type        = string
  default     = "instance"
}

variable "labels" {
  description = "A set of key/value label pairs of the instance"
  type        = map(string)
  default = {
    name        = "instance"
    environment = "test"
  }
}

variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v1"
}

#=============== Resources parameters ===============#
variable "cores" {
  description = "CPU cores for the instance"
  type        = number
  default     = 2
}

variable "core_fraction" {
  description = "Basic perfomance for a core as a percent"
  type        = number
  default     = 20
}

variable "memory" {
  description = "Memory size in GB for the instance"
  type        = number
  default     = 2
}

variable "gpus" {
  description = "Specifies the number of GPU devices for the instance"
  type        = number
  default     = 0

}

variable "allow_stopping_for_update" {
  description = "If true, allows Terraform to stop the instance in order to update its properties"
  type        = bool
  default     = true

}

variable "preemptible" {
  description = "Specifies if the instance is preemptible"
  type        = bool
  default     = false
}
#=============== Boot disk parameters ===============#
variable "imade_id" {
  description = "Image ID"
  type        = string
  default     = ""
}

variable "disk_type" {
  description = "value"
  type        = string
  default     = "network-hdd"
}

variable "disk_size" {
  description = "Size of the disk in GB for the instance"
  type        = number
  default     = 20
}

#=========== Network interface parameters ===========#
variable "subnet_id" {
  description = "Subnet for the instance"
  type        = string
}

variable "sg_id" {
  description = "Security group for the instance"
  type        = string
}

variable "nat" {
  description = "Provide a public address over NAT"
  type        = bool
  default     = false
}

#================ Metadata parameters ===============#
variable "user-data" {
  description = "Path to cloud-config.yaml file with instance access settings"
  default     = ""
}
