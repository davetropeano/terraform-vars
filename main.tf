variable "key" {
  type = "string"
}

# explicit typing
variable "images" {
  type = "map"

  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

# implicit typing
variable "zones" {
  default = ["us-east-1a", "us-east-1b"]
}

provider "ibm" {}

output "out_key" {
value = "${var.key}"
}

output "out_images" {
  value = "${var.images}"
}

output "out_zones" {
  value = ["${var.zones}"]
}

