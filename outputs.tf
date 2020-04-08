output "sdm_gateway_ids" {
  value = {
    for instance in aws_instance.gateway :
    instance.tags.Name => instance.id
  }
}
output "sdm_gateway_ips" {
  value = {
    for instance in aws_instance.gateway :
    instance.tags.Name => instance.public_ip
  }
}
output "sdm_relay_ids" {
  value = {
    for instance in aws_instance.relay :
    instance.tags.Name => instance.id
  }
}
output "sdm_relay_ips" {
  value = {
    for instance in aws_instance.relay :
    instance.tags.Name => instance.public_ip
  }
}