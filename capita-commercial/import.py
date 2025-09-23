#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import BHX2CAPITARDS01 instance
print("Starting BHX2CAPITARDS01 Imports")
tf.cmd('state rm', 'module.app["BHX2CAPITARDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITARDS01"].aws_instance.this[0]', 'i-0b876d0e9a79d1cde', var_file='terraform.tfvars', capture_output=False)

print("BHX2CAPITARDS01 imports executed")

#import BHX2CAPITASQL01 instance
print("Starting BHX2CAPITASQL01 Imports")
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_instance.this[0]', 'i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdb"]', 'vol-03bff1ab878ee3acf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-03bff1ab878ee3acf:i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdc"]', 'vol-0e9dffe4d9a144c4c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0e9dffe4d9a144c4c:i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdd"]', 'vol-051abc880f91220de', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-051abc880f91220de:i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sde"]', 'vol-0d4ad820562782f2c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0d4ad820562782f2c:i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_ebs_volume.this["sdf"]', 'vol-0f4fc7fb27749ce98', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITASQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0f4fc7fb27749ce98:i-0cd06ec9e33ab5713', var_file='terraform.tfvars', capture_output=False)
print("BHX2CAPITASQL01 imports executed")

#import BHX2CAPITABRK01 instance
print("Starting BHX2CAPITABRK01 Imports")
tf.cmd('state rm', 'module.app["BHX2CAPITABRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CAPITABRK01"].aws_instance.this[0]', 'i-0c42760d73ac7a4de', var_file='terraform.tfvars', capture_output=False)

print("BHX2CAPITABRK01 imports executed")


#End of command execution
print("Finished executing commands!")