output "instance_public_ip" {
  description = "IPv4 of the EC2 instance"
  value       = "${aws_instance.alex-instance.public_ip}"
}

output "instance_public_dns" {
  description = "IPv4 of the EC2 instance"
  value       = "${aws_instance.alex-instance.public_dns}"
}