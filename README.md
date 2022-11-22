# Deploying nginx on docker using Terraform and bash script

## Description

This project is used for automated deployment of VPC, EC2 and nginx image on docker in AWS using Terraform. You can access default nginx html page in the end of deployment.

## Prequesities

* Terraform v1.3.3
* AWS account

## HOW-To deploy and use

1. `git clone`
2. `ssh-keygen`
3. `cd ./docker-nginx`
4. `aws configure`
5. `terraform init`
6. `terraform plan`
7. `terraform apply`
8. Wait about 2 minutes for setup to finish and proceed to testing

### Ways to test
1. Using Web Browser
    * Use the output value (DNS name of EC2) and paste it to your browser http://**DNS name**
2. Using Curl (Recommended)
    * `for i in seq {1..10}; do curl $(terraform output -raw instance_public_dns); done`

### Destroy after use

`terraform destroy`