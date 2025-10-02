# パブリックサブネット1 (AZ a)
resource "aws_subnet" "public_a2" {
  vpc_id                  = aws_vpc.aws-study-vpc2.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-a2"
  }
}

# パブリックサブネット2 (AZ c)
resource "aws_subnet" "public_c2" {
  vpc_id                  = aws_vpc.aws-study-vpc2.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-c2"
  }
}

# プライベートサブネット1 (AZ a)
resource "aws_subnet" "private_a2" {
  vpc_id            = aws_vpc.aws-study-vpc2.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "private-subnet-a2"
  }
}

# プライベートサブネット2 (AZ c)
resource "aws_subnet" "private_c2" {
  vpc_id            = aws_vpc.aws-study-vpc2.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "private-subnet-c2"
  }
}
