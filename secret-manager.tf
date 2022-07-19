# Creates and stores ssh key used in creating an EC2 instance
resource "aws_secretsmanager_secret" "new-rsa-secrets" {
  name                    = "new-rsa-secrets"
  recovery_window_in_days = "0"
}

resource "aws_secretsmanager_secret_version" "new-rsa-secrets" {
  secret_id     = aws_secretsmanager_secret.new-rsa-secrets.id
  secret_string = tls_private_key.admin.private_key_pem
}

# Output

output "instance_id" {
  value = aws_instance.bastion.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.new-rsa-secrets.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.new-rsa-secrets.id
}
