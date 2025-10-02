# パブリックサブネットをルートテーブルに関連付け
resource "aws_route_table_association" "public_a2" {
  subnet_id      = aws_subnet.public_a2.id
  route_table_id = aws_route_table.public2.id
}

resource "aws_route_table_association" "public_c2" {
  subnet_id      = aws_subnet.public_c2.id
  route_table_id = aws_route_table.public2.id
}

# プライベートサブネットをルートテーブルに関連付け
resource "aws_route_table_association" "private_a2" {
  subnet_id      = aws_subnet.private_a2.id
  route_table_id = aws_route_table.private2.id
}

resource "aws_route_table_association" "private_c2" {
  subnet_id      = aws_subnet.private_c2.id
  route_table_id = aws_route_table.private2.id
}