#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

# #import GEN2FRBRK01 instance
# print("Starting GEN2FRBRK01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRBRK01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRBRK01"].aws_instance.this[0]', 'i-05c43a0df962519c6', var_file='terraform.tfvars', capture_output=False)

# print("GEN2FRBRK01 imports executed")

# #import GEN2FRINT01 instance
# print("Starting GEN2FRINT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRINT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRINT01"].aws_instance.this[0]', 'i-08fe714479632f173', var_file='terraform.tfvars', capture_output=False)

# print("GEN2FRINT01 imports executed")

# #import GEN2FRINT02 instance
# print("Starting GEN2FRINT02 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRINT02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRINT02"].aws_instance.this[0]', 'i-0268940729f800bcc', var_file='terraform.tfvars', capture_output=False)

# print("GEN2FRINT02 imports executed")

# #import GEN2FRRDS01 instance
# print("Starting GEN2FRRDS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRRDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRRDS01"].aws_instance.this[0]', 'i-05c96b3463538c1af', var_file='terraform.tfvars', capture_output=False)

# print("GEN2FRRDS01 imports executed")

# #import GEN2FRRDSUAT01 instance
# print("Starting GEN2FRRDSUAT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRRDSUAT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRRDSUAT01"].aws_instance.this[0]', 'i-09ad441d16e842e63', var_file='terraform.tfvars', capture_output=False)

# print("GEN2FRRDSUAT01 imports executed")

# #import GEN2FRSQL01 instance
# print("Starting GEN2FRSQL01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_instance.this[0]', 'i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0561a639f2ed2a56f', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0561a639f2ed2a56f:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdc"]', 'vol-08d63d3beb84da692', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-08d63d3beb84da692:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0e3ed4da71253f09b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0e3ed4da71253f09b:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sde"]', 'vol-0227cdb3195446bba', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0227cdb3195446bba:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdf"]', 'vol-081d061ebe924a657', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-081d061ebe924a657:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0d4f34ff75f694117', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0d4f34ff75f694117:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_ebs_volume.this["sdh"]', 'vol-00fdacbf93f6ef5d4', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-00fdacbf93f6ef5d4:i-050a3ebb4eacd4f27', var_file='terraform.tfvars', capture_output=False)
# print("GEN2FRSQL01 imports executed")

# #import GEN2FRSQLUAT01 instance
# print("Starting GEN2FRSQLUAT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_instance.this[0]', 'i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdb"]', 'vol-05b265c38addf1457', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05b265c38addf1457:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdc"]', 'vol-022498ba79f7991d8', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-022498ba79f7991d8:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdd"]', 'vol-0f0c5b2128cfe9dea', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f0c5b2128cfe9dea:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sde"]', 'vol-0607ab5b1b0e2363a', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0607ab5b1b0e2363a:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdf"]', 'vol-07cf5aa2e406797b2', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-07cf5aa2e406797b2:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdg"]', 'vol-0e8b46607b66c493b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0e8b46607b66c493b:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdh"]', 'vol-010f5378ab465a96a', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-010f5378ab465a96a:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdi"]', 'vol-028fa753fc92ebb0f', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-028fa753fc92ebb0f:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdj"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_ebs_volume.this["sdj"]', 'vol-0b2c5a302d49cf705', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdj"]', capture_output=False)
# tf.import_cmd('module.app["GEN2FRSQLUAT01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-0b2c5a302d49cf705:i-0a425cec16c776a62', var_file='terraform.tfvars', capture_output=False)
# print("GEN2FRSQLUAT01 imports executed")

#import GEN2FRADFINT01 instance
print("Starting GEN2FRADFINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2FRADFINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2FRADFINT01"].aws_instance.this[0]', 'i-0480543df4fd08fbd', var_file='terraform.tfvars', capture_output=False)

print("GEN2FRADFINT01 imports executed")



#End of command execution
print("Finished executing commands!")