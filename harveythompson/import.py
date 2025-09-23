#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2HTDMZ01 instance
print("Starting GEN2HTDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2HTDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2HTDMZ01"].aws_instance.this[0]', 'i-04561a57139bb0674', var_file='terraform.tfvars', capture_output=False)

print("GEN2HTDMZ01 imports executed")

#import GEN2HTSQL01 instance
print("Starting GEN2HTSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_instance.this[0]', 'i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdb"]', 'vol-00d1c9461e6adcc45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-00d1c9461e6adcc45:i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0263a6c5cce50e5bb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0263a6c5cce50e5bb:i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0d25eb3ee8474a498', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d25eb3ee8474a498:i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_ebs_volume.this["sde"]', 'vol-0836f698ca7469d9b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0836f698ca7469d9b:i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_ebs_volume.this["sdf"]', 'vol-002c4e65b3c47d623', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2HTSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-002c4e65b3c47d623:i-0f7599770ba99bc25', var_file='terraform.tfvars', capture_output=False)
print("GEN2HTSQL01 imports executed")

#import GEN2HTRDS01 instance
print("Starting GEN2HTRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2HTRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2HTRDS01"].aws_instance.this[0]', 'i-0e06822df15ad48a0', var_file='terraform.tfvars', capture_output=False)

print("GEN2HTRDS01 imports executed")


#End of command execution
print("Finished executing commands!")