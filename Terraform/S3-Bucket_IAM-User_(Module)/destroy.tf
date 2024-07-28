resource "null_resource" "cleanup" {
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      bash ./rm-tf.sh
    EOT
  }

  depends_on = [module.s3, module.users]
}
