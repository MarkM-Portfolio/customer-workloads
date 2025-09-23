
#!/bin/bash

#import GEN2SHMBRK01 instance
echo starting GEN2SHMBRK01 Imports
terraform state rm 'module.app["GEN2SHMBRK01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMBRK01"].aws_instance.this[0]' i-08a14c8c16fab4237

echo GEN2SHMBRK01 imports executed

#import GEN2SHMRDS01 instance
echo starting GEN2SHMRDS01 Imports
terraform state rm 'module.app["GEN2SHMRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMRDS01"].aws_instance.this[0]' i-05a830b4654c83363

echo GEN2SHMRDS01 imports executed

#import GEN2SHMSQL01 instance
echo starting GEN2SHMSQL01 Imports
terraform state rm 'module.app["GEN2SHMSQL01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_instance.this[0]' i-09be3cfca34ee20f7

terraform state rm 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdb"]' vol-081a6e57b2eb45996
terraform state rm 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-081a6e57b2eb45996:i-09be3cfca34ee20f7
terraform state rm 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdc"]' vol-0a7e2a5d9f392921f
terraform state rm 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0a7e2a5d9f392921f:i-09be3cfca34ee20f7
terraform state rm 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdd"]' vol-03036d4bf609033df
terraform state rm 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-03036d4bf609033df:i-09be3cfca34ee20f7
terraform state rm 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sde"]' vol-03359b3776071e0f0
terraform state rm 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-03359b3776071e0f0:i-09be3cfca34ee20f7
terraform state rm 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_ebs_volume.this["sdf"]' vol-00540b37886e088af
terraform state rm 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SHMSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-00540b37886e088af:i-09be3cfca34ee20f7
echo GEN2SHMSQL01 imports executed


#End of command execution
echo Finished executing commands!
