image_id          = "ami-0597375488017747e"
instance_type     = "t2.micro"
availability_zone = "ap-south-1a"
key_pair          = "DocInsight-Dev"
subnet_id         = "subnet-099d853c18ec53287"
vpc_id            = "vpc-09e7347de47bf9da1"
ebs_volume        = 30
ec2_tag           = "First-Instance"
sg_tag            = "First-SG"

ports = [22, 80, 443]
