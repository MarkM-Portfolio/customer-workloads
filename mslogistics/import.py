#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import BHX2MSLBRK01 instance
print("Starting BHX2MSLBRK01 Imports")
tf.cmd('state rm', 'module.app["BHX2MSLBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLBRK01"].aws_instance.this[0]', 'i-0f7fe329d1c818c01', var_file='terraform.tfvars', capture_output=False)

print("BHX2MSLBRK01 imports executed")

#import BHX2MSLHM01 instance
print("Starting BHX2MSLHM01 Imports")
tf.cmd('state rm', 'module.app["BHX2MSLHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLHM01"].aws_instance.this[0]', 'i-0a43d49dbbc370aba', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2MSLHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLHM01"].aws_ebs_volume.this["sdb"]', 'vol-062d5eb54a6171fbf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2MSLHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-062d5eb54a6171fbf:i-0a43d49dbbc370aba', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2MSLHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLHM01"].aws_ebs_volume.this["sdc"]', 'vol-04762d112399979e4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2MSLHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-04762d112399979e4:i-0a43d49dbbc370aba', var_file='terraform.tfvars', capture_output=False)
print("BHX2MSLHM01 imports executed")

#import BHX2MSLDMZ01 instance
print("Starting BHX2MSLDMZ01 Imports")
tf.cmd('state rm', 'module.app["BHX2MSLDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLDMZ01"].aws_instance.this[0]', 'i-09f912efa01d0da96', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2MSLDMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLDMZ01"].aws_ebs_volume.this["sdb"]', 'vol-0f1c28315cbbb2700', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2MSLDMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLDMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0f1c28315cbbb2700:i-09f912efa01d0da96', var_file='terraform.tfvars', capture_output=False)
print("BHX2MSLDMZ01 imports executed")

#import BHX2MSLRDS02 instance
print("Starting BHX2MSLRDS02 Imports")
tf.cmd('state rm', 'module.app["BHX2MSLRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLRDS02"].aws_instance.this[0]', 'i-05f058097fd96b503', var_file='terraform.tfvars', capture_output=False)

print("BHX2MSLRDS02 imports executed")

#import BHX2MSLRDS01 instance
print("Starting BHX2MSLRDS01 Imports")
tf.cmd('state rm', 'module.app["BHX2MSLRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2MSLRDS01"].aws_instance.this[0]', 'i-0c1523ac7f929f8d7', var_file='terraform.tfvars', capture_output=False)

print("BHX2MSLRDS01 imports executed")

#import bhx2mslhana01 instance
print("Starting bhx2mslhana01 Imports")
tf.cmd('state rm', 'module.app["bhx2mslhana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["bhx2mslhana01"].aws_instance.this[0]', 'i-001d82d35b77914a7', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["bhx2mslhana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2mslhana01"].aws_ebs_volume.this["sdb"]', 'vol-0eb948dc7c1dc6a1e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["bhx2mslhana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2mslhana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0eb948dc7c1dc6a1e:i-001d82d35b77914a7', var_file='terraform.tfvars', capture_output=False)
print("bhx2mslhana01 imports executed")


#End of command execution
print("Finished executing commands!")