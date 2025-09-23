#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import DYEHOHBRK01 instance
print("Starting DYEHOHBRK01 Imports")
tf.cmd('state rm', 'module.app["DYEHOHBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHBRK01"].aws_instance.this[0]', 'i-057d46aafb840f638', var_file='terraform.tfvars', capture_output=False)

print("DYEHOHBRK01 imports executed")

#import DYEHOHMGT01 instance
print("Starting DYEHOHMGT01 Imports")
tf.cmd('state rm', 'module.app["DYEHOHMGT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHMGT01"].aws_instance.this[0]', 'i-01b285c34e3f8740e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["DYEHOHMGT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["DYEHOHMGT01"].aws_ebs_volume.this["sdb"]', 'vol-0dde1d1345dd05ca4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["DYEHOHMGT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["DYEHOHMGT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0dde1d1345dd05ca4:i-01b285c34e3f8740e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["DYEHOHMGT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["DYEHOHMGT01"].aws_ebs_volume.this["sdc"]', 'vol-0117d1e049defa0c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["DYEHOHMGT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["DYEHOHMGT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0117d1e049defa0c4:i-01b285c34e3f8740e', var_file='terraform.tfvars', capture_output=False)
print("DYEHOHMGT01 imports executed")

#import DYEHOHDMZ02 instance
print("Starting DYEHOHDMZ02 Imports")
tf.cmd('state rm', 'module.app["DYEHOHDMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHDMZ02"].aws_instance.this[0]', 'i-0dcc6eb06561db7d9', var_file='terraform.tfvars', capture_output=False)

print("DYEHOHDMZ02 imports executed")

#import dyehohrds03 instance
print("Starting dyehohrds03 Imports")
tf.cmd('state rm', 'module.app["dyehohrds03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["dyehohrds03"].aws_instance.this[0]', 'i-0ab211719294cc11e', var_file='terraform.tfvars', capture_output=False)

print("dyehohrds03 imports executed")

#import dyehohrds04 instance
print("Starting dyehohrds04 Imports")
tf.cmd('state rm', 'module.app["dyehohrds04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["dyehohrds04"].aws_instance.this[0]', 'i-00b9bfa949a8e0490', var_file='terraform.tfvars', capture_output=False)

print("dyehohrds04 imports executed")

#import dyehohrds06 instance
print("Starting dyehohrds06 Imports")
tf.cmd('state rm', 'module.app["dyehohrds06"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["dyehohrds06"].aws_instance.this[0]', 'i-0995ca3513f05b266', var_file='terraform.tfvars', capture_output=False)

print("dyehohrds06 imports executed")

#import DYEHOHRDS02 instance
print("Starting DYEHOHRDS02 Imports")
tf.cmd('state rm', 'module.app["DYEHOHRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHRDS02"].aws_instance.this[0]', 'i-0782f9f6ef0c888b9', var_file='terraform.tfvars', capture_output=False)

print("DYEHOHRDS02 imports executed")

#import dyehohrds05 instance
print("Starting dyehohrds05 Imports")
tf.cmd('state rm', 'module.app["dyehohrds05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["dyehohrds05"].aws_instance.this[0]', 'i-05beb990f9d3df8d3', var_file='terraform.tfvars', capture_output=False)

print("dyehohrds05 imports executed")

#import DYEHOHRDS01 instance
print("Starting DYEHOHRDS01 Imports")
tf.cmd('state rm', 'module.app["DYEHOHRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHRDS01"].aws_instance.this[0]', 'i-08436ff7d4bc94890', var_file='terraform.tfvars', capture_output=False)

print("DYEHOHRDS01 imports executed")

#import DYEHOHDMZ01 instance
print("Starting DYEHOHDMZ01 Imports")
tf.cmd('state rm', 'module.app["DYEHOHDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DYEHOHDMZ01"].aws_instance.this[0]', 'i-0d11e6b51fe92f3b8', var_file='terraform.tfvars', capture_output=False)

print("DYEHOHDMZ01 imports executed")

#import dyehohhana01 instance
print("Starting dyehohhana01 Imports")
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_instance.this[0]', 'i-04f5eaeeb4666777a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["dyehohhana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_ebs_volume.this["sdb"]', 'vol-01ced067e31845cb5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-01ced067e31845cb5:i-04f5eaeeb4666777a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_ebs_volume.this["sdc"]', 'vol-0c6ee69d2c1af669f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0c6ee69d2c1af669f:i-04f5eaeeb4666777a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_ebs_volume.this["sdd"]', 'vol-035e936f69ded5361', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-035e936f69ded5361:i-04f5eaeeb4666777a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_ebs_volume.this["sde"]', 'vol-0fe7108c83aa496a5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["dyehohhana01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["dyehohhana01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0fe7108c83aa496a5:i-04f5eaeeb4666777a', var_file='terraform.tfvars', capture_output=False)

print("dyehohhana01 imports executed")

#End of command execution
print("Finished executing commands!")