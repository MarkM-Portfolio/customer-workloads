#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import EU40HWIN01 instance
print("Starting EU40HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU40HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU40HWIN01"].aws_instance.this[0]', 'i-009ce4c0ec04d92ff', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU40HWIN01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU40HWIN01"].aws_ebs_volume.this["sdb"]', 'vol-006bf10365504877d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU40HWIN01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU40HWIN01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-006bf10365504877d:i-009ce4c0ec04d92ff', var_file='terraform.tfvars', capture_output=False)
print("EU40HWIN01 imports executed")

#import EU40RDS01 instance
print("Starting EU40RDS01 Imports")
tf.cmd('state rm', 'module.app["EU40RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU40RDS01"].aws_instance.this[0]', 'i-00770b27c44d5ea86', var_file='terraform.tfvars', capture_output=False)

print("EU40RDS01 imports executed")

#import EU40DMZ01 instance
print("Starting EU40DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU40DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU40DMZ01"].aws_instance.this[0]', 'i-0dea125f3d7a3526a', var_file='terraform.tfvars', capture_output=False)

print("EU40DMZ01 imports executed")


#End of command execution
print("Finished executing commands!")
