#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import EU42DB01 instance
print("Starting EU42DB01 Imports")
tf.cmd('state rm', 'module.app["EU42DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_instance.this[0]', 'i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sdb"]', 'vol-032bcf8cdc742e23f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-032bcf8cdc742e23f:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sdc"]', 'vol-00853bea0d6806b0f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-00853bea0d6806b0f:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sdd"]', 'vol-0295c1510cd75d04d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0295c1510cd75d04d:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sde"]', 'vol-064fae8698d1f3514', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-064fae8698d1f3514:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sdf"]', 'vol-0f29682ab31384522', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0f29682ab31384522:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_ebs_volume.this["sdg"]', 'vol-01a102d036a6f9151', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU42DB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU42DB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-01a102d036a6f9151:i-0b606501429572554', var_file='terraform.tfvars', capture_output=False)
print("EU42DB01 imports executed")

#import EU42RDS01 instance
print("Starting EU42RDS01 Imports")
tf.cmd('state rm', 'module.app["EU42RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU42RDS01"].aws_instance.this[0]', 'i-016706dfbb2bce5bd', var_file='terraform.tfvars', capture_output=False)

print("EU42RDS01 imports executed")

#import EU42RDS02 instance
print("Starting EU42RDS02 Imports")
tf.cmd('state rm', 'module.app["EU42RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU42RDS02"].aws_instance.this[0]', 'i-03ff68fdc498c99ec', var_file='terraform.tfvars', capture_output=False)

print("EU42RDS02 imports executed")


#End of command execution
print("Finished executing commands!")