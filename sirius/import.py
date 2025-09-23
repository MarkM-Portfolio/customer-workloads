#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2SIRRDS01 instance
print("Starting GEN2SIRRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SIRRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRRDS01"].aws_instance.this[0]', 'i-0341ffe5f26f555ef', var_file='terraform.tfvars', capture_output=False)

print("GEN2SIRRDS01 imports executed")

#import GEN2SIRSQL01 instance
print("Starting GEN2SIRSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_instance.this[0]', 'i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdb"]', 'vol-03bd03c2b4a3db5af', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-03bd03c2b4a3db5af:i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdc"]', 'vol-026cf896610aa3658', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-026cf896610aa3658:i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0909220f28825e790', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0909220f28825e790:i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sde"]', 'vol-01230ced8a9855dc0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-01230ced8a9855dc0:i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_ebs_volume.this["sdf"]', 'vol-098096ece6ea41cc7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SIRSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-098096ece6ea41cc7:i-0dad531b9d63eb090', var_file='terraform.tfvars', capture_output=False)
print("GEN2SIRSQL01 imports executed")


#End of command execution
print("Finished executing commands!")