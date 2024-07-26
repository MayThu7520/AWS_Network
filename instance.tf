
resource "aws_key_pair" "instance_key" {
  key_name   = "instance-key"
  public_key = file("id_rsa.pub")

}


resource "aws_instance" "bastion_host" {
  ami                         = "ami-012c2e8e24e2ae21d"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_b_subnet.id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.instance_key.key_name
  tags = {
    Name = "bastion_host_day3"
  }
}


resource "aws_instance" "myprivate_instance" {
  ami                    = "ami-012c2e8e24e2ae21d"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_a_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = aws_key_pair.instance_key.key_name


  tags = {
    Name = "myprivate_instance"
  }
}
