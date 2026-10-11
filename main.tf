resource "oci_os_management_hub_managed_instance_refresh_software_management" "os_management_hub_managed_instance_refresh_software_managements" {
  for_each = var.os_management_hub_managed_instance_refresh_software_managements

  managed_instance_id = each.value.managed_instance_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

