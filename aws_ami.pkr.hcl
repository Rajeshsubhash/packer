source "amazon-ebs" "httpd" {
    ami_name      = "my_golden_image"
    instance_type = "t2.micro"
    region        = "us-east-1"
    source_ami    = "ami-04a81a99f5ec58529"
    ssh_username  = "ubuntu"
    tags = {
        ENV  = "demo"
        name = "packer_image"
    }
}
build {
    sources =["source.amazon-ebs.httpd"]
    
 provisioner "shell" {
    script = script.sh
 }
}
