#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU45DB01 instance
print("Starting EU45DB01 Imports")
tf.cmd('state rm', 'module.app["EU45DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_instance.this[0]', 'i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU45DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_ebs_volume.this["sdb"]', 'vol-015cb99aa99d4548d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-015cb99aa99d4548d:i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_ebs_volume.this["sdc"]', 'vol-0525ed47044d4bdfd', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0525ed47044d4bdfd:i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_ebs_volume.this["sdd"]', 'vol-0421cc7591916b930', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0421cc7591916b930:i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_ebs_volume.this["sde"]', 'vol-02c9938ad4647b54a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-02c9938ad4647b54a:i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_ebs_volume.this["sdf"]', 'vol-076281c036eb17f4d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU45DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU45DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-076281c036eb17f4d:i-0fa0659fd056fab6c', var_file='terraform.tfvars', capture_output=False)
print("EU45DB01 imports executed")

#import EU45INT01 instance
print("Starting EU45INT01 Imports")
tf.cmd('state rm', 'module.app["EU45INT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU45INT01"].aws_instance.this[0]', 'i-02387e791e9c77dcb', var_file='terraform.tfvars', capture_output=False)

print("EU45INT01 imports executed")

#import EU45RDS01 instance
print("Starting EU45RDS01 Imports")
tf.cmd('state rm', 'module.app["EU45RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU45RDS01"].aws_instance.this[0]', 'i-04fdcea6fe5159144', var_file='terraform.tfvars', capture_output=False)

print("EU45RDS01 imports executed")


#End of command execution
print("Finished executing commands!")