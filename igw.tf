# インターネットゲートウェイ
resource "aws_internet_gateway" "igw2" {
  vpc_id = aws_vpc.aws-study-vpc2.id

  tags = {
    Name = "aws-study-igw2"
  }
}