variable "uuid" {
    description = "A unique identifier"
    type        = string
   

    validation {
        condition     = can(regex("^([a-fA-F0-9]{8})-([a-fA-F0-9]{4})-([a-fA-F0-9]{4})-([a-fA-F0-9]{4})-([a-fA-F0-9]{12})$", var.uuid))
        error_message = "The UUID must be in the format xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx where x is a hexadecimal digit."
    }
}
variable "bucket_name" {
    description = "A unique identifier"
    type        = string
    validation {
        condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name)) && !can(regex("[^a-z0-9.-]", var.bucket_name))
        error_message = "The bucket name must be between 3 and 63 characters long, and can contain only lowercase letters, numbers, dots (.), and hyphens (-)."
    }
}