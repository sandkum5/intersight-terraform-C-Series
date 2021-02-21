resource "intersight_deviceconnector_policy" "dc_policy" {
  name        = "${var.prefix}_dc_policy"
  description = "${var.prefix} Device Connector Policy"
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
  lockout_enabled = var.dc_lockout_enabled
}