terraform {  
    required_providers {  
        harness = {  
            source = "harness/harness"  
            version = "0.30.2"
        }  
    }  
}

variable "harness_api_key" {
  description = "Harness Key"
  type        = string
  sensitive   = true

}

provider "harness" {  
    endpoint   = "https://app.harness.io/gateway"  
    account_id = "qQg-poUqSlqFl9CeAJVmzg"
    platform_api_key = var.harness_api_key
}
