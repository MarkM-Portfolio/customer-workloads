#!/bin/bash

#import EU59DB01 instance
echo starting EU59DB01 Imports
terraform state rm 'module.app["EU59DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_instance.this[0]' i-0daac96dff71cde9a

terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sdb"]' vol-0e068f44b3ff911b2
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0e068f44b3ff911b2:i-0daac96dff71cde9a
terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sdc"]' vol-08f6fc66bba803791
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-08f6fc66bba803791:i-0daac96dff71cde9a
terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sdd"]' vol-0f2b84b8d8f8951a1
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0f2b84b8d8f8951a1:i-0daac96dff71cde9a
terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sde"]' vol-062a1f7c7ee81a52a
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-062a1f7c7ee81a52a:i-0daac96dff71cde9a
terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sdf"]' vol-08edfbab0424d8e7f
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-08edfbab0424d8e7f:i-0daac96dff71cde9a
terraform state rm 'module.app["EU59DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_ebs_volume.this["sdg"]' vol-0d3e0c778f6873452
terraform state rm 'module.app["EU59DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0d3e0c778f6873452:i-0daac96dff71cde9a
echo EU59DB01 imports executed

#import EU59DMZ01 instance
echo starting EU59DMZ01 Imports
terraform state rm 'module.app["EU59DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DMZ01"].aws_instance.this[0]' i-03ce9e51df57e0dc3

terraform state rm 'module.app["EU59DMZ01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DMZ01"].aws_ebs_volume.this["sdb"]' vol-01d6c0bffcc69b7e8
terraform state rm 'module.app["EU59DMZ01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59DMZ01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-01d6c0bffcc69b7e8:i-03ce9e51df57e0dc3
echo EU59DMZ01 imports executed

#import EU59RDS01 instance
echo starting EU59RDS01 Imports
terraform state rm 'module.app["EU59RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59RDS01"].aws_instance.this[0]' i-06801f1156bca6bb3

terraform state rm 'module.app["EU59RDS01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59RDS01"].aws_ebs_volume.this["sdb"]' vol-0570ad14c1ac66ec9
terraform state rm 'module.app["EU59RDS01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU59RDS01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0570ad14c1ac66ec9:i-06801f1156bca6bb3
echo EU59RDS01 imports executed


#End of command execution
echo Finished executing commands!