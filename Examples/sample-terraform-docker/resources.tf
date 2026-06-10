
# -------- Image definitions (will pull images):

resource "docker_image" "image" {
  name         = var.image
  keep_locally = true
}

# -------- Container definitions:

resource "docker_container" "demo1" {
  image    = docker_image.image.image_id
  name     = var.name
  hostname = var.name

  # Shouldn't be necessary: seems to prevent unnecessary container re-creations
  network_mode = "bridge"

  ports {
    internal = 80
    external = var.ext_port
  }
}

