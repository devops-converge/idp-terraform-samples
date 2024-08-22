terraform {  
    required_providers {  
        harness = {  
            source = "harness/harness"  
            version = "0.30.2"
        }  
    }  
}

provider "harness" {  
    endpoint   = "https://app.harness.io/gateway"  
    account_id = "qQg-poUqSlqFl9CeAJVmzg"
    platform_api_key = ${{ secrets.HARNESS_PLATFORM_API_KEY }}
}
