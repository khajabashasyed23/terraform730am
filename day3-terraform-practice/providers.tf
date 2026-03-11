provider "aws" {

  region = "us-east-1"
  profile = "default"
}

provider "aws" {
  alias = "test"
  region = "us-east-1"
  profile = "syed"

  
}