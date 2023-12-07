resource "aws_key_pair" "client_key" {
    key_name = "server_key"
    public_key = file("../modules/key/server_key.pub")
}