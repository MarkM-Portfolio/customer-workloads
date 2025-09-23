#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import AUS03DB01 instance
print("Starting AUS03DB01 Imports")
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_instance.this[0]', 'i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["AUS03DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_ebs_volume.this["sdb"]', 'vol-0fada843adaf5fb71', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0fada843adaf5fb71:i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_ebs_volume.this["sdc"]', 'vol-0339a5791110306b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0339a5791110306b6:i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_ebs_volume.this["sdd"]', 'vol-067cbfdfe876e0c76', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-067cbfdfe876e0c76:i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_ebs_volume.this["sde"]', 'vol-00b9860bbc3ef1717', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-00b9860bbc3ef1717:i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_ebs_volume.this["sdf"]', 'vol-0a65c366ab34e9437', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["AUS03DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0a65c366ab34e9437:i-0b56b92b9d6fdcb0a', var_file='terraform.tfvars', capture_output=False)
print("AUS03DB01 imports executed")

#import AUS03DMZ01 instance
print("Starting AUS03DMZ01 Imports")
tf.cmd('state rm', 'module.app["AUS03DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["AUS03DMZ01"].aws_instance.this[0]', 'i-063d2b98a8e160191', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["AUS03DMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["AUS03DMZ01"].aws_ebs_volume.this["sdb"]', 'vol-0b9a5285fbb1cc75f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["AUS03DMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["AUS03DMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b9a5285fbb1cc75f:i-063d2b98a8e160191', var_file='terraform.tfvars', capture_output=False)
print("AUS03DMZ01 imports executed")

#import AUS03RDS01 instance
print("Starting AUS03RDS01 Imports")
tf.cmd('state rm', 'module.app["AUS03RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["AUS03RDS01"].aws_instance.this[0]', 'i-08edef6d54aa17bf8', var_file='terraform.tfvars', capture_output=False)

print("AUS03RDS01 imports executed")

#import GEN2WSPEAM02 instance
print("Starting GEN2WSPEAM02 Imports")
tf.cmd('state rm', 'module.app["GEN2WSPEAM02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPEAM02"].aws_instance.this[0]', 'i-0e2093581c81375a7', var_file='terraform.tfvars', capture_output=False)

print("GEN2WSPEAM02 imports executed")

#import GEN2WSPRDS01 instance
print("Starting GEN2WSPRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2WSPRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPRDS01"].aws_instance.this[0]', 'i-0ab9bfe753e7df5f8', var_file='terraform.tfvars', capture_output=False)

print("GEN2WSPRDS01 imports executed")

#import GEN2WSPEAM01 instance
print("Starting GEN2WSPEAM01 Imports")
tf.cmd('state rm', 'module.app["GEN2WSPEAM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPEAM01"].aws_instance.this[0]', 'i-0b72be68f2bb855a1', var_file='terraform.tfvars', capture_output=False)

print("GEN2WSPEAM01 imports executed")

#import GEN2WSPSQL01 instance
print("Starting GEN2WSPSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_instance.this[0]', 'i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0a5591e329318fc06', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a5591e329318fc06:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdc"]', 'vol-02ec100791d9c07d4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-02ec100791d9c07d4:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdd"]', 'vol-03f279a17b70c8100', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-03f279a17b70c8100:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sde"]', 'vol-04773758f9c618cbb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-04773758f9c618cbb:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0848c88e145eae0e1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0848c88e145eae0e1:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdg"]', 'vol-046e6851c9468f68f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-046e6851c9468f68f:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdh"]', 'vol-02373d7f847d9dffc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-02373d7f847d9dffc:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_ebs_volume.this["sdi"]', 'vol-05f28734ece6db2b8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-05f28734ece6db2b8:i-037e48838c6a77d23', var_file='terraform.tfvars', capture_output=False)
print("GEN2WSPSQL01 imports executed")

#import GEN2WSPBRK01 instance
print("Starting GEN2WSPBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2WSPBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2WSPBRK01"].aws_instance.this[0]', 'i-00bf3812bddbaa810', var_file='terraform.tfvars', capture_output=False)

print("GEN2WSPBRK01 imports executed")

#End of command execution
print("Finished executing commands!")