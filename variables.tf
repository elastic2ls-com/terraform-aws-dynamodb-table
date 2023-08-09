variable "main_region" {
  type    = string
  default = "eu-central-1"
}

variable "create_table" {
  description = "DynamoDB table and or autoscaling will be enabled for it"
  type        = bool
  default     = true
}

variable "table_name" {
  description = "DynamoDB table name"
  type        = string
}

variable "attributes" {
  description = "List of nested attribute definitions required for hash_key and range_key attributes. Each attribute has two properties: table_name - (Required) The name of the attribute, type - (Required) Attribute type, which must be a scalar type: S, N, or B for (S)tring, (N)umber or (B)inary data"
  type        = list(map(string))
  default     = []
}

variable "hash_key" {
  description = "The attribute to use as the hashed partition key."
  type        = string
  default     = null
}

variable "range_key" {
  description = "The attribute to use as the range sort key."
  type        = string
  default     = null
}

variable "billing_mode" {
  description = "Controls how you are billed for read/write throughput. Possible values are PROVISIONED or PAY_PER_REQUEST"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "write_capacity" {
  description = "The number of write units for this table. If the billing_mode is PROVISIONED < 0"
  type        = number
  default     = null
}

variable "read_capacity" {
  description = "The number of read units for this table. If the billing_mode is PROVISIONED < 0"
  type        = number
  default     = null
}

variable "ttl_enabled" {
  description = "Enalbe TTL"
  type        = bool
  default     = false
}

variable "ttl_attribute_name" {
  description = "name table attribute for TTL"
  type        = string
  default     = ""
}

variable "global_secondary_indexes" {
  description = "GSI for the table"
  type        = any
  default     = []
}

variable "local_secondary_indexes" {
  description = "LSI on the table"
  type        = any
  default     = []
}

variable "replica_regions" {
  description = "Region names for replicas."
  type        = any
  default     = []
}

variable "stream_enabled" {
  description = "Enable streams."
  type        = bool
  default     = false
}

variable "stream_view_type" {
  description = "Valid values are KEYS_ONLY, NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES."
  type        = string
  default     = null
}

variable "server_side_encryption_enabled" {
  description = "Enable encryption."
  type        = bool
  default     = false
}

variable "server_side_encryption_kms_key_arn" {
  description = "KMS Key arn."
  type        = string
  default     = null
}

variable "tags" {
  description = "Map of tags"
  type        = map(string)
  default     = {}
}

variable "timeouts" {
  description = "Terraform timeouts due issues while creating resources"
  type        = map(string)
  default = {
    create = "10m"
    update = "60m"
    delete = "10m"
  }
}

variable "autoscaling_enabled" {
  description = "Enable autoscaling. "
  type        = bool
  default     = false
}

variable "autoscaling_indexes" {
  description = "Map autoscaling configurations."
  type        = map(map(string))
  default     = {}
}

variable "as_read_min_capacity" {
  description = "minimum READ capacity."
  type        = number
  default     = 1
}

variable "as_read_max_capacity" {
  description = "maximum READ capacity."
  type        = number
  default     = 30
}

variable "as_read_target_value" {
  description = "target utilization percentage"
  type        = number
  default     = 70
}

variable "as_read_scale_in_cooldown" {
  description = "number of seconds before scaling IN."
  type        = number
  default     = 300
}

variable "as_read_scale_out_cooldown" {
  description = "number of seconds before scaling OUT."
  type        = number
  default     = 20
}

variable "as_write_min_capacity" {
  description = "minimum WRITE capacity."
  type        = number
  default     = 1
}

variable "as_write_max_capacity" {
  description = "maximum WRITE capacity."
  type        = number
  default     = 30
}

variable "as_write_target_value" {
  description = "target utilization percentage."
  type        = number
  default     = 75
}

variable "as_write_scale_in_cooldown" {
  description = "number of seconds before scaling IN."
  type        = number
  default     = 300
}

variable "as_write_scale_out_cooldown" {
  description = "number of seconds before scaling OUT."
  type        = number
  default     = 30
}

variable "read_index_target_value" {
  description = "target utilization percentage index table."
  default     = 70
}

variable "read_index_scale_in_cooldown" {
  description = "number of seconds before scaling IN"
  type        = number
  default     = 300
}

variable "read_index_scale_out_cooldown" {
  description = "number of seconds before scaling OUT."
  type        = number
  default     = 20
}

variable "write_index_target_value" {
  description = "target utilization percentage index table."
  type        = number
  default     = 75
}

variable "write_index_scale_in_cooldown" {
  description = "number of seconds before scaling IN."
  type        = number
  default     = 300
}

variable "write_index_scale_out_cooldown" {
  description = "number of seconds before scaling OUT."
  type        = number
  default     = 30
}
