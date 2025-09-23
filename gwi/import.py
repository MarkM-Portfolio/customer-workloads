#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2GWIRDS01 instance
print("Starting GEN2GWIRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2GWIRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2GWIRDS01"].aws_instance.this[0]', 'i-0b2639959ef879c3e', var_file='terraform.tfvars', capture_output=False)

print("GEN2GWIRDS01 imports executed")

# #import GEN2GWISQL01 instance
# print("Starting GEN2GWISQL01 Imports")
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_instance.this[0]', 'i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdb"]', 'vol-0d4967f6134287a15', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0d4967f6134287a15:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdc"]', 'vol-06f360f5e22b06802', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-06f360f5e22b06802:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdd"]', 'vol-0d45554fc7fe06764', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d45554fc7fe06764:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sde"]', 'vol-0c050e2bf4f042882', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0c050e2bf4f042882:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdf"]', 'vol-08149fc927b62a97d', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-08149fc927b62a97d:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdg"]', 'vol-027c4961e0dc0034f', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-027c4961e0dc0034f:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdh"]', 'vol-0356fd007a86e437b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0356fd007a86e437b:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_ebs_volume.this["sdi"]', 'vol-02bf9b7e8ae17249a', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-02bf9b7e8ae17249a:i-04a05cb891a1632dc', var_file='terraform.tfvars', capture_output=False)
# print("GEN2GWISQL01 imports executed")

# #import GEN2GWISMTP01 instance
# print("Starting GEN2GWISMTP01 Imports")
# tf.cmd('state rm', 'module.app["GEN2GWISMTP01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2GWISMTP01"].aws_instance.this[0]', 'i-0e73f13026e3730e4', var_file='terraform.tfvars', capture_output=False)

# print("GEN2GWISMTP01 imports executed")


# #End of command execution
# print("Finished executing commands!")