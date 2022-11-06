# module_vpc_public_subnet_aws

Terraform module to create VPC on AWS with public subnet

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Requirements

No requirements.
## Usage
Basic usage of this module is as follows:
```hcl
module "example" {
	 source  = "<module-path>"

	 # Optional variables
	 cidr_public_subnet  = "10.0.1.0/24"
	 enable_dns_hostnames  = true
	 enable_dns_support  = true
	 extra_tags  = {}
	 igw_name  = "instance_igw"
	 map_public_ip_on_launch  = false
	 public_subnet_name  = "instaces_subnet"
	 vpc_cidr  = "10.0.0.0/16"
	 vpc_name  = "instance_vpc"
}
```
## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw_instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.route_table_instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.associate_igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc_instances](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_public_subnet"></a> [cidr\_public\_subnet](#input\_cidr\_public\_subnet) | CIDR block for the public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Enable DNS hostnames | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | Enable DNS support | `bool` | `true` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | extra tags to add to the instance | `map(any)` | `{}` | no |
| <a name="input_igw_name"></a> [igw\_name](#input\_igw\_name) | Name of the internet gateway | `string` | `"instance_igw"` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Map public IP on launch | `bool` | `false` | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | Name of the public subnet | `string` | `"instaces_subnet"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | `"instance_vpc"` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_internet_gateway_id"></a> [aws\_internet\_gateway\_id](#output\_aws\_internet\_gateway\_id) | The ID of the internet gateway |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | The ID of the subnet |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->