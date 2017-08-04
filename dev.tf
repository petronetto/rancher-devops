variable "orquestration" {
  type = "string"
  default = "cattle"
}

resource "rancher_environment" "dev" {  
	name = "dev"  
	description = "Dev environment"  
	orchestration = "${var.orquestration}" 
}

resource "rancher_registration_token" "dev-token" {  
	environment_id = "${rancher_environment.dev.id}"  
	name = "dev-token"  
	description = "Host registration token for Dev environment"
}

output "rancher_agent_command" {
  value = "${rancher_registration_token.dev-token.command}"
}