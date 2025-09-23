#!/bin/bash

#import GEN2SALUSDMZ01 instance
echo starting GEN2SALUSDMZ01 Imports
terraform state rm 'module.app["GEN2SALUSDMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSDMZ01"].aws_instance.this[0]' i-02629fbb29564fd11

echo GEN2SALUSDMZ01 imports executed

#import GEN2SALUSRDS01 instance
echo starting GEN2SALUSRDS01 Imports
terraform state rm 'module.app["GEN2SALUSRDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSRDS01"].aws_instance.this[0]' i-0f4d0bc4a48dff78f

echo GEN2SALUSRDS01 imports executed

#import GEN2SALUSHM01 instance
echo starting GEN2SALUSHM01 Imports
terraform state rm 'module.app["GEN2SALUSHM01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_instance.this[0]' i-09f025b1770464d43

terraform state rm 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdb"]' vol-0e40a118d3ebe21b4
terraform state rm 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0e40a118d3ebe21b4:i-09f025b1770464d43
terraform state rm 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdc"]' vol-084f94206d4c0ca05
terraform state rm 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-084f94206d4c0ca05:i-09f025b1770464d43
terraform state rm 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_ebs_volume.this["sdd"]' vol-0b060122c05f1b2a7
terraform state rm 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["GEN2SALUSHM01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0b060122c05f1b2a7:i-09f025b1770464d43
echo GEN2SALUSHM01 imports executed

#import gen2salushana01 instance
echo starting gen2salushana01 Imports
terraform state rm 'module.app["gen2salushana01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2salushana01"].aws_instance.this[0]' i-03c8c93d601d167a5

terraform state rm 'module.app["gen2salushana01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2salushana01"].aws_ebs_volume.this["sdb"]' vol-0759be4307f02126e
terraform state rm 'module.app["gen2salushana01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["gen2salushana01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0759be4307f02126e:i-03c8c93d601d167a5
echo gen2salushana01 imports executed


#End of command execution
echo Finished executing commands!
