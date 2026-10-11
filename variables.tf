variable "os_management_hub_managed_instance_refresh_software_managements" {
  description = <<EOT
Map of os_management_hub_managed_instance_refresh_software_managements, attributes below
Required:
    - managed_instance_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    managed_instance_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

