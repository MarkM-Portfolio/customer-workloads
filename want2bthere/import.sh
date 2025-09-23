#!/bin/bash

#import GEN2LHDMZ01 instance
echo starting GEN2LHDMZ01 Imports
terraform state rm 'module.ec2["GEN2LHDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHDMZ01"].aws_instance.this[0]' i-050047471311b5f70

echo GEN2LHDMZ01 imports executed

#import GEN2LHRDS01 instance
echo starting GEN2LHRDS01 Imports
terraform state rm 'module.ec2["GEN2LHRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHRDS01"].aws_instance.this[0]' i-0013589b18f510f7d

echo GEN2LHRDS01 imports executed

#import GEN2LHSQL01 instance
echo starting GEN2LHSQL01 Imports
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_instance.this[0]' i-026f8fffb217e81c3

terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdb"]' vol-09b15f2bbcdd212c2
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-09b15f2bbcdd212c2:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdc"]' vol-0d1922216eb725d3e
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0d1922216eb725d3e:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdd"]' vol-04c9aec97a3d5eb63
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-04c9aec97a3d5eb63:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sde"]' vol-0c2947e8becd00a62
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0c2947e8becd00a62:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdf"]' vol-08e69afa30a6e6dab
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-08e69afa30a6e6dab:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdg"]' vol-0a31bf6489d5842ad
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0a31bf6489d5842ad:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdh"]' vol-0df785585ab1a1488
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-0df785585ab1a1488:i-026f8fffb217e81c3
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_ebs_volume.this["sdi"]' vol-00c179d3e90b2df48
terraform state rm 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHSQL01"].aws_volume_attachment.this["sdi"]' /dev/sdi:vol-00c179d3e90b2df48:i-026f8fffb217e81c3
echo GEN2LHSQL01 imports executed

#import GEN2LHUSQL01 instance
echo starting GEN2LHUSQL01 Imports
terraform state rm 'module.ec2["GEN2LHUSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHUSQL01"].aws_instance.this[0]' i-0024f4c53184ee117

terraform state rm 'module.ec2["GEN2LHUSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHUSQL01"].aws_ebs_volume.this["sdb"]' vol-0fc733459bfa380e4
terraform state rm 'module.ec2["GEN2LHUSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHUSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0fc733459bfa380e4:i-0024f4c53184ee117
echo GEN2LHUSQL01 imports executed

#import GEN2LHURDS01 instance
echo starting GEN2LHURDS01 Imports
terraform state rm 'module.ec2["GEN2LHURDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHURDS01"].aws_instance.this[0]' i-01b3252b740319337

echo GEN2LHURDS01 imports executed

#import GEN2LHRDS02 instance
echo starting GEN2LHRDS02 Imports
terraform state rm 'module.ec2["GEN2LHRDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2LHRDS02"].aws_instance.this[0]' i-090d4f75d5c90c2a9

echo GEN2LHRDS02 imports executed


#End of command execution
echo Finished executing commands!
