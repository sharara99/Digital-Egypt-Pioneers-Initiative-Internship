resource "null_resource" "cleanup" {
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      bash ./rm-tf.sh
      rm -f ./mykey.pem
    EOT
  }

  depends_on = [aws_instance.ubuntu-instance, aws_key_pair.UbuntuKP]
}
