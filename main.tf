terraform {
  backend "atlas" {
    name    = "maha-sharabinth/dev-remote-test"
  }
}

resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo hello world using remote state!"
  }
}
