# variables.tf
variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "tfvmex"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "West Europe"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "os_publisher" {
  description = "Publisher of the OS image"
  type        = string
  default     = "Canonical"
}

variable "os_offer" {
  description = "Offer of the OS image"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "os_sku" {
  description = "SKU of the OS image"
  type        = string
  default     = "22_04-lts"
}

variable "os_version" {
  description = "Version of the OS image"
  type        = string
  default     = "latest"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "testadmin"
}

variable "admin_password" {
  description = "Administrator password for the VM"
  type        = string
  #sensitive   = true
  default = "lgNtRgSL2s3JO9X^"
}

variable "environment_tag" {
  description = "Environment tag for the resources"
  type        = string
  default     = "staging"
}

variable "os_disk_caching" {
  description = "Caching type for the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_type" {
  description = "Storage type for the OS disk"
  type        = string
  default     = "Standard_LRS"
}