#!/bin/bash

#import GEN2FALDMZ01 instance
echo starting GEN2FALDMZ01 Imports
terraform state rm 'module.app["GEN2FALDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALDMZ01"].aws_instance.this[0]' i-05fdf1e4e6d82646d

echo GEN2FALDMZ01 imports executed

#import GEN2FALCRDS01 instance
echo starting GEN2FALCRDS01 Imports
terraform state rm 'module.app["GEN2FALCRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCRDS01"].aws_instance.this[0]' i-003cf4f13220ed81a

echo GEN2FALCRDS01 imports executed

#import GEN2FALCDB01 instance
echo starting GEN2FALCDB01 Imports
terraform state rm 'module.app["GEN2FALCDB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_instance.this[0]' i-0d374496cc3f50fae

terraform state rm 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdb"]' vol-0a005d7e2321fd3e8
terraform state rm 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0a005d7e2321fd3e8:i-0d374496cc3f50fae
terraform state rm 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdc"]' vol-02d1ca07254876cab
terraform state rm 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-02d1ca07254876cab:i-0d374496cc3f50fae
terraform state rm 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdd"]' vol-0e4e867341ccfe3c3
terraform state rm 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0e4e867341ccfe3c3:i-0d374496cc3f50fae
terraform state rm 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sde"]' vol-0bfecadf77ec128be
terraform state rm 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-0bfecadf77ec128be:i-0d374496cc3f50fae
terraform state rm 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_ebs_volume.this["sdf"]' vol-05116e9d49850ed64
terraform state rm 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2FALCDB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-05116e9d49850ed64:i-0d374496cc3f50fae
echo GEN2FALCDB01 imports executed


#End of command execution
echo Finished executing commands!