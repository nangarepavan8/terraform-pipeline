terraform {
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "4.46.0"
        }
    }
}

resource "aws_instance" "my-server"{
    ami = "ami-00beae93a2d981137"
    instance_type = "t2.micro"

    tags = {
        Name = "my-server"
    }
}