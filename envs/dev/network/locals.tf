locals {
  env    = "dev"
  name   = "${local.env}-terraformNetwork"
  region = "ap-northeast-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = ["${local.region}a", "${local.region}c"]

  tags = {
    ByTerraform = "true"
    GithubRepo  = "terraform-template"
    Env         = local.env
  }
}
