#Create a new Instance
resource "aws_eip" "new" {
  vpc = true
}

resource "aws_instance" "Demo" {
  ami           = var.image_id
  instance_type = var.instance_type
  availability_zone           = var.availability_zone
  key_name               = var.key_pair
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["${aws_security_group.SG.id}"]
  associate_public_ip_address = true
  iam_instance_profile = var.iam_role

  root_block_device {
    volume_size           = var.ebs_volume
    volume_type           = "gp2"
    encrypted             = false
    delete_on_termination = true
  }

  tags = {
    Name = var.ec2_tag
  }
}

resource "aws_eip_association" "new_ip" {
  instance_id   = aws_instance.Demo.id
  allocation_id = aws_eip.new.id
}

output "instance_public_ip" {
  value = aws_eip.new.public_ip
}
