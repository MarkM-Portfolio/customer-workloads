#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU54APP01 instance
print("Starting EU54APP01 Imports")
tf.cmd('state rm', 'module.app["EU54APP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU54APP01"].aws_instance.this[0]', 'i-0e7396ec5ee792363', var_file='terraform.tfvars', capture_output=False)

print("EU54APP01 imports executed")

#import EU54DB01 instance
print("Starting EU54DB01 Imports")
tf.cmd('state rm', 'module.app["EU54DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU54DB01"].aws_instance.this[0]', 'i-065f7cec1a91f5e80', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU54DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU54DB01"].aws_ebs_volume.this["sdb"]', 'vol-0a8ec1f8fe9297570', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU54DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU54DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a8ec1f8fe9297570:i-065f7cec1a91f5e80', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU54DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU54DB01"].aws_ebs_volume.this["sdc"]', 'vol-0fb4c3fdfefff3549', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU54DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU54DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0fb4c3fdfefff3549:i-065f7cec1a91f5e80', var_file='terraform.tfvars', capture_output=False)
print("EU54DB01 imports executed")

#import EU54DMZ01 instance
print("Starting EU54DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU54DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU54DMZ01"].aws_instance.this[0]', 'i-0d411add4d9a5d750', var_file='terraform.tfvars', capture_output=False)

print("EU54DMZ01 imports executed")

#import EU54RDS01 instance
print("Starting EU54RDS01 Imports")
tf.cmd('state rm', 'module.app["EU54RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU54RDS01"].aws_instance.this[0]', 'i-0da76d62b296a6273', var_file='terraform.tfvars', capture_output=False)

print("EU54RDS01 imports executed")


#End of command execution
print("Finished executing commands!")