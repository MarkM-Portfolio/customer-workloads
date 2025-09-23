#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2YMCADMZ01 instance
print("Starting GEN2YMCADMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2YMCADMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCADMZ01"].aws_instance.this[0]', 'i-04b2115829cc95808', var_file='terraform.tfvars', capture_output=False)

print("GEN2YMCADMZ01 imports executed")

#import GEN2YMCASQL01 instance
print("Starting GEN2YMCASQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_instance.this[0]', 'i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdb"]', 'vol-09bc0b514182594a4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-09bc0b514182594a4:i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdc"]', 'vol-0053b3a88f03f7735', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0053b3a88f03f7735:i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdd"]', 'vol-0d8bdc43247d4e5ec', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d8bdc43247d4e5ec:i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sde"]', 'vol-068dc27c89739ded2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-068dc27c89739ded2:i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_ebs_volume.this["sdf"]', 'vol-06fe8ee877e07e745', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCASQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-06fe8ee877e07e745:i-05db5e0df8e5d1cd1', var_file='terraform.tfvars', capture_output=False)
print("GEN2YMCASQL01 imports executed")

#import GEN2YMCARDS01 instance
print("Starting GEN2YMCARDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2YMCARDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCARDS01"].aws_instance.this[0]', 'i-0c802af669e9d1366', var_file='terraform.tfvars', capture_output=False)

print("GEN2YMCARDS01 imports executed")

#import GEN2YMCARDS02 instance
print("Starting GEN2YMCARDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2YMCARDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2YMCARDS02"].aws_instance.this[0]', 'i-0b872c7218e65a3ca', var_file='terraform.tfvars', capture_output=False)

print("GEN2YMCARDS02 imports executed")


#End of command execution
print("Finished executing commands!")