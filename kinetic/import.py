#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU71DB01 instance
print("Starting EU71DB01 Imports")
tf.cmd('state rm', 'module.app["EU71DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_instance.this[0]', 'i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sdb"]', 'vol-05716d2e7f5959947', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05716d2e7f5959947:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sdc"]', 'vol-0666b74a7cbef0852', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0666b74a7cbef0852:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sdd"]', 'vol-093ab84aba6abfdf8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-093ab84aba6abfdf8:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sde"]', 'vol-017b50803ab86a6e6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-017b50803ab86a6e6:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sdf"]', 'vol-0fd8e4117044d53c3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0fd8e4117044d53c3:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_ebs_volume.this["sdg"]', 'vol-0fdc787244e2c5008', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71DB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU71DB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0fdc787244e2c5008:i-0676ea83dba89f98d', var_file='terraform.tfvars', capture_output=False)
print("EU71DB01 imports executed")

#import EU71DMZ01 instance
print("Starting EU71DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU71DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU71DMZ01"].aws_instance.this[0]', 'i-0b811e3085121b672', var_file='terraform.tfvars', capture_output=False)

print("EU71DMZ01 imports executed")

#import EU71DMZ02 instance
print("Starting EU71DMZ02 Imports")
tf.cmd('state rm', 'module.app["EU71DMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU71DMZ02"].aws_instance.this[0]', 'i-0fc5a135ead9ef563', var_file='terraform.tfvars', capture_output=False)

print("EU71DMZ02 imports executed")

#import EU71RDS01 instance
print("Starting EU71RDS01 Imports")
tf.cmd('state rm', 'module.app["EU71RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU71RDS01"].aws_instance.this[0]', 'i-0e83496bf1d187d53', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU71RDS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU71RDS01"].aws_ebs_volume.this["sdb"]', 'vol-04e701014b4caec19', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU71RDS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU71RDS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-04e701014b4caec19:i-0e83496bf1d187d53', var_file='terraform.tfvars', capture_output=False)
print("EU71RDS01 imports executed")


#End of command execution
print("Finished executing commands!")