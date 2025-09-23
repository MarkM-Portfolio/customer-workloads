#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2GSHRDS01 instance
print("Starting GEN2GSHRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2GSHRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHRDS01"].aws_instance.this[0]', 'i-03ef936f251fab327', var_file='terraform.tfvars', capture_output=False)

print("GEN2GSHRDS01 imports executed")

#import GEN2GSHSQL01 instance
print("Starting GEN2GSHSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_instance.this[0]', 'i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdb"]', 'vol-08280ffde1e1ac275', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-08280ffde1e1ac275:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0798fb039793743be', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0798fb039793743be:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdd"]', 'vol-06a3f57c95043cd20', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-06a3f57c95043cd20:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sde"]', 'vol-04f15608fe436ec47', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-04f15608fe436ec47:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdf"]', 'vol-03d44d35b494f91d3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-03d44d35b494f91d3:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdg"]', 'vol-05d7f6374cca99af6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-05d7f6374cca99af6:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdh"]', 'vol-00c3218abc67c5d9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-00c3218abc67c5d9f:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdi"]', 'vol-006f5131e06e9a161', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-006f5131e06e9a161:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_ebs_volume.this["sdj"]', 'vol-0c8519ab60a50aa32', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-0c8519ab60a50aa32:i-0457afcc8453fe185', var_file='terraform.tfvars', capture_output=False)
print("GEN2GSHSQL01 imports executed")

#import GEN2GSHSMTP01 instance
print("Starting GEN2GSHSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2GSHSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2GSHSMTP01"].aws_instance.this[0]', 'i-0d253cab3b0ad6553', var_file='terraform.tfvars', capture_output=False)

print("GEN2GSHSMTP01 imports executed")


#End of command execution
print("Finished executing commands!")