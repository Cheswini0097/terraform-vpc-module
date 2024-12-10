locals {
    resourse_name = "${var.project_name}-${var.envinorment}"

}

locals {
  az_info = slice(data.aws_availability_zones.available.names, 0, 2)
}