resource "aws_instance" "public_ec2a" {
  count         = 2
  ami           = "ami-025bbcfb04b076789"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_a2.id
  key_name      = "AWS-study"
  vpc_security_group_ids = [aws_security_group.public_sg2.id]

  associate_public_ip_address = false        

  tags = {
    Name = "Public-EC2a"
  }
}
