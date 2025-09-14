variable "application_name" {

}

variable "environment_name" {

}

variable "api_key" {
  sensitive = true
}

variable "regions" {
  type = list(string)
}

variable "region_instance_count" {
  type = map(string)
}
