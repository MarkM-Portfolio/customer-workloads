#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import BHX2NUMHM01 instance
print("Starting BHX2NUMHM01 Imports")
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_instance.this[0]', 'i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdb"]', 'vol-0c77b85bda38db63b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c77b85bda38db63b:i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdc"]', 'vol-0a034987d31b21be8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0a034987d31b21be8:i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdd"]', 'vol-0b350349625105cf8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0b350349625105cf8:i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_ebs_volume.this["sde"]', 'vol-092104ace7cc7d751', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-092104ace7cc7d751:i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_ebs_volume.this["sdf"]', 'vol-0de7c229d201429dc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMHM01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0de7c229d201429dc:i-0e7af73dddbab7bfb', var_file='terraform.tfvars', capture_output=False)
print("BHX2NUMHM01 imports executed")

#import BHX2NUMBRK01 instance
print("Starting BHX2NUMBRK01 Imports")
tf.cmd('state rm', 'module.app["BHX2NUMBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMBRK01"].aws_instance.this[0]', 'i-066409825ae4c2c6a', var_file='terraform.tfvars', capture_output=False)

print("BHX2NUMBRK01 imports executed")

#import BHX2NUMINT01 instance
print("Starting BHX2NUMINT01 Imports")
tf.cmd('state rm', 'module.app["BHX2NUMINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMINT01"].aws_instance.this[0]', 'i-07cf3945a7d822cda', var_file='terraform.tfvars', capture_output=False)

print("BHX2NUMINT01 imports executed")

#import BHX2NUMRDS01 instance
print("Starting BHX2NUMRDS01 Imports")
tf.cmd('state rm', 'module.app["BHX2NUMRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMRDS01"].aws_instance.this[0]', 'i-0a854cf3119ee56f3', var_file='terraform.tfvars', capture_output=False)

print("BHX2NUMRDS01 imports executed")

#import BHX2NUMV101 instance
print("Starting BHX2NUMV101 Imports")
tf.cmd('state rm', 'module.app["BHX2NUMV101"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2NUMV101"].aws_instance.this[0]', 'i-009075d6e265b0246', var_file='terraform.tfvars', capture_output=False)

print("BHX2NUMV101 imports executed")


#End of command execution
print("Finished executing commands!")