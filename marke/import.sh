#!/bin/bash

#import GEN2MCAPP01 instance
#echo starting GEN2MCAPP01 Imports
#terraform state rm 'module.app["GEN2MCAPP01"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCAPP01"].aws_instance.this[0]' i-0022097fd212fcb95

#echo GEN2MCAPP01 imports executed

#import GEN2MCAPP02 instance
#echo starting GEN2MCAPP02 Imports
#terraform state rm 'module.app["GEN2MCAPP02"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCAPP02"].aws_instance.this[0]' i-0ab4530de07a0b197

#echo GEN2MCAPP02 imports executed

#import GEN2MCAPP03 instance
echo starting GEN2MCAPP03 Imports
terraform state rm 'module.app["GEN2MCAPP03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCAPP03"].aws_instance.this[0]' i-015fbda29d36529e3

echo GEN2MCAPP03 imports executed

#import GEN2MCAPP04 instance
#echo starting GEN2MCAPP04 Imports
#terraform state rm 'module.app["GEN2MCAPP04"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCAPP04"].aws_instance.this[0]' i-0436dc70d9fa93d4f

#echo GEN2MCAPP04 imports executed

#import GEN2MCAPP05 instance
#echo starting GEN2MCAPP05 Imports
#terraform state rm 'module.app["GEN2MCAPP05"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCAPP05"].aws_instance.this[0]' i-0da926454c3fa98be

#echo GEN2MCAPP05 imports executed

#import GEN2MCDMZ01 instance
echo starting GEN2MCDMZ01 Imports
terraform state rm 'module.app["GEN2MCDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCDMZ01"].aws_instance.this[0]' i-0f77d3066ddbafe32

echo GEN2MCDMZ01 imports executed

#import GEN2MCHM01 instance
#echo starting GEN2MCHM01 Imports
#terraform state rm 'module.app["GEN2MCHM01"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_instance.this[0]' i-009b7c6b17222af93

#terraform state rm 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]' vol-0413e983b3b5872d3
#terraform state rm 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0413e983b3b5872d3:i-009b7c6b17222af93
#terraform state rm 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]' vol-060c9b1019c107f7e
#terraform state rm 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-060c9b1019c107f7e:i-009b7c6b17222af93
#terraform state rm 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]' vol-0ab605e3d38f311d9
#terraform state rm 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0ab605e3d38f311d9:i-009b7c6b17222af93

#import GEN2MCRDS01 instance
#echo starting GEN2MCRDS01 Imports
#terraform state rm 'module.app["GEN2MCRDS01"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCRDS01"].aws_instance.this[0]' i-03f95eab9c7d2b2a1

#echo GEN2MCRDS01 imports executed

#import GEN2MCRDS02 instance
#echo starting GEN2MCRDS02 Imports
#terraform state rm 'module.app["GEN2MCRDS02"].aws_instance.this[0]'
#terraform import -var-file="terraform.tfvars" 'module.app["GEN2MCRDS02"].aws_instance.this[0]' i-00f1e85e22fa9cd02

#echo GEN2MCRDS02 imports executed


#End of command execution
echo Finished executing commands!