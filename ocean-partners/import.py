#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2OPRDS01 instance
print("Starting GEN2OPRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2OPRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OPRDS01"].aws_instance.this[0]', 'i-095f3ebbcf3dce9ff', var_file='terraform.tfvars', capture_output=False)

print("GEN2OPRDS01 imports executed")

#import GEN2OPRDS02 instance
print("Starting GEN2OPRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2OPRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OPRDS02"].aws_instance.this[0]', 'i-008ebc85ee333c102', var_file='terraform.tfvars', capture_output=False)

print("GEN2OPRDS02 imports executed")

#import GEN2OPSQL01 instance
print("Starting GEN2OPSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_instance.this[0]', 'i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0b21894fa75973648', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b21894fa75973648:i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdc"]', 'vol-092191885c17c2318', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-092191885c17c2318:i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0cd134ab9c6f38a4f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0cd134ab9c6f38a4f:i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_ebs_volume.this["sde"]', 'vol-0f9754dc83f94f164', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0f9754dc83f94f164:i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0e1e0a95ae6b5f51d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2OPSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0e1e0a95ae6b5f51d:i-0d108b160bf209f3b', var_file='terraform.tfvars', capture_output=False)
print("GEN2OPSQL01 imports executed")


#End of command execution
print("Finished executing commands!")