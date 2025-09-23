#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU75DB01 instance
print("Starting EU75DB01 Imports")
tf.cmd('state rm', 'module.app["EU75DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_instance.this[0]', 'i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sdb"]', 'vol-00951adfaba11c70f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-00951adfaba11c70f:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sdc"]', 'vol-025e207f397fa8403', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-025e207f397fa8403:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sdd"]', 'vol-0c9418a841a02c68c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0c9418a841a02c68c:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sde"]', 'vol-0c1c6e8831e4364dc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0c1c6e8831e4364dc:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sdf"]', 'vol-0d93e072955ae5b59', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0d93e072955ae5b59:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_ebs_volume.this["sdg"]', 'vol-0084e53410920560d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75DB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU75DB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0084e53410920560d:i-09cf0cdfd3665e7d1', var_file='terraform.tfvars', capture_output=False)
print("EU75DB01 imports executed")

#import EU75DMZ01 instance
print("Starting EU75DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU75DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU75DMZ01"].aws_instance.this[0]', 'i-0bc759e071a1b4eb1', var_file='terraform.tfvars', capture_output=False)

print("EU75DMZ01 imports executed")

#import EU75RDS01 instance
print("Starting EU75RDS01 Imports")
tf.cmd('state rm', 'module.app["EU75RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU75RDS01"].aws_instance.this[0]', 'i-0970dea2794c40b5e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU75RDS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU75RDS01"].aws_ebs_volume.this["sdb"]', 'vol-0d6220aa8565286be', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU75RDS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU75RDS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0d6220aa8565286be:i-0970dea2794c40b5e', var_file='terraform.tfvars', capture_output=False)
print("EU75RDS01 imports executed")

#import EU75RDS02 instance
print("Starting EU75RDS02 Imports")
tf.cmd('state rm', 'module.app["EU75RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU75RDS02"].aws_instance.this[0]', 'i-07ee30aef5c6382ee', var_file='terraform.tfvars', capture_output=False)

print("EU75RDS02 imports executed")


#End of command execution
print("Finished executing commands!")