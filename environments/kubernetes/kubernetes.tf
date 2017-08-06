
resource "rancher_environment" "kubernetes" {  
	name = "Kubernetes"  
	description = "Kubernetes environment"  
	orchestration = "kubernetes" 
}

resource "rancher_registration_token" "kubernetes-token" {  
	environment_id = "${rancher_environment.kubernetes.id}"  
	name = "kubernetes-token"  
	description = "Host registration token for Kubernetes environment"
}

output "rancher_agent_command" {
  value = "${rancher_registration_token.kubernetes-token.command}"
}