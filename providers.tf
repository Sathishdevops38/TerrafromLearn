terraform {
  required_providers{
      aws ={
        source = "hashicorp/aws"
        version = "4.9.0"
      }

      linode = {
      source = "linode/linode"
      version = "1.27.0"
    }
  }
}

