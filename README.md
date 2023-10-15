# Week3_Terraform_Two_Tier_Architecture
The repository explains a step by step process to build a resilient and secure two tier Architecture on AWS using terraform. It also goes futher to install and launch a web application in the web web servers

## Prerequisites
1. An AWS Account
2. AWS IAM user with Access Key ID and Secret
3. Access Key created. 
4. AWS CLI and Terraform Installed in your system.
5. Knowledge of subnetting and Classless InterDomain Routing (CIDR)
6. An IDE e.g VS code.


## Step to Run and build the two tier architecture using terraform

        git clone https://github.com/lateef-taiwo/Week3_Terraform_Two_Tier_Architecture.git
 
        cd App
        vim terraform.tfvars
Now, Paste the code below in your terraform.tfvars file
region                  = ""
project_name            = ""
vpc_cidr                = ""
pub_sub_1a_cidr         = ""
pub_sub_2b_cidr         = ""
pri_sub_3a_cidr         = ""
pri_sub_4b_cidr         = ""
pri_sub_5a_cidr         = ""
pri_sub_6b_cidr         = ""
db_username             = ""
db_password             = ""
certificate_domain_name = ""
additional_domain_name  = ""

Make sure you replace the necessary values you intend to use in the string. The region will be the same region where we created our S3 bucket, that is us-east-1. Replace all other values with your preferred values. You will have to do subnetting for you to be able to input values for the public and private subnets. Take for example if you pick 10.0.0.0/16 as your cidr block, you have to do subnetting to get at least six subnet addresses to use for the public and private subnets.


## Navigate to the following directory

    cd modules/key
Generate a public and private ssh key, by running the command below

    ssh-keygen
Type the name of the key, in my case, "server_key". Leave the remaining options blank and hit enter key on your keyboard until you see the key fingerprint. Type `ls` to confirm that the public and private keys and generated.

## Deployment
* Navigate to the App directory
    
        cd ../..
        cd App

* Create an alias for `terraform` command
    
        alias tf=terraform

Initialize environment
    tf init

* Run plan to see the resources to be deployed
        
        tf plan

* Apply plan

        tf apply -auto-approve


## Cleanup
* Run this command to destroy/delete the resources in order to avoid unwanted charges.

        tf destroy -auto-approve
