#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU74APP01 instance
# print("Starting EU74APP01 Imports")
# tf.cmd('state rm', 'module.app["EU74APP01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["EU74APP01"].aws_instance.this[0]', 'i-07555b1ebff4afa8b', var_file='terraform.tfvars', capture_output=False)

# print("EU74APP01 imports executed")

#import EU74DB01 instance
print("Starting EU74DB01 Imports")
tf.cmd('state rm', 'module.app["EU74DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_instance.this[0]', 'i-0507365662e1ce751', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU74DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_ebs_volume.this["sdb"]', 'vol-0f26ace4000e883c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0f26ace4000e883c1:i-0507365662e1ce751', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_ebs_volume.this["sdc"]', 'vol-06178ebcc3f6a93d3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-06178ebcc3f6a93d3:i-0507365662e1ce751', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_ebs_volume.this["sdd"]', 'vol-0f50dcbec9b16fdb3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f50dcbec9b16fdb3:i-0507365662e1ce751', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_ebs_volume.this["sde"]', 'vol-05eff608bea8aec76', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU74DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-05eff608bea8aec76:i-0507365662e1ce751', var_file='terraform.tfvars', capture_output=False)
print("EU74DB01 imports executed")

#import EU74DMZ01 instance
print("Starting EU74DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU74DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU74DMZ01"].aws_instance.this[0]', 'i-09e130b997d19fe8d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU74DMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU74DMZ01"].aws_ebs_volume.this["sdb"]', 'vol-054d3a03d043f184a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU74DMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU74DMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-054d3a03d043f184a:i-09e130b997d19fe8d', var_file='terraform.tfvars', capture_output=False)
print("EU74DMZ01 imports executed")

#import EU74RDS01 instance
print("Starting EU74RDS01 Imports")
tf.cmd('state rm', 'module.app["EU74RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU74RDS01"].aws_instance.this[0]', 'i-01757046ed4ac9321', var_file='terraform.tfvars', capture_output=False)

print("EU74RDS01 imports executed")


#End of command execution
print("Finished executing commands!")