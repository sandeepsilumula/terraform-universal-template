output "web_server_public_ip" {
  description = "The public IP of the web server"
  value       = module.compute.server_public_ip
}