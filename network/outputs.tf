output "vpc_id" {
  value = aws_vpc.tf-playground.id
}
output "public-sub-1-id" {
  value = aws_subnet.public-sub-1.id
}
output "public-sub-2-id" {
  value = aws_subnet.public-sub-2.id
}
output "private-sub-1-id" {
  value = aws_subnet.private-sub-1.id
}
output "private-sub-2-id" {
  value = aws_subnet.private-sub-2.id
}
