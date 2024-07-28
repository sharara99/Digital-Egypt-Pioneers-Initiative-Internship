variable "BUCKETNAME" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "sharara-backup-k10"  # Ensure this meets the S3 bucket naming conventions
}