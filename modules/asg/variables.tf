variable "project_name"{}
variable "ami" {
    default = "ami-053b0d53c279acc90"
}
variable "cpu" {
    default = "t2.micro"
}
variable "key_name" {}
variable "client_sg_id" {}
variable "max_size" {
    default = 6
}
variable "min_size" {
    default = 4
}
variable "desired_cap" {
    default = 4
}
variable "asg_health_check_type" {
    default = "ELB"
}
variable "pub_sub_1a_id" {}
variable "pub_sub_2b_id" {}
variable "tg_arn" {}