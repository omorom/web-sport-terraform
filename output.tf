output "web_urls" {
  description = "Access URLs for each role (Test accounts are listed in README.md chapter 11)"
  value = "http://${aws_instance.web.public_ip}"

}