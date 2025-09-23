#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU51DB01 instance
print("Starting EU51DB01 Imports")
tf.cmd('state rm', 'module.app["EU51DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_instance.this[0]', 'i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU51DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_ebs_volume.this["sdb"]', 'vol-0569852abb44fc2f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0569852abb44fc2f6:i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_ebs_volume.this["sdc"]', 'vol-05a8ec2efae11e628', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-05a8ec2efae11e628:i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_ebs_volume.this["sdd"]', 'vol-0f11fafa2ecc8065d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f11fafa2ecc8065d:i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_ebs_volume.this["sde"]', 'vol-0e34452e355296c6d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0e34452e355296c6d:i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_ebs_volume.this["sdf"]', 'vol-0554fa64584ca58b7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU51DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU51DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0554fa64584ca58b7:i-03193f0a73b345ba6', var_file='terraform.tfvars', capture_output=False)
print("EU51DB01 imports executed")

#import EU51RDS01 instance
print("Starting EU51RDS01 Imports")
tf.cmd('state rm', 'module.app["EU51RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU51RDS01"].aws_instance.this[0]', 'i-0b39b33137ab58557', var_file='terraform.tfvars', capture_output=False)

print("EU51RDS01 imports executed")


#End of command execution
print("Finished executing commands!")