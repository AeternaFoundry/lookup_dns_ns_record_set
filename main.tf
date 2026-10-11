data "dns_ns_record_set" "ns_record_set_lookup" {
  for_each = var.ns_record_set_lookup

  host = each.value.host
}

