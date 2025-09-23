#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2DDAPP01 instance
print("Starting GEN2DDAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_instance.this[0]', 'i-08908fad368c8c1ab', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdb"]', 'vol-0e3e7bd2ac544c8a3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0e3e7bd2ac544c8a3:i-08908fad368c8c1ab', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdc"]', 'vol-0555c693b5568c8cc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0555c693b5568c8cc:i-08908fad368c8c1ab', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_ebs_volume.this["sdd"]', 'vol-0a34c716a42649dcb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0a34c716a42649dcb:i-08908fad368c8c1ab', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_ebs_volume.this["sde"]', 'vol-00b8623b3c612419c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDAPP01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-00b8623b3c612419c:i-08908fad368c8c1ab', var_file='terraform.tfvars', capture_output=False)
print("GEN2DDAPP01 imports executed")

#import GEN2DDAPP02 instance
print("Starting GEN2DDAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2DDAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDAPP02"].aws_instance.this[0]', 'i-0ebf506f5a36d92ad', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDAPP02 imports executed")

#import GEN2DDHM01 instance
print("Starting GEN2DDHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDHM01"].aws_instance.this[0]', 'i-068cf3503237e79e5', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2DDHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDHM01"].aws_ebs_volume.this["sdb"]', 'vol-045293e9e382db6cf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-045293e9e382db6cf:i-068cf3503237e79e5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDHM01"].aws_ebs_volume.this["sdc"]', 'vol-0b31a6a4c0122bbf4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DDHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DDHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0b31a6a4c0122bbf4:i-068cf3503237e79e5', var_file='terraform.tfvars', capture_output=False)
print("GEN2DDHM01 imports executed")

#import GEN2DDSMTP01 instance
print("Starting GEN2DDSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDSMTP01"].aws_instance.this[0]', 'i-013bb16e8bb392d94', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDSMTP01 imports executed")

#import GEN2DDUAPP01 instance
print("Starting GEN2DDUAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDUAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDUAPP01"].aws_instance.this[0]', 'i-0d93c2cefabba5ea0', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDUAPP01 imports executed")

#import GEN2DDUHM01 instance
print("Starting GEN2DDUHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDUHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDUHM01"].aws_instance.this[0]', 'i-0294a4756f07f1b87', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDUHM01 imports executed")

#import GEN2DDURDS01 instance
print("Starting GEN2DDURDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDURDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDURDS01"].aws_instance.this[0]', 'i-05d9d771c99d2c677', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDURDS01 imports executed")

#import gen2ddhanadb01 instance
print("Starting gen2ddhanadb01 Imports")
tf.cmd('state rm', 'module.app["gen2ddhanadb01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanadb01"].aws_instance.this[0]', 'i-04b666c4cd5b7ea8d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2ddhanadb01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanadb01"].aws_ebs_volume.this["sdb"]', 'vol-0819bd3092f043d09', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2ddhanadb01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanadb01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0819bd3092f043d09:i-04b666c4cd5b7ea8d', var_file='terraform.tfvars', capture_output=False)
print("gen2ddhanadb01 imports executed")

#import gen2ddhanaudb01 instance
print("Starting gen2ddhanaudb01 Imports")
tf.cmd('state rm', 'module.app["gen2ddhanaudb01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanaudb01"].aws_instance.this[0]', 'i-0b231c0a5af21b517', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2ddhanaudb01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanaudb01"].aws_ebs_volume.this["sdb"]', 'vol-0619e30fa07711351', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2ddhanaudb01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2ddhanaudb01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0619e30fa07711351:i-0b231c0a5af21b517', var_file='terraform.tfvars', capture_output=False)
print("gen2ddhanaudb01 imports executed")

#import GEN2DDRDS01 instance
print("Starting GEN2DDRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2DDRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDRDS01"].aws_instance.this[0]', 'i-0cc4f95436ad3aa39', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDRDS01 imports executed")

#import GEN2DDRDS02 instance
print("Starting GEN2DDRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2DDRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDRDS02"].aws_instance.this[0]', 'i-081c5fca0f1ae8010', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDRDS02 imports executed")

#import GEN2DDUAPP02 instance
print("Starting GEN2DDUAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2DDUAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DDUAPP02"].aws_instance.this[0]', 'i-089619e0cad8b7779', var_file='terraform.tfvars', capture_output=False)

print("GEN2DDUAPP02 imports executed")

#End of command execution
print("Finished executing commands!")