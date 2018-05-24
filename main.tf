resource "aws_kms_key" "kms_key" {}

resource "aws_kms_alias" "kms_alias" {
  name          = "alias/application/${var.name}"
  target_key_id = "${aws_kms_key.kms_key.key_id}"
}

