#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU05HWIN01 instance
print("Starting EU05HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU05HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN01"].aws_instance.this[0]', 'i-0aab2671d043247f9', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU05HWIN01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN01"].aws_ebs_volume.this["sdb"]', 'vol-0b6c9358eb0bb07e9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU05HWIN01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b6c9358eb0bb07e9:i-0aab2671d043247f9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU05HWIN01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN01"].aws_ebs_volume.this["sdc"]', 'vol-0c4e3052b98bebf0a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU05HWIN01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0c4e3052b98bebf0a:i-0aab2671d043247f9', var_file='terraform.tfvars', capture_output=False)
print("EU05HWIN01 imports executed")

#import EU05HWIN02 instance
print("Starting EU05HWIN02 Imports")
tf.cmd('state rm', 'module.app["EU05HWIN02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN02"].aws_instance.this[0]', 'i-0f695ee991c66966b', var_file='terraform.tfvars', capture_output=False)

print("EU05HWIN02 imports executed")

#import EU05HWIN03 instance
print("Starting EU05HWIN03 Imports")
tf.cmd('state rm', 'module.app["EU05HWIN03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05HWIN03"].aws_instance.this[0]', 'i-08a56f16144a69c8b', var_file='terraform.tfvars', capture_output=False)

print("EU05HWIN03 imports executed")

#import EU05RDS03 instance
print("Starting EU05RDS03 Imports")
tf.cmd('state rm', 'module.app["EU05RDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05RDS03"].aws_instance.this[0]', 'i-05d3bf537385d4d54', var_file='terraform.tfvars', capture_output=False)

print("EU05RDS03 imports executed")

#import EU05RDSTEST instance
print("Starting EU05RDSTEST Imports")
tf.cmd('state rm', 'module.app["EU05RDSTEST"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05RDSTEST"].aws_instance.this[0]', 'i-0980035641f6a74b9', var_file='terraform.tfvars', capture_output=False)

print("EU05RDSTEST imports executed")

#import EU05RDS02 instance
print("Starting EU05RDS02 Imports")
tf.cmd('state rm', 'module.app["EU05RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05RDS02"].aws_instance.this[0]', 'i-0c9f51b7a4dace4b7', var_file='terraform.tfvars', capture_output=False)

print("EU05RDS02 imports executed")

#import EU05RDS01 instance
print("Starting EU05RDS01 Imports")
tf.cmd('state rm', 'module.app["EU05RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU05RDS01"].aws_instance.this[0]', 'i-009e507d67c09961f', var_file='terraform.tfvars', capture_output=False)

print("EU05RDS01 imports executed")


#End of command execution
print("Finished executing commands!")