variable "groups_lookup" {
  description = <<EOT
Map of groups_lookup, attributes below
Optional:
    - project_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.groups_lookup : (
        v.project_id == null || (length(trimspace(v.project_id)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

