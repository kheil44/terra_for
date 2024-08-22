resource "aws_db_instance" "default" {
  allocated_storage    = 2
  storage_type         = "gp2"
  engine               = "mysql"

  instance_class       = "db.t2.micro"
  db_name              = "mydb"
  username             = "foo"
  password             = "${file("./rds_pass.txt")}"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}