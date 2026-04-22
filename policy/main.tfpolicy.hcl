resource_policy "random_string" "enforce_length" {
  filter = meta.type == "random_string"
  locals {
    bytes = core::getresources("random_bytes", {})
  }
  enforce {
    condition = attrs.length >= local.bytes[0].length
    error_message = "random_string length must be at least 12"
  }
}
