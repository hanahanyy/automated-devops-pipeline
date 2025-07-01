provider "local" {}

resource "local_file" "example" {
  content  = "Terraform is working!"
  filename = "${path.module}/hello_terraform.txt"
}
