variable "zone" {
  description = "The availability zone of the instance"
  type        = string
  default     = "ru-central1-a"
}
variable "name" {
  description = "Resource name on yc"
  type        = string
  default     = "instance"
}
variable "hostname" {
  description = "Hostname of the instance"
  type        = string
  default     = "instance"
}
variable "label_name" {
  description = "Label of the instance"
  type        = string
  default     = "instance"
}
variable "platform_id" {
  description = "Platform ID"
  type        = string
  default     = "standard-v1"
}
variable "cores" {
  description = "CPU cores for the instance"
  type        = number
  default     = 2
}
variable "core_fraction" {
  description = "Basic perfomance for a core as a percent"
  default     = 20
}
variable "memory" {
  description = "Memory size in GB for the instance"
  default     = 2
}
variable "imade_id" {
  description = "Image ID"
  type        = string
  default     = ""
}
variable "disk_size" {
  description = "Size of the disk in GB for the instance"
  default     = 20
}
variable "ssh-keys" {
  description = "Username and public key to access the server"
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "Subnet for the instance"
  default     = ""
}
variable "sg_id" {
  description = "Security group for the instance"
  default     = ""
}
variable "nat" {
  description = "Provide a public address over NAT"
  type        = bool
  default     = false
}

variable "user-data" {
  default = ""
}