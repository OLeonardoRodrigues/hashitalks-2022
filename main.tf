/**
 * ![HashiTalks 2022 Speaker Card](/images/speaker_card.png "HashiTalks 2022 Speaker Card")
 *
 * # HashiTalks 2022
 *
 * ## Writing High Quality Terraform Modules for Exponential Organizations
 *
 * <br/>
 */


terraform {
  required_version = ">= 1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr

  tags = merge(
    {
      "Name" = var.name
    },
    var.tags,
  )
}
