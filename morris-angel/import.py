#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import gen2achana01 instance
print("Starting gen2achana01 Imports")
tf.cmd('state rm', 'module.app["gen2achana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2achana01"].aws_instance.this[0]', 'i-07400fa24be6f8790', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2achana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2achana01"].aws_ebs_volume.this["sdb"]', 'vol-040d515f67fa92431', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2achana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2achana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-040d515f67fa92431:i-07400fa24be6f8790', var_file='terraform.tfvars', capture_output=False)
print("gen2achana01 imports executed")

# #import GEN2ACHM01 instance
print("Starting GEN2ACHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_instance.this[0]', 'i-0dabb0392b36e08c5', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_ebs_volume.this["sdb"]', 'vol-0849167d4446e8f04', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0849167d4446e8f04:i-0dabb0392b36e08c5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_ebs_volume.this["sdc"]', 'vol-058e913e132e5828f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-058e913e132e5828f:i-0dabb0392b36e08c5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_ebs_volume.this["sdd"]', 'vol-002a56a7387ebbb77', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ACHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2ACHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-002a56a7387ebbb77:i-0dabb0392b36e08c5', var_file='terraform.tfvars', capture_output=False)
print("GEN2ACHM01 imports executed")

# #import GEN2ACRDS01 instance
print("Starting GEN2ACRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2ACRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ACRDS01"].aws_instance.this[0]', 'i-0b472acf8725459ad', var_file='terraform.tfvars', capture_output=False)

print("GEN2ACRDS01 imports executed")


#End of command execution
print("Finished executing commands!")