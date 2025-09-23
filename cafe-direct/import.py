#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

# #import GEN2CDRDS01 instance
# print("Starting GEN2CDRDS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CDRDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CDRDS01"].aws_instance.this[0]', 'i-0021ab3ef46120137', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CDRDS01 imports executed")

# #import GEN2CDBRK01 instance
# print("Starting GEN2CDBRK01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CDBRK01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CDBRK01"].aws_instance.this[0]', 'i-04fbe36d961904529', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CDBRK01 imports executed")

# #import GEN2CDINT01 instance
# print("Starting GEN2CDINT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CDINT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CDINT01"].aws_instance.this[0]', 'i-01874dc72b573a087', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CDINT01 imports executed")

#import GEN2CDHM01 instance
print("Starting GEN2CDHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_instance.this[0]', 'i-0151fa52232eb727b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_ebs_volume.this["sdb"]', 'vol-0c410e9c19e8ebbf6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c410e9c19e8ebbf6:i-0151fa52232eb727b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_ebs_volume.this["sdc"]', 'vol-03dcd6317c7fe7810', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-03dcd6317c7fe7810:i-0151fa52232eb727b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_ebs_volume.this["sdd"]', 'vol-07995bbc7cbbfe87f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CDHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CDHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-07995bbc7cbbfe87f:i-0151fa52232eb727b', var_file='terraform.tfvars', capture_output=False)
print("GEN2CDHM01 imports executed")

# #import GEN2CDINT03 instance
# print("Starting GEN2CDINT03 Imports")
# tf.cmd('state rm', 'module.app["GEN2CDINT03"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CDINT03"].aws_instance.this[0]', 'i-028ae58404d5b0451', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CDINT03 imports executed")

# #import GEN2CDINT02 instance
# print("Starting GEN2CDINT02 Imports")
# tf.cmd('state rm', 'module.app["GEN2CDINT02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CDINT02"].aws_instance.this[0]', 'i-0e4668c283d37e95c', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CDINT02 imports executed")

# #import gen2cdhana01 instance
# print("Starting gen2cdhana01 Imports")
# tf.cmd('state rm', 'module.app["gen2cdhana01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["gen2cdhana01"].aws_instance.this[0]', 'i-09e610a2e7d7b43ad', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["gen2cdhana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["gen2cdhana01"].aws_ebs_volume.this["sdb"]', 'vol-0242d9515df52ee76', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["gen2cdhana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["gen2cdhana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0242d9515df52ee76:i-09e610a2e7d7b43ad', var_file='terraform.tfvars', capture_output=False)
# print("gen2cdhana01 imports executed")

#End of command execution
print("Finished executing commands!")