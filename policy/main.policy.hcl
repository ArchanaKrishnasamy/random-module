resource_policy "*" "enforce_length" {
  filter = meta.resource_type == "random_string"
  enforce {
    condition = attrs.length >= 12
    error_message = "enforce_length random_string length must be at least 12"
    info_message = "enforce_length this is a policy for random_string length enforcement"
  }

enforce {
    condition = attrs.length <= 12
    error_message = "random_string length must be lessthan 12"
    info_message = "this is a policy for random_string length enforcement"
  }
}

resource_policy "*" "enforce_length2" {
  filter = meta.resource_type == "random_string"
  enforce {
    condition = attrs.length >= 10
    error_message = "enforce_length2 random_string length must be at least 10"
    info_message = "enforce_length2 this is a policy for random_string length enforcement"
  }
}
