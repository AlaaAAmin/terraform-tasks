resource "aws_db_instance" "rds-mysql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "foo"
  password             = "123456789"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
