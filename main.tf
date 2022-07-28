module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.instance_name

  ami                    = "ami-0cff7528ff583bf9a"
  instance_type          = var.instance_type
  key_name               = "CarreyesKP"
  monitoring             = true
  vpc_security_group_ids = ["sg-032a9ac98f38573e3"]
  subnet_id              = "subnet-0fc4782b46d620818"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name = "VM provisioned through VCS"
  }
}

