provider "random" {

}

variable "machines" {
  default = 2
}

resource "random_integer" "server" {
  min   = 80
  max   = 100
  count = "${var.machines}"
}

output "integer" {
  value = "${random_integer.server.*.result}"
}
