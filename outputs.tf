output "Public_ip" {
  description = "Public IP "
  value       = aws_eip.vpn_eip.public_ip
}

output "Public_dns" {
  description = "Public DNS "
  value       = aws_instance.vpn.public_dns
}

output "Private_ip" {
  description = "Private IPs "
  value       = aws_instance.vpn.private_ip
}

# Some sanity checking to make sure we are in the right account - very important if you use multiple accounts
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
