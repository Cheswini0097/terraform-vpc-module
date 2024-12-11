resource "aws_security_group" "mysql" {
    vpc_id = aws_vpc.main.id
    name =local.sg_final_name
    description = "allow all inbound and out bound traffic"

    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
        Name = local.sg_final_name
    }
  )
}
 