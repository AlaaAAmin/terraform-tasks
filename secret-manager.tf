# Creates and stores ssh key used in creating an EC2 instance
resource "aws_secretsmanager_secret" "rsa-secrets" {
  name = "rsa-secrets"
}

resource "aws_secretsmanager_secret_version" "rsa-secrets" {
  secret_id     = aws_secretsmanager_secret.rsa-secrets.id
  secret_string = tls_private_key.admin.private_key_pem
}

# Output

output "instance_id" {
  value = aws_instance.bastion.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.rsa-secrets.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.rsa-secrets.id
}
