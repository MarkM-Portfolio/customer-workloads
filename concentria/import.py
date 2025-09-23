#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU35DB01 instance
print("Starting EU35DB01 Imports")
tf.cmd('state rm', 'module.app["EU35DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU35DB01"].aws_instance.this[0]', 'i-0bddc7219aee90ffb', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU35DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU35DB01"].aws_ebs_volume.this["sdb"]', 'vol-09f3c96d71db86b9b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU35DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU35DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-09f3c96d71db86b9b:i-0bddc7219aee90ffb', var_file='terraform.tfvars', capture_output=False)
print("EU35DB01 imports executed")

#import EU35RDS01 instance
print("Starting EU35RDS01 Imports")
tf.cmd('state rm', 'module.app["EU35RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU35RDS01"].aws_instance.this[0]', 'i-0dfe2ae96eff97d14', var_file='terraform.tfvars', capture_output=False)

print("EU35RDS01 imports executed")


#End of command execution
print("Finished executing commands!")