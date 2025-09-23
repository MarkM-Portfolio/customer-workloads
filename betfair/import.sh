#!/bin/bash

#import EU07DB01 instance
echo starting EU07DB01 Imports
terraform state rm 'module.app["EU07DB01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_instance.this[0]' i-03b22c72f089ba0b3

terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sdb"]' vol-07b2deb86d7c594b0
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-07b2deb86d7c594b0:i-03b22c72f089ba0b3
terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sdc"]' vol-016380a0322db8819
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-016380a0322db8819:i-03b22c72f089ba0b3
terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sdd"]' vol-04e0f7ada12c8c124
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-04e0f7ada12c8c124:i-03b22c72f089ba0b3
terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sde"]' vol-04b1ccb45f7f653ff
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-04b1ccb45f7f653ff:i-03b22c72f089ba0b3
terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sdf"]' vol-00df3bc92ee86575f
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-00df3bc92ee86575f:i-03b22c72f089ba0b3
terraform state rm 'module.app["EU07DB01"].aws_ebs_volume.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_ebs_volume.this["sdg"]' vol-00cb8f03fb83e0741
terraform state rm 'module.app["EU07DB01"].aws_volume_attachment.this["sdg"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB01"].aws_volume_attachment.this["sdg"]' /dev/sdg:vol-00cb8f03fb83e0741:i-03b22c72f089ba0b3
echo EU07DB01 imports executed

#import EU07DB03 instance
echo starting EU07DB03 Imports
terraform state rm 'module.app["EU07DB03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_instance.this[0]' i-0f34f104d9fb8000f

terraform state rm 'module.app["EU07DB03"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_ebs_volume.this["sdb"]' vol-0227b80e67d76dab7
terraform state rm 'module.app["EU07DB03"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0227b80e67d76dab7:i-0f34f104d9fb8000f
terraform state rm 'module.app["EU07DB03"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_ebs_volume.this["sdc"]' vol-04b7926a274600e70
terraform state rm 'module.app["EU07DB03"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-04b7926a274600e70:i-0f34f104d9fb8000f
terraform state rm 'module.app["EU07DB03"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_ebs_volume.this["sdd"]' vol-0c12aba10825e4cbb
terraform state rm 'module.app["EU07DB03"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0c12aba10825e4cbb:i-0f34f104d9fb8000f
terraform state rm 'module.app["EU07DB03"].aws_ebs_volume.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_ebs_volume.this["sde"]' vol-04a0fc3a46fbbb863
terraform state rm 'module.app["EU07DB03"].aws_volume_attachment.this["sde"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_volume_attachment.this["sde"]' /dev/sde:vol-04a0fc3a46fbbb863:i-0f34f104d9fb8000f
terraform state rm 'module.app["EU07DB03"].aws_ebs_volume.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_ebs_volume.this["sdf"]' vol-006ac23943c135160
terraform state rm 'module.app["EU07DB03"].aws_volume_attachment.this["sdf"]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DB03"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-006ac23943c135160:i-0f34f104d9fb8000f
echo EU07DB03 imports executed

#import EU07DMZ01 instance
echo starting EU07DMZ01 Imports
terraform state rm 'module.app["EU07DMZ01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DMZ01"].aws_instance.this[0]' i-0124f28705382c918

echo EU07DMZ01 imports executed

#import EU07RDS03 instance
echo starting EU07RDS03 Imports
terraform state rm 'module.app["EU07RDS03"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07RDS03"].aws_instance.this[0]' i-0c5ab8093665ba37b

echo EU07RDS03 imports executed

#import EU07DMZ02 instance
echo starting EU07DMZ02 Imports
terraform state rm 'module.app["EU07DMZ02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07DMZ02"].aws_instance.this[0]' i-02ee860c422f4842a

echo EU07DMZ02 imports executed

#import EU07RDS02 instance
echo starting EU07RDS02 Imports
terraform state rm 'module.app["EU07RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07RDS02"].aws_instance.this[0]' i-08dc4a1868813fbf1

echo EU07RDS02 imports executed

#import EU07RDS01 instance
echo starting EU07RDS01 Imports
terraform state rm 'module.app["EU07RDS01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU07RDS01"].aws_instance.this[0]' i-079d8c132be54fc9e

echo EU07RDS01 imports executed


#End of command execution
echo Finished executing commands!
