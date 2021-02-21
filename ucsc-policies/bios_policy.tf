resource "intersight_bios_policy" "bios_policy" {
  name        = "${var.prefix}_bios_policy"
  description = "${var.prefix} BIOS Policy"
  organization {
    object_type = "organization.Organization"
    # moid = var.org_moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  cpu_power_management = "performance"
  serial_port_aenable  = "enabled"
}