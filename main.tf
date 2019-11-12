provider "random" {
  
}

variable "numberOfMachines" {
  default = 2
}


resource "random_integer" "Server" {
  min   = 80
  max   = 100
  count = "${var.numberOfMachines}"
}

output "ips" {
  value = "${random_integer.Server.*.result}"
}
