variable "panorama_ip" {
  description = "Panorama IP address"
  type        = string
  default     = "20.118.98.21"
}

variable "panorama_username" {
  description = "Panorama username"
  type        = string
}

variable "panorama_password" {
  description = "Panorama password"
  type        = string

}

variable "owner" {
  description = "Owner of the stack"
  type        = string
}