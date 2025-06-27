provider "docker" {}

resource "docker_network" "cicd_net" {
  name = "cicd_net"
}

resource "docker_container" "cicd_service" {
  name  = "cicd_service"
  image = "cicd_service:latest"

  ports {
    internal = 9090
    external = 9090
  }

  networks_advanced {
    name = docker_network.inventory_net.name
  }

  restart = "always"
}
