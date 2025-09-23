#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

# #import GEN2SWRADFS02 instance
# print("Starting GEN2SWRADFS02 Imports")
# tf.cmd('state rm', 'module.app["GEN2SWRADFS02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRADFS02"].aws_instance.this[0]', 'i-03e1a2889e749d0a4', var_file='terraform.tfvars', capture_output=False)

# print("GEN2SWRADFS02 imports executed")

# #import GEN2SWREAM04 instance
# print("Starting GEN2SWREAM04 Imports")
# tf.cmd('state rm', 'module.app["GEN2SWREAM04"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM04"].aws_instance.this[0]', 'i-06501ab30d21a5b00', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2SWREAM04"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM04"].aws_ebs_volume.this["sdb"]', 'vol-0d41adabe3bfc62ef', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWREAM04"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM04"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0d41adabe3bfc62ef:i-06501ab30d21a5b00', var_file='terraform.tfvars', capture_output=False)
# print("GEN2SWREAM04 imports executed")

# #import GEN2SWRSQL02 instance
# print("Starting GEN2SWRSQL02 Imports")
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_instance.this[0]', 'i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdb"]', 'vol-0c4e06e1c7a8e9c12', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c4e06e1c7a8e9c12:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdc"]', 'vol-08101d2d5f1ccc782', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-08101d2d5f1ccc782:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdd"]', 'vol-0e771e0bf6b0fda0d', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0e771e0bf6b0fda0d:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sde"]', 'vol-07313ad016c3f7b1b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-07313ad016c3f7b1b:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdf"]', 'vol-0964fb519adc8196e', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0964fb519adc8196e:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdg"]', 'vol-01f93b803499cf486', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-01f93b803499cf486:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdh"]', 'vol-0632b4f6099b95a06', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0632b4f6099b95a06:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_ebs_volume.this["sdi"]', 'vol-01a680d46aceb8c94', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdi"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRSQL02"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-01a680d46aceb8c94:i-09668eb2b223a4086', var_file='terraform.tfvars', capture_output=False)
# print("GEN2SWRSQL02 imports executed")

# #import GEN2SWRINFO02 instance
# print("Starting GEN2SWRINFO02 Imports")
# tf.cmd('state rm', 'module.app["GEN2SWRINFO02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRINFO02"].aws_instance.this[0]', 'i-0ee1f5ae4b1f83b7a', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2SWRINFO02"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRINFO02"].aws_ebs_volume.this["sdb"]', 'vol-0627f42960e956a11', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWRINFO02"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWRINFO02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0627f42960e956a11:i-0ee1f5ae4b1f83b7a', var_file='terraform.tfvars', capture_output=False)
# print("GEN2SWRINFO02 imports executed")

# #import GEN2SWREAM03 instance
# print("Starting GEN2SWREAM03 Imports")
# tf.cmd('state rm', 'module.app["GEN2SWREAM03"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM03"].aws_instance.this[0]', 'i-0920cdb313d6196c9', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2SWREAM03"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM03"].aws_ebs_volume.this["sdb"]', 'vol-0a580724ea699b3e4', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2SWREAM03"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2SWREAM03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a580724ea699b3e4:i-0920cdb313d6196c9', var_file='terraform.tfvars', capture_output=False)
# print("GEN2SWREAM03 imports executed")


# #End of command execution
# print("Finished executing commands!")

# # Prod Environment servers

#import GEN2SWRINFO01 instance
print("Starting GEN2SWRINFO01 Imports")
tf.cmd('state rm', 'module.app["GEN2SWRINFO01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRINFO01"].aws_instance.this[0]', 'i-00c2cd58b14175131', var_file='terraform.tfvars', capture_output=False)

print("GEN2SWRINFO01 imports executed")

#import GEN2SWRADFS01 instance
print("Starting GEN2SWRADFS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SWRADFS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRADFS01"].aws_instance.this[0]', 'i-0c681d2dc7b8b242e', var_file='terraform.tfvars', capture_output=False)

print("GEN2SWRADFS01 imports executed")

#import GEN2SWREAM02 instance
print("Starting GEN2SWREAM02 Imports")
tf.cmd('state rm', 'module.app["GEN2SWREAM02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM02"].aws_instance.this[0]', 'i-02c98ef97e6217b89', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SWREAM02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM02"].aws_ebs_volume.this["sdb"]', 'vol-05e100bbbe826a146', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWREAM02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05e100bbbe826a146:i-02c98ef97e6217b89', var_file='terraform.tfvars', capture_output=False)
print("GEN2SWREAM02 imports executed")

#import GEN2SWREAM01 instance
print("Starting GEN2SWREAM01 Imports")
tf.cmd('state rm', 'module.app["GEN2SWREAM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM01"].aws_instance.this[0]', 'i-045cf0c5ead0c1ef1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SWREAM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM01"].aws_ebs_volume.this["sdb"]', 'vol-0cd9201957f28b29a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWREAM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWREAM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0cd9201957f28b29a:i-045cf0c5ead0c1ef1', var_file='terraform.tfvars', capture_output=False)
print("GEN2SWREAM01 imports executed")

#import GEN2SWRSQL01 instance
print("Starting GEN2SWRSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_instance.this[0]', 'i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdb"]', 'vol-022242640da30f17c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-022242640da30f17c:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0f80da63a1f1e5b8d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0f80da63a1f1e5b8d:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0306e3f0f9b66f006', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0306e3f0f9b66f006:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sde"]', 'vol-000267fb675cbf105', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-000267fb675cbf105:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdf"]', 'vol-09b38254bc148efab', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-09b38254bc148efab:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0c204a0a99ca67a76', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0c204a0a99ca67a76:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdh"]', 'vol-0e8c2fd3ef5ee3d1e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0e8c2fd3ef5ee3d1e:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdi"]', 'vol-085202f1a3906ebde', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-085202f1a3906ebde:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_ebs_volume.this["sdj"]', 'vol-07e26a4b7ad3ab58d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-07e26a4b7ad3ab58d:i-08982bdaef8844f07', var_file='terraform.tfvars', capture_output=False)
print("GEN2SWRSQL01 imports executed")

#import GEN2SWRRDS01 instance
print("Starting GEN2SWRRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SWRRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SWRRDS01"].aws_instance.this[0]', 'i-017cc46b7e397bcdb', var_file='terraform.tfvars', capture_output=False)

print("GEN2SWRRDS01 imports executed")




#End of command execution
print("Finished executing commands!")