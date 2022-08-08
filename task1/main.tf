resource "local_file" "foo" {
    content  = "such foo!"
    filename = "${path.module}/foo.bar"
    file_permission = "0777"
}