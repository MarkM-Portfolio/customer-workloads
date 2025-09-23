#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2DACSAPP01 instance
print("Starting GEN2DACSAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSAPP01"].aws_instance.this[0]', 'i-094f663e68b15d2de', var_file='terraform.tfvars', capture_output=False)

print("GEN2DACSAPP01 imports executed")

#import GEN2DACSAPP02 instance
print("Starting GEN2DACSAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSAPP02"].aws_instance.this[0]', 'i-060d0bee3a87a85ec', var_file='terraform.tfvars', capture_output=False)

print("GEN2DACSAPP02 imports executed")

#import GEN2DACSDMZ01 instance
print("Starting GEN2DACSDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSDMZ01"].aws_instance.this[0]', 'i-009959d723c091a4a', var_file='terraform.tfvars', capture_output=False)

print("GEN2DACSDMZ01 imports executed")

#import GEN2DACSHM01 instance
print("Starting GEN2DACSHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_instance.this[0]', 'i-03d78d5128e8308ff', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdb"]', 'vol-0b62173e123ffa85a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b62173e123ffa85a:i-03d78d5128e8308ff', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdc"]', 'vol-07bd32a15d6dacd32', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-07bd32a15d6dacd32:i-03d78d5128e8308ff', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_ebs_volume.this["sdd"]', 'vol-0f3bdf87692e0e337', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f3bdf87692e0e337:i-03d78d5128e8308ff', var_file='terraform.tfvars', capture_output=False)
print("GEN2DACSHM01 imports executed")

#import GEN2DACSRDS02 instance
print("Starting GEN2DACSRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSRDS02"].aws_instance.this[0]', 'i-093aa4fe57b763e9f', var_file='terraform.tfvars', capture_output=False)

print("GEN2DACSRDS02 imports executed")

#import GEN2DACSRDS01 instance
print("Starting GEN2DACSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2DACSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DACSRDS01"].aws_instance.this[0]', 'i-0e5ab520679ce064f', var_file='terraform.tfvars', capture_output=False)

print("GEN2DACSRDS01 imports executed")


#End of command execution
print("Finished executing commands!")