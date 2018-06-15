# aws_kms_key key creation
resource "aws_kms_key" "kms_key" {}

# aws_kms_alias, default to alias/application/{var.name}
resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.path_prepend}${var.name}"
  target_key_id = "${aws_kms_key.kms_key.key_id}"
}
