#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import BHX2AEROBRK01 instance
print("Starting BHX2AEROBRK01 Imports")
tf.cmd('state rm', 'module.app["BHX2AEROBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2AEROBRK01"].aws_instance.this[0]', 'i-0a8aaa6313cc244d7', var_file='terraform.tfvars', capture_output=False)

print("BHX2AEROBRK01 imports executed")

#import BHX2AEROHM01 instance
print("Starting BHX2AEROHM01 Imports")
tf.cmd('state rm', 'module.app["BHX2AEROHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2AEROHM01"].aws_instance.this[0]', 'i-015634e02d11e33b7', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2AEROHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2AEROHM01"].aws_ebs_volume.this["sdb"]', 'vol-05063939b0995e6ca', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2AEROHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2AEROHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05063939b0995e6ca:i-015634e02d11e33b7', var_file='terraform.tfvars', capture_output=False)
print("BHX2AEROHM01 imports executed")

#import BHX2AERORDS02 instance
print("Starting BHX2AERORDS02 Imports")
tf.cmd('state rm', 'module.app["BHX2AERORDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2AERORDS02"].aws_instance.this[0]', 'i-0ab9598fd32166373', var_file='terraform.tfvars', capture_output=False)

print("BHX2AERORDS02 imports executed")

#import BHX2AERORDS01 instance
print("Starting BHX2AERORDS01 Imports")
tf.cmd('state rm', 'module.app["BHX2AERORDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2AERORDS01"].aws_instance.this[0]', 'i-08642de707cdb2314', var_file='terraform.tfvars', capture_output=False)

print("BHX2AERORDS01 imports executed")

#import bhx2aerohana01 instance
print("Starting bhx2aerohana01 Imports")
tf.cmd('state rm', 'module.app["bhx2aerohana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["bhx2aerohana01"].aws_instance.this[0]', 'i-0cbf2666ba8e13eb6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["bhx2aerohana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2aerohana01"].aws_ebs_volume.this["sdb"]', 'vol-0c920c5a978828641', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["bhx2aerohana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2aerohana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c920c5a978828641:i-0cbf2666ba8e13eb6', var_file='terraform.tfvars', capture_output=False)
print("bhx2aerohana01 imports executed")


#End of command execution
print("Finished executing commands!")