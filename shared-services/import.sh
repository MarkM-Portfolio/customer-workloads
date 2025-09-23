# #!/bin/bash

# GEN2DEMOSQL01="i-0ff68a6f57651575d"
# GEN2DEMOSQL01_SDB="vol-01a552e5fe8dbdfc3"
# GEN2DEMOSQL01_SDC="vol-0992b44a34f8be061"
# GEN2DEMOSQL01_SDD="vol-090b0586eb3c14ebf"
# GEN2DEMOSQL01_SDE="vol-08cb76f50c16ee685"
# GEN2DEMOSQL01_SDF="vol-01efd038683c1b4e5"
# GEN2DEMOSQL01_SDG="vol-0ef9e7b37697c83f5"

# #-------------------------------

# #Import GEN2DEMOSQL01 instance
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_instance.this[0]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_instance.this[0]' $GEN2DEMOSQL01
# #Import GEN2DEMOSQL01 volume/s & attachment/s
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdb"]' $GEN2DEMOSQL01_SDB
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdc"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdc"]' $GEN2DEMOSQL01_SDC
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdd"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdd"]' $GEN2DEMOSQL01_SDD
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sde"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sde"]' $GEN2DEMOSQL01_SDE
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdf"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdf"]' $GEN2DEMOSQL01_SDF
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdg"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdg"]' $GEN2DEMOSQL01_SDG

# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdb"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdb"]' /dev/sdb:$GEN2DEMOSQL01_SDB:$GEN2DEMOSQL01
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdc"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdc"]' /dev/sdc:$GEN2DEMOSQL01_SDC:$GEN2DEMOSQL01
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdd"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdd"]' /dev/sdd:$GEN2DEMOSQL01_SDD:$GEN2DEMOSQL01
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sde"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sde"]' /dev/sde:$GEN2DEMOSQL01_SDE:$GEN2DEMOSQL01
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdf"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdf"]' /dev/sdf:$GEN2DEMOSQL01_SDF:$GEN2DEMOSQL01
# terraform state rm 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdg"]'
# terraform import -var-file="terraform.tfvars" 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdg"]' /dev/sdg:$GEN2DEMOSQL01_SDG:$GEN2DEMOSQL01

# #-------------------------------

# #End of command execution
# echo Finished executing commands! 
