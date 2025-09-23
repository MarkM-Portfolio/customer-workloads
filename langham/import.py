#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU29HWIN01 instance
print("Starting EU29HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU29HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU29HWIN01"].aws_instance.this[0]', 'i-0de80b52c66b3fba4', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU29HWIN01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU29HWIN01"].aws_ebs_volume.this["sdb"]', 'vol-0a3e424d3f6fa1d2d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU29HWIN01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU29HWIN01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a3e424d3f6fa1d2d:i-0de80b52c66b3fba4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU29HWIN01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU29HWIN01"].aws_ebs_volume.this["sdc"]', 'vol-0ac84b7ef7bfb8361', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU29HWIN01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU29HWIN01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0ac84b7ef7bfb8361:i-0de80b52c66b3fba4', var_file='terraform.tfvars', capture_output=False)
print("EU29HWIN01 imports executed")

#import EU29RDS01 instance
print("Starting EU29RDS01 Imports")
tf.cmd('state rm', 'module.app["EU29RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU29RDS01"].aws_instance.this[0]', 'i-0c5c38be02373964e', var_file='terraform.tfvars', capture_output=False)

print("EU29RDS01 imports executed")


#End of command execution
print("Finished executing commands!")