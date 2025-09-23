#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2SFDMZ02 instance
print("Starting GEN2SFDMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2SFDMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SFDMZ02"].aws_instance.this[0]', 'i-06329b03650f064ec', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SFDMZ02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFDMZ02"].aws_ebs_volume.this["sdb"]', 'vol-0519416b2d1be5e6e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFDMZ02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFDMZ02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0519416b2d1be5e6e:i-06329b03650f064ec', var_file='terraform.tfvars', capture_output=False)
print("GEN2SFDMZ02 imports executed")

#import GEN2SFDMZ01 instance
print("Starting GEN2SFDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SFDMZ01"].aws_instance.this[0]', 'i-05d21c870cb11cbf7', var_file='terraform.tfvars', capture_output=False)

print("GEN2SFDMZ01 imports executed")

#import GEN2SFSQL01 instance
print("Starting GEN2SFSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_instance.this[0]', 'i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdb"]', 'vol-077e9cbaa3ed883ad', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-077e9cbaa3ed883ad:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0ce4533ff978f5d7d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0ce4533ff978f5d7d:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0a9286ac2707e1805', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0a9286ac2707e1805:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sde"]', 'vol-0a169be510022e81d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0a169be510022e81d:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-095d294e739778322:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0e410f1a81cae737c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0e410f1a81cae737c:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdh"]', 'vol-0a22f4e3ca5983c25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0a22f4e3ca5983c25:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0325e4441eab63d88', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0325e4441eab63d88:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_ebs_volume.this["sdj"]', 'vol-06dfc102cfd8e2541', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-06dfc102cfd8e2541:i-0982fb040359e19c4', var_file='terraform.tfvars', capture_output=False)
print("GEN2SFSQL01 imports executed")

#import GEN2SFRDS01 instance
print("Starting GEN2SFRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SFRDS01"].aws_instance.this[0]', 'i-05919eb6997bda3f6', var_file='terraform.tfvars', capture_output=False)

print("GEN2SFRDS01 imports executed")


#End of command execution
print("Finished executing commands!")