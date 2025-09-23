#!/bin/bash

#import GEN2AMBAPP04 instance
echo starting GEN2AMBAPP04 Imports
terraform state rm 'module.ec2["GEN2AMBAPP04"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBAPP04"].aws_instance.this[0]' i-0a5b1d9ce5e22cf00

echo GEN2AMBAPP04 imports executed

#import GEN2AMBAPP03 instance
echo starting GEN2AMBAPP03 Imports
terraform state rm 'module.ec2["GEN2AMBAPP03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBAPP03"].aws_instance.this[0]' i-09c6831abc285c4e7

echo GEN2AMBAPP03 imports executed

#import GEN2AMBDMZ03 instance
echo starting GEN2AMBDMZ03 Imports
terraform state rm 'module.ec2["GEN2AMBDMZ03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ03"].aws_instance.this[0]' i-0a1e12e8c5b6c1523

terraform state rm 'module.ec2["GEN2AMBDMZ03"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ03"].aws_ebs_volume.this["sdb"]' vol-09f9d4570eb6d2fcf
terraform state rm 'module.ec2["GEN2AMBDMZ03"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ03"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-09f9d4570eb6d2fcf:i-0a1e12e8c5b6c1523
echo GEN2AMBDMZ03 imports executed

#import GEN2AMBRDS04 instance
echo starting GEN2AMBRDS04 Imports
terraform state rm 'module.ec2["GEN2AMBRDS04"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBRDS04"].aws_instance.this[0]' i-01a1acaaed3d69dee

echo GEN2AMBRDS04 imports executed

#import GEN2AMBSQL02 instance
echo starting GEN2AMBSQL02 Imports
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_instance.this[0]' i-017b7d652468c00d1

terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdb"]' vol-07c24ba0cee92138f
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-07c24ba0cee92138f:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdc"]' vol-0b27eae1f233fb4da
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0b27eae1f233fb4da:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdd"]' vol-02e834f3e1f8d1f73
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-02e834f3e1f8d1f73:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sde"]' vol-092bb406d42297b98
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sde"]' /dev/sde:vol-092bb406d42297b98:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdf"]' vol-0c588b32d698debaf
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0c588b32d698debaf:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdg"]' vol-0e30e27379565bc00
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-0e30e27379565bc00:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdh"]' vol-04d3ac2b1dd6918ac
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-04d3ac2b1dd6918ac:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdi"]' vol-0d051993c5c3668a3
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdi"]' /dev/sdi:vol-0d051993c5c3668a3:i-017b7d652468c00d1
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_ebs_volume.this["sdj"]' vol-045c9364e0f7abe69
terraform state rm 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQL02"].aws_volume_attachment.this["sdj"]' /dev/sdj:vol-045c9364e0f7abe69:i-017b7d652468c00d1
echo GEN2AMBSQL02 imports executed

#import GEN2AMBDMZ04 instance
echo starting GEN2AMBDMZ04 Imports
terraform state rm 'module.ec2["GEN2AMBDMZ04"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ04"].aws_instance.this[0]' i-0e3eb8150695b57b7

terraform state rm 'module.ec2["GEN2AMBDMZ04"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ04"].aws_ebs_volume.this["sdb"]' vol-08a92c3162d47d1b7
terraform state rm 'module.ec2["GEN2AMBDMZ04"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZ04"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-08a92c3162d47d1b7:i-0e3eb8150695b57b7
echo GEN2AMBDMZ04 imports executed

#import GEN2AMBSQLUAT02 instance
echo starting GEN2AMBSQLUAT02 Imports
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_instance.this[0]' i-0acbc3bcae8a654fd

terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdb"]' vol-005f6e4ee44d26ca4
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-005f6e4ee44d26ca4:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdc"]' vol-084e09a117d8de476
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-084e09a117d8de476:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdd"]' vol-0dad95fc3b361bd78
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0dad95fc3b361bd78:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sde"]' vol-073cf3fb69d836bc6
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sde"]' /dev/sde:vol-073cf3fb69d836bc6:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdf"]' vol-0cc7c3525eda58e24
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0cc7c3525eda58e24:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdg"]' vol-07199da42acd08dc0
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-07199da42acd08dc0:i-0acbc3bcae8a654fd
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_ebs_volume.this["sdh"]' vol-04d34680146073add
terraform state rm 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBSQLUAT02"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-04d34680146073add:i-0acbc3bcae8a654fd
echo GEN2AMBSQLUAT02 imports executed

#import GEN2AMBDMZUAT02 instance
echo starting GEN2AMBDMZUAT02 Imports
terraform state rm 'module.ec2["GEN2AMBDMZUAT02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBDMZUAT02"].aws_instance.this[0]' i-0e1fc583659b8d4bd

echo GEN2AMBDMZUAT02 imports executed

#import GEN2AMBRDSUAT02 instance
echo starting GEN2AMBRDSUAT02 Imports
terraform state rm 'module.ec2["GEN2AMBRDSUAT02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBRDSUAT02"].aws_instance.this[0]' i-085d45d99451d2b0b

echo GEN2AMBRDSUAT02 imports executed

#import GEN2AMBRDS03 instance
echo starting GEN2AMBRDS03 Imports
terraform state rm 'module.ec2["GEN2AMBRDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBRDS03"].aws_instance.this[0]' i-04d1be418265737bf

terraform state rm 'module.ec2["GEN2AMBRDS03"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBRDS03"].aws_ebs_volume.this["sdb"]' vol-0e7980c535ae723aa
terraform state rm 'module.ec2["GEN2AMBRDS03"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2AMBRDS03"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0e7980c535ae723aa:i-04d1be418265737bf
echo GEN2AMBRDS03 imports executed


#End of command execution
echo Finished executing commands!