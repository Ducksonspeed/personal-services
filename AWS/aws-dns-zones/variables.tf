variable "profile" {
    default = null
}

variable "aws_secret" {
    default = null
}

variable "region" {
    type = string
    description = "Amazon region"
    default = "eu-west-2"
}

variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}




