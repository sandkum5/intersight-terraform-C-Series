resource "intersight_vnic_fc_qos_policy" "vnic_fc_qos_policy" {
  name        = "${var.prefix}_vnic_fc_qos_policy"
  description = "${var.prefix} VNIC FC QoS Policy"
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org_data.results[0].moid
  }
  tags {
    key   = var.tags.key1
    value = var.tags.value1
  }
  tags {
    key   = var.tags.key2
    value = var.tags.value2
  }
  rate_limit          = 0
  cos                 = 6
  max_data_field_size = 2112
  # Applicable for B-series
  burst = 1024
}
