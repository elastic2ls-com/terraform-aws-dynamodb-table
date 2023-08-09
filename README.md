# Terraform module for fargate ECS cluster
<p align="center">
<img src="/assets/img/Logo_box-1-150x150.png">
</p>
<p>&nbsp;</p>

![License](https://img.shields.io/badge/license-Apache-brightgreen?logo=apache) ![Status](https://img.shields.io/badge/status-active-brightgreen.svg?logo=git) [![Sponsor](https://img.shields.io/badge/sponsors-AlexanderWiechert-blue.svg?logo=github-sponsors)](https://github.com/sponsors/AlexanderWiechert/) [![Contact](https://img.shields.io/badge/follow-@Elastic2lscom-blue.svg?logo=facebook&style=social)](https://www.facebook.com/Elastic2lscom-241339337786673/) [![Terraform Registry](https://img.shields.io/badge/download-blue.svg?logo=terraform&style=social)](https://registry.terraform.io/modules/elastic2ls-com/dynamodb-table/aws/latest)


This module helps you create a dynamoDB table. It includes the following:

* dynamodb table
* autoscaling settings

## Sample Usage
This module requires a wide set of arguments. Please have a look at variables.tf

```
module "terraform-aws-dynamodb-table" {
source = "git@github.com:elastic2ls/terraform-aws-dynamodb-table.git"

  name             = elastic2ls-dynamodb
  ...
```

The module can also be found in the Terraform Registry https://registry.terraform.io/modules/elastic2ls-com/dynamodb-table/aws/latest.
