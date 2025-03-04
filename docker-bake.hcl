variable "OWNER" {
  default = "visualon"
}
variable "FILE" {}
variable "TAG" {
  default = "latest"
}

group "default" {
  targets = ["build_ghcr", "build_docker"]
}

group "build" {
  targets = ["build_ghcr", "build_docker", "push_ghcr"]
}

group "push" {
  targets = ["push_ghcr"]
}

group "test" {
  targets = ["build_docker"]
}

target "settings" {
  context    = "./linux/${FILE}"
  inherits   = ["settings"]
  cache-from = ["type=registry,ref=ghcr.io/${OWNER}/cache:${replace(FILE, "/", "-")}", "type=registry,ref=ghcr.io/${OWNER}/cache:${replace(FILE, "/", "-")}-${TAG}"]
}

target "build_ghcr" {
  inherits = ["settings"]
  output   = ["type=registry"]
  tags     = ["ghcr.io/${OWNER}/cache:${replace(FILE, "/", "-")}-${TAG}"]
  cache-to = ["type=inline,mode=max"]
}

target "build_docker" {
  inherits = ["settings"]
  output   = ["type=docker"]
  tags     = ["ghcr.io/${OWNER}/${FILE}:${TAG}"]
}

target "push_ghcr" {
  inherits = ["settings"]
  output   = ["type=registry"]
  tags     = ["ghcr.io/${OWNER}/${FILE}:${TAG}"]
}
