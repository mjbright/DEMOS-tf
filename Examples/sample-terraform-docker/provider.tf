terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"

      # Specifying a minimum Provider version:
      version = ">= 4.0"
    }
  }
}

provider docker {
  host = "unix:///Users/mjb/.colima/default/docker.sock"
}
