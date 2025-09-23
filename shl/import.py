#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import GEN2SHLAPP01 instance
print("Starting GEN2SHLAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLAPP01"].aws_instance.this[0]', 'i-03561a27d71a44d6d', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLAPP01 imports executed")

#import GEN2SHLSMTP01 instance
print("Starting GEN2SHLSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSMTP01"].aws_instance.this[0]', 'i-090b7b9e629af31ce', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLSMTP01 imports executed")

#import GEN2SHLADFS01 instance
print("Starting GEN2SHLADFS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLADFS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLADFS01"].aws_instance.this[0]', 'i-0505f7ed5e2cb2547', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLADFS01 imports executed")

#import GEN2SHLAPP02 instance
print("Starting GEN2SHLAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLAPP02"].aws_instance.this[0]', 'i-0f201f506c832ab26', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLAPP02 imports executed")

#import GEN2SHLINT01 instance
print("Starting GEN2SHLINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLINT01"].aws_instance.this[0]', 'i-021f88364fd747f8a', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLINT01 imports executed")

#import GEN2SHLINT02 instance
print("Starting GEN2SHLINT02 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLINT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLINT02"].aws_instance.this[0]', 'i-028138553d81a238f', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLINT02 imports executed")

#import GEN2SHLINT03 instance
print("Starting GEN2SHLINT03 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLINT03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLINT03"].aws_instance.this[0]', 'i-0b9cef69ea413f793', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLINT03 imports executed")

#import GEN2SHLIOS01 instance
print("Starting GEN2SHLIOS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLIOS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLIOS01"].aws_instance.this[0]', 'i-04d4a5dfe36c10396', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLIOS01 imports executed")

#import GEN2SHLRDS02 instance
print("Starting GEN2SHLRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLRDS02"].aws_instance.this[0]', 'i-0cc4661b6626756fe', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLRDS02 imports executed")

#import GEN2SHLRDS03 instance
print("Starting GEN2SHLRDS03 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLRDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLRDS03"].aws_instance.this[0]', 'i-0b68ec92a2d6bf954', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLRDS03 imports executed")

#import GEN2SHLRDS01 instance
print("Starting GEN2SHLRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLRDS01"].aws_instance.this[0]', 'i-008098e1dde1d361f', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLRDS01 imports executed")

#import GEN2SHLSRS01 instance
print("Starting GEN2SHLSRS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLSRS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSRS01"].aws_instance.this[0]', 'i-07c5e6c2b4f0e3493', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLSRS01 imports executed")

#import GEN2SHLSQL01 instance
print("Starting GEN2SHLSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_instance.this[0]', 'i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0e8c02da34af2d678', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0e8c02da34af2d678:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdc"]', 'vol-07af0e993dfcd1494', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-07af0e993dfcd1494:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0fc8ef7127d28b7d0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0fc8ef7127d28b7d0:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sde"]', 'vol-00b6b5e6d326b65b0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-00b6b5e6d326b65b0:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0072fe96189c93c9c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0072fe96189c93c9c:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdg"]', 'vol-094e5d87a061aa424', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-094e5d87a061aa424:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdh"]', 'vol-007d68fccde70cd7e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-007d68fccde70cd7e:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_ebs_volume.this["sdi"]', 'vol-05a78d9890b76ddb9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-05a78d9890b76ddb9:i-087a0c45509bc7c25', var_file='terraform.tfvars', capture_output=False)
print("GEN2SHLSQL01 imports executed")

#import GEN2SHLITRMDB01 instance
print("Starting GEN2SHLITRMDB01 Imports")
tf.cmd('state rm', 'module.app["GEN2SHLITRMDB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SHLITRMDB01"].aws_instance.this[0]', 'i-09ae3840a577385f4', var_file='terraform.tfvars', capture_output=False)

print("GEN2SHLITRMDB01 imports executed")


#End of command execution
print("Finished executing commands!")