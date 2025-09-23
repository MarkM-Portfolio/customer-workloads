#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2COLDMZ01 instance
print("Starting GEN2COLDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2COLDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLDMZ01"].aws_instance.this[0]', 'i-0850a3499d3d3aefa', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2COLDMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLDMZ01"].aws_ebs_volume.this["sdb"]', 'vol-04b12dcf3e0e7f9b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2COLDMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLDMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-04b12dcf3e0e7f9b6:i-0850a3499d3d3aefa', var_file='terraform.tfvars', capture_output=False)
print("GEN2COLDMZ01 imports executed")

#import GEN2COLDMZ02 instance
print("Starting GEN2COLDMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2COLDMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLDMZ02"].aws_instance.this[0]', 'i-0c1d49becb2bdea1d', var_file='terraform.tfvars', capture_output=False)

print("GEN2COLDMZ02 imports executed")

#import GEN2COLHM01 instance
print("Starting GEN2COLHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2COLHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLHM01"].aws_instance.this[0]', 'i-03d93336bbeaa7dbd', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2COLHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLHM01"].aws_ebs_volume.this["sdb"]', 'vol-0c4dd3016aa216bbf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2COLHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c4dd3016aa216bbf:i-03d93336bbeaa7dbd', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2COLHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLHM01"].aws_ebs_volume.this["sdc"]', 'vol-037f4aa5ba99135fb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2COLHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2COLHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-037f4aa5ba99135fb:i-03d93336bbeaa7dbd', var_file='terraform.tfvars', capture_output=False)
print("GEN2COLHM01 imports executed")

#import GEN2COLDMZ03 instance
print("Starting GEN2COLDMZ03 Imports")
tf.cmd('state rm', 'module.app["GEN2COLDMZ03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLDMZ03"].aws_instance.this[0]', 'i-00833218c5d9f3d15', var_file='terraform.tfvars', capture_output=False)

print("GEN2COLDMZ03 imports executed")

#import GEN2COLRDS01 instance
print("Starting GEN2COLRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2COLRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLRDS01"].aws_instance.this[0]', 'i-0386d067671b297e7', var_file='terraform.tfvars', capture_output=False)

print("GEN2COLRDS01 imports executed")

#import GEN2COLBRK01 instance
print("Starting GEN2COLBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2COLBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2COLBRK01"].aws_instance.this[0]', 'i-00cc1c0dfb2747dc9', var_file='terraform.tfvars', capture_output=False)

print("GEN2COLBRK01 imports executed")

#import gen2colhana01 instance
print("Starting gen2colhana01 Imports")
tf.cmd('state rm', 'module.app["gen2colhana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2colhana01"].aws_instance.this[0]', 'i-08c28ff29e39ecb38', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2colhana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2colhana01"].aws_ebs_volume.this["sdb"]', 'vol-0bdb3f3740b27fff9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2colhana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2colhana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0bdb3f3740b27fff9:i-08c28ff29e39ecb38', var_file='terraform.tfvars', capture_output=False)
print("gen2colhana01 imports executed")


#End of command execution
print("Finished executing commands!")
