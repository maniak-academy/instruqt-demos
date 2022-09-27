
provider "panos" {
  hostname = var.panorama_ip
  username = var.panorama_username
  password = var.panorama_password
}

resource "panos_device_group" "devicegroup" {
  name = "${var.owner}devicegroup"
}

resource "panos_panorama_template_stack" "stack" {
  name        = "${var.owner}stack"
  templates   = ["pantemplate"]
  description = "description here"
}


resource "null_resource" "panos_config" {
  depends_on = [
    panos_panorama_nat_rule_group.egress-nat,
    panos_panorama_template_stack.stack,
    panos_device_group.devicegroup,
    panos_panorama_address_group.cts-addr-grp-app,
    panos_panorama_address_group.cts-addr-grp-logging,
    panos_panorama_address_group.cts-addr-grp-web,
    panos_panorama_address_group.cts-addr-grp-api,
  ]

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "/root/terraform/panos_commit/panos-commit -config /root/terraform/panos_commit/panos-commit.json -force"
  }
}