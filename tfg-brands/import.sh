#!/bin/bash

#import GEN2TFGDMZ02 instance
echo starting GEN2TFGDMZ02 Imports
terraform state rm 'module.app["GEN2TFGDMZ02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGDMZ02"].aws_instance.this[0]' i-000e371fd10734c64

echo GEN2TFGDMZ02 imports executed

#import GEN2TFGAPP01 instance
echo starting GEN2TFGAPP01 Imports
terraform state rm 'module.app["GEN2TFGAPP01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGAPP01"].aws_instance.this[0]' i-0a43e7355e128c783

echo GEN2TFGAPP01 imports executed

#import GEN2TFGSQL01 instance
echo starting GEN2TFGSQL01 Imports
terraform state rm 'module.app["GEN2TFGSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_instance.this[0]' i-08b732f8c3cf5bec8

terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdb"]' vol-066cc479f405e3e4b
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-066cc479f405e3e4b:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdc"]' vol-082defb67d5a804ec
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-082defb67d5a804ec:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdd"]' vol-0f89dd08377b68589
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0f89dd08377b68589:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sde"]' vol-065062426136e5bb8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-065062426136e5bb8:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdf"]' vol-04fd398145cccb5b7
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-04fd398145cccb5b7:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdg"]' vol-01135aceb4a68bf77
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-01135aceb4a68bf77:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdh"]' vol-050475838c7aa09ac
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdh"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdh"]' /dev/sdh:vol-050475838c7aa09ac:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdi"]' vol-0cf26fddd3a3fcd3b
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdi"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdi"]' /dev/sdi:vol-0cf26fddd3a3fcd3b:i-08b732f8c3cf5bec8
terraform state rm 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_ebs_volume.this["sdj"]' vol-0dfd1c9fea2f1878f
terraform state rm 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdj"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGSQL01"].aws_volume_attachment.this["sdj"]' /dev/sdj:vol-0dfd1c9fea2f1878f:i-08b732f8c3cf5bec8
echo GEN2TFGSQL01 imports executed

#import GEN2TFGDMZ03 instance
echo starting GEN2TFGDMZ03 Imports
terraform state rm 'module.app["GEN2TFGDMZ03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGDMZ03"].aws_instance.this[0]' i-0123fefa7c30ee54f

echo GEN2TFGDMZ03 imports executed

#import GEN2TFGRDS01 instance
echo starting GEN2TFGRDS01 Imports
terraform state rm 'module.app["GEN2TFGRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGRDS01"].aws_instance.this[0]' i-0c9fdfc4432476b85

echo GEN2TFGRDS01 imports executed

#import GEN2TFGDMZ01 instance
echo starting GEN2TFGDMZ01 Imports
terraform state rm 'module.app["GEN2TFGDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGDMZ01"].aws_instance.this[0]' i-0d023d8be5fda9b43

echo GEN2TFGDMZ01 imports executed

#import GEN2TFGRDS02 instance
echo starting GEN2TFGRDS02 Imports
terraform state rm 'module.app["GEN2TFGRDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2TFGRDS02"].aws_instance.this[0]' i-0383d992004aa0bb6

echo GEN2TFGRDS02 imports executed


#End of command execution
echo Finished executing commands!
