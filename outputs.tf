output "ns_record_set_lookup_id" {
  description = "Map of id values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup except keys with no id are omitted"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ns_record_set_lookup_host" {
  description = "Map of host values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup except keys with no host are omitted"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.host if v.host != null && length(v.host) > 0 }
}
output "ns_record_set_lookup_nameservers" {
  description = "Map of nameservers values across all ns_record_set_lookup, keyed the same as var.ns_record_set_lookup except keys with no nameservers are omitted"
  value       = { for k, v in data.dns_ns_record_set.ns_record_set_lookup : k => v.nameservers if v.nameservers != null && length(v.nameservers) > 0 }
}

