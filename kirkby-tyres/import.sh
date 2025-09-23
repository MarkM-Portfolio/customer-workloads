#!/bin/bash

# #import GEN2KTINT01 instance
# echo starting GEN2KTINT01 Imports
# terraform state rm 'module.ec2["GEN2KTINT01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTINT01"].aws_instance.this[0]' i-00e0eb9f62b89cc2a

# echo GEN2KTINT01 imports executed

# #import GEN2KTBRK01 instance
# echo starting GEN2KTBRK01 Imports
# terraform state rm 'module.ec2["GEN2KTBRK01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTBRK01"].aws_instance.this[0]' i-07546665461b21df6

# echo GEN2KTBRK01 imports executed

# #import GEN2KTINT02 instance
# echo starting GEN2KTINT02 Imports
# terraform state rm 'module.ec2["GEN2KTINT02"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTINT02"].aws_instance.this[0]' i-02ce6b7490094decf

# echo GEN2KTINT02 imports executed

# #import GEN2KTRDS01 instance
# echo starting GEN2KTRDS01 Imports
# terraform state rm 'module.ec2["GEN2KTRDS01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTRDS01"].aws_instance.this[0]' i-0c043e2540bb14a7b

# echo GEN2KTRDS01 imports executed

# #import GEN2KTDMZ01 instance
# echo starting GEN2KTDMZ01 Imports
# terraform state rm 'module.ec2["GEN2KTDMZ01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTDMZ01"].aws_instance.this[0]' i-01004dae48b1779dd

# echo GEN2KTDMZ01 imports executed

# #import GEN2KTRDS03 instance
# echo starting GEN2KTRDS03 Imports
# terraform state rm 'module.ec2["GEN2KTRDS03"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTRDS03"].aws_instance.this[0]' i-0f3542506bdcebc88

# echo GEN2KTRDS03 imports executed

# #import GEN2KTRDS02 instance
# echo starting GEN2KTRDS02 Imports
# terraform state rm 'module.ec2["GEN2KTRDS02"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTRDS02"].aws_instance.this[0]' i-0d009a4713a237d0b

# echo GEN2KTRDS02 imports executed

# #import GEN2KTSQL01 instance
# echo starting GEN2KTSQL01 Imports
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_instance.this[0]' i-09f6f9f41a3b05bb9

# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdb"]' vol-0a14f677d872c4e74
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0a14f677d872c4e74:i-09f6f9f41a3b05bb9
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdc"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdc"]' vol-0927a086800b7f259
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdc"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-0927a086800b7f259:i-09f6f9f41a3b05bb9
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdd"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdd"]' vol-08e919e136769798a
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdd"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-08e919e136769798a:i-09f6f9f41a3b05bb9
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sde"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sde"]' vol-05d738bbe4b61bc5a
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sde"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:vol-05d738bbe4b61bc5a:i-09f6f9f41a3b05bb9
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdf"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_ebs_volume.this["sdf"]' vol-0ffe20942e881f977
# terraform state rm 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdf"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:vol-0ffe20942e881f977:i-09f6f9f41a3b05bb9
# echo GEN2KTSQL01 imports executed

# #import GEN2KTHM01 instance
# echo starting GEN2KTHM01 Imports
# terraform state rm 'module.ec2["GEN2KTHM01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHM01"].aws_instance.this[0]' i-0f35cc4b96bc7e574

# terraform state rm 'module.ec2["GEN2KTHM01"].aws_ebs_volume.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHM01"].aws_ebs_volume.this["sdb"]' vol-062451a46b0a6bf84
# terraform state rm 'module.ec2["GEN2KTHM01"].aws_volume_attachment.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHM01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-062451a46b0a6bf84:i-0f35cc4b96bc7e574
# echo GEN2KTHM01 imports executed

#import GEN2KTDMZUAT01 instance
echo starting GEN2KTDMZUAT01 Imports
terraform state rm 'module.ec2["GEN2KTDMZUAT01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTDMZUAT01"].aws_instance.this[0]' i-0e4dfd9c6c5e904f0

echo GEN2KTDMZUAT01 imports executed

#import GEN2KTHMUAT01 instance
echo starting GEN2KTHMUAT01 Imports
terraform state rm 'module.ec2["GEN2KTHMUAT01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHMUAT01"].aws_instance.this[0]' i-00ad8785d054a51b3

terraform state rm 'module.ec2["GEN2KTHMUAT01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHMUAT01"].aws_ebs_volume.this["sdb"]' vol-0f2fe3f8d35c9cfa1
terraform state rm 'module.ec2["GEN2KTHMUAT01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTHMUAT01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0fb069e469a8b3104:i-00ad8785d054a51b3
echo GEN2KTHMUAT01 imports executed

#import GEN2KTINTUAT01 instance
echo starting GEN2KTINTUAT01 Imports
terraform state rm 'module.ec2["GEN2KTINTUAT01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTINTUAT01"].aws_instance.this[0]' i-005b79bcb83e3f99a

echo GEN2KTINTUAT01 imports executed

#import GEN2KTRDSUAT01 instance
echo starting GEN2KTRDSUAT01 Imports
terraform state rm 'module.ec2["GEN2KTRDSUAT01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTRDSUAT01"].aws_instance.this[0]' i-01b273a9d1fbbc527

echo GEN2KTRDSUAT01 imports executed

#import gen2kthanauat01 instance
# echo starting gen2kthanauat01 Imports
# terraform state rm 'module.ec2["gen2kthanauat01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["gen2kthanauat01"].aws_instance.this[0]' i-06f1f6eae4986c2ed

# terraform state rm 'module.ec2["gen2kthanauat01"].aws_ebs_volume.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["gen2kthanauat01"].aws_ebs_volume.this["sdb"]' vol-018f919dd9d83d4f4
# terraform state rm 'module.ec2["gen2kthanauat01"].aws_volume_attachment.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.ec2["gen2kthanauat01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-018f919dd9d83d4f4:i-06f1f6eae4986c2ed
# echo gen2kthanauat01 imports executed

#import GEN2KTINTUAT02 instance
echo starting GEN2KTINTUAT02 Imports
terraform state rm 'module.ec2["GEN2KTINTUAT02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTINTUAT02"].aws_instance.this[0]' i-052d23584c2624e1e

echo GEN2KTINTUAT02 imports executed

#import GEN2KTSQLUAT01 instance
echo starting GEN2KTSQLUAT01 Imports
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_instance.this[0]' i-089900c66c8f01a39

terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdb"]' vol-0c0d7262ea56b7917
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdb"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdb"]' /dev/sdb:vol-0c0d7262ea56b7917:i-089900c66c8f01a39
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdc"]' vol-078b5a14d5fa54368
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdc"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdc"]' /dev/sdc:vol-078b5a14d5fa54368:i-089900c66c8f01a39
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdd"]' vol-0d47ef63ae32ca1ef
terraform state rm 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdd"]'
terraform import -var-file="terraform.tfvars" 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdd"]' /dev/sdd:vol-0d47ef63ae32ca1ef:i-089900c66c8f01a39
echo GEN2KTSQLUAT01 imports executed


#End of command execution
echo Finished executing commands!
