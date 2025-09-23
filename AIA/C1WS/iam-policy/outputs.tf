output "id" {
  description = "The policy ID"
  value       = module.C1WS_WorkloadSecurity_Policy.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.C1WS_WorkloadSecurity_Policy.arn
}

output "description" {
  description = "The description of the policy"
  value       = module.C1WS_WorkloadSecurity_Policy.description
}

output "name" {
  description = "The name of the policy"
  value       = module.C1WS_WorkloadSecurity_Policy.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = module.C1WS_WorkloadSecurity_Policy.path
}

output "policy" {
  description = "The policy document"
  value       = module.C1WS_WorkloadSecurity_Policy.policy
}
