#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import US17DMZ01 instance
print("Starting US17DMZ01 Imports")
tf.cmd('state rm', 'module.app["US17DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US17DMZ01"].aws_instance.this[0]', 'i-00564fed80446a52a', var_file='terraform.tfvars', capture_output=False)

print("US17DMZ01 imports executed")

#import US17RDS01 instance
print("Starting US17RDS01 Imports")
tf.cmd('state rm', 'module.app["US17RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US17RDS01"].aws_instance.this[0]', 'i-095cfe83afd388fb8', var_file='terraform.tfvars', capture_output=False)

print("US17RDS01 imports executed")

#import US17RDS02 instance
print("Starting US17RDS02 Imports")
tf.cmd('state rm', 'module.app["US17RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US17RDS02"].aws_instance.this[0]', 'i-07814443c2b7eaf72', var_file='terraform.tfvars', capture_output=False)

print("US17RDS02 imports executed")

#import US17DB01 instance
print("Starting US17DB01 Imports")
tf.cmd('state rm', 'module.app["US17DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US17DB01"].aws_instance.this[0]', 'i-03bfc1f6c9f8661d1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["US17DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["US17DB01"].aws_ebs_volume.this["sdb"]', 'vol-010422853a99b09c6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["US17DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["US17DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-010422853a99b09c6:i-03bfc1f6c9f8661d1', var_file='terraform.tfvars', capture_output=False)
print("US17DB01 imports executed")


#End of command execution
print("Finished executing commands!")