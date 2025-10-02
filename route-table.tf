# パブリックルートテーブル
resource "aws_route_table" "public2" {
  vpc_id = aws_vpc.aws-study-vpc2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw2.id
  }

  tags = {
    Name = "public2-rt"
  }
}

# プライベートルートテーブル
resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.aws-study-vpc2.id


  tags = {
    Name = "private2-rt"
  }
}