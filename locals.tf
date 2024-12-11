locals {
    resourse_name = "${var.project_name}-${var.envinorment}"

}

locals {
  az_info = slice(data.aws_availability_zones.available.names, 0, 2)
}
# locals {
#     sg_final_name = "${var.envinorment}"-"${var.project_name}"-"${var.sg_name}"

# }