variable "cluster_name" {
  type = string
  description = "Name of the cluster to create"
}

variable "master_username" {
  type = string
  description = "Username to use for master user"
}

variable "backup_window" {
  type    = string
  default = "07:00-09:00"
  description = "Backup window for the cluster"
}

variable "maintenance_window" {
  type    = string
  default = "Mon:00:00-Mon:03:00"
  description = "Maintenance window for the cluster"
}

variable "backup_rentetion_period" {
  type    = number
  default = 7
  description = "Number of automated backups to keep"
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
  description = "Skip final snapshot on the cluster delete"
}

variable "instance_count" {
  type    = number
  default = 2
  description = "Instance number to create in the cluster"
}
variable "instance_class" {
  type    = string
  default = "db.t3.medium"
  description = "Instance type to use when creating the cluster"
}

variable "tags" {
  type = map(string)
  default = {
    terraform = "true"
  }
  description = "Tags to attach to the cluster"
}

variable "availability_zones" {
  type = list(string)
  description = "Availability zones for the cluster instances"
}

variable "storage_encrypted" {
  type    = bool
  default = true
  description = "Encryption at rest"
}

variable "subnet_group_ids" {
  type    = list(string)
  default = []
  description = "List of subnet group ids to use when provisioning instances"
}

variable "security_group_ids" {
  type    = list(string)
  default = []
  description "List of security group ids to attach to the cluster"
}

variable "password_length" {
  type    = number
  default = 16
  description = "Length of master password"
}