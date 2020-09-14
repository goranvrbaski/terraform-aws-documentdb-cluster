variable "cluster_name" {
  type = string
}

variable "master_username" {
  type = string
}

variable "backup_window" {
  type    = string
  default = "07:00-09:00"
}

variable "maintenance_window" {
  type    = string
  default = "Mon:00:00-Mon:03:00"
}

variable "backup_rentetion_period" {
  type    = number
  default = 7
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "instance_count" {
  type    = number
  default = 2
}
variable "instance_class" {
  type    = string
  default = "db.t3.medium"
}

variable "tags" {
  type = map(string)
  default = {
    terraform = "true"
  }
}

variable "availability_zones" {
  type = list(string)
}

variable "storage_encrypted" {
  type    = bool
  default = true
}

variable "subnet_group_ids" {
  type    = list(string)
  default = []
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "password_length" {
  type    = number
  default = 16
}