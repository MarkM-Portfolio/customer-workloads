#!/usr/bin/python

# win
# i-0037d1cc0f8131b03,i-0060aa4420abd8f73,i-00fbb2cda24fc7702,i-01594ec239d9d4688,i-026f6d6c5c99af90d,i-02a1ab1196b51249c,i-02c9c03d1de407178,i-039125d52188371d6,i-04905c4bee3b432b4,i-050a83e610dc3c9e2,i-05e8ee1ab111aa755,i-06380a872d99c7d40,i-0687d3c13580f75a1,i-070bd00bab8d69828,i-0b4ccc4180663e45b,i-0bb52416210912e19,i-0c04af18c723ece0e,i-0c5a1eb47fa63e7f5,i-0ca9b1b931b5a1162,i-0fe3dcaa3776134f3

# hana
# i-0b6299457ee3e7366,i-0a7f6811b9a484105,i-0dad4449b9b2f2d80,i-0d0227d05f8b200f7

from python_terraform import *

tf = Terraform(working_dir='.')

#import gen2trchana01 instance
print("Starting gen2trchana01 Imports")
tf.cmd('state rm', 'module.app["gen2trchana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2trchana01"].aws_instance.this[0]', 'i-0dad4449b9b2f2d80', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2trchana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchana01"].aws_ebs_volume.this["sdb"]', 'vol-01af03a2821e817c0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2trchana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-01af03a2821e817c0:i-0dad4449b9b2f2d80', var_file='terraform.tfvars', capture_output=False)
print("gen2trchana01 imports executed")

#import GEN2TRCDMZ01 instance
print("Starting GEN2TRCDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZ01"].aws_instance.this[0]', 'i-0bb52416210912e19', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZ01 imports executed")

#import GEN2TRCDMZ03 instance
print("Starting GEN2TRCDMZ03 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZ03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZ03"].aws_instance.this[0]', 'i-0687d3c13580f75a1', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZ03 imports executed")

#import GEN2TRCHM01 instance
print("Starting GEN2TRCHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_instance.this[0]', 'i-0b4ccc4180663e45b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdb"]', 'vol-006eeb96648572484', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-006eeb96648572484:i-0b4ccc4180663e45b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdc"]', 'vol-014aecbb476905a44', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-014aecbb476905a44:i-0b4ccc4180663e45b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_ebs_volume.this["sdd"]', 'vol-0d590aedbecbfb3fe', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d590aedbecbfb3fe:i-0b4ccc4180663e45b', var_file='terraform.tfvars', capture_output=False)
print("GEN2TRCHM01 imports executed")

#import GEN2TRCDMZUAT01 instance
print("Starting GEN2TRCDMZUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZUAT01"].aws_instance.this[0]', 'i-02a1ab1196b51249c', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZUAT01 imports executed")

#import GEN2TRCHM02 instance
print("Starting GEN2TRCHM02 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCHM02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM02"].aws_instance.this[0]', 'i-0ca9b1b931b5a1162', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2TRCHM02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM02"].aws_ebs_volume.this["sdb"]', 'vol-0ab2010722130f4ac', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0ab2010722130f4ac:i-0ca9b1b931b5a1162', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM02"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM02"].aws_ebs_volume.this["sdc"]', 'vol-0922b18886ec1daf7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM02"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM02"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0922b18886ec1daf7:i-0ca9b1b931b5a1162', var_file='terraform.tfvars', capture_output=False)
print("GEN2TRCHM02 imports executed")

#import GEN2TRCHM03 instance
print("Starting GEN2TRCHM03 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCHM03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM03"].aws_instance.this[0]', 'i-01594ec239d9d4688', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2TRCHM03"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM03"].aws_ebs_volume.this["sdb"]', 'vol-050731b6ed7af6fe4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM03"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-050731b6ed7af6fe4:i-01594ec239d9d4688', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM03"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM03"].aws_ebs_volume.this["sdc"]', 'vol-0a52c5a1a5d391791', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHM03"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHM03"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0a52c5a1a5d391791:i-01594ec239d9d4688', var_file='terraform.tfvars', capture_output=False)
print("GEN2TRCHM03 imports executed")

#import GEN2TRCHMUAT02 instance
print("Starting GEN2TRCHMUAT02 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCHMUAT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHMUAT02"].aws_instance.this[0]', 'i-0060aa4420abd8f73', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2TRCHMUAT02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHMUAT02"].aws_ebs_volume.this["sdb"]', 'vol-005bc92327de345ff', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHMUAT02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHMUAT02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-005bc92327de345ff:i-0060aa4420abd8f73', var_file='terraform.tfvars', capture_output=False)
print("GEN2TRCHMUAT02 imports executed")

#import GEN2TRCRDS02 instance
print("Starting GEN2TRCRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS02"].aws_instance.this[0]', 'i-00fbb2cda24fc7702', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS02 imports executed")

#import GEN2TRCRDS05 instance
print("Starting GEN2TRCRDS05 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS05"].aws_instance.this[0]', 'i-0fe3dcaa3776134f3', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS05 imports executed")

#import GEN2TRCRDS04 instance
print("Starting GEN2TRCRDS04 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS04"].aws_instance.this[0]', 'i-04905c4bee3b432b4', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS04 imports executed")

#import gen2trchana02 instance
print("Starting gen2trchana02 Imports")
tf.cmd('state rm', 'module.app["gen2trchana02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2trchana02"].aws_instance.this[0]', 'i-0d0227d05f8b200f7', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2trchana02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchana02"].aws_ebs_volume.this["sdb"]', 'vol-00bcfacfdc46aad88', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2trchana02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchana02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-00bcfacfdc46aad88:i-0d0227d05f8b200f7', var_file='terraform.tfvars', capture_output=False)
print("gen2trchana02 imports executed")

#import GEN2TRCHANA03 instance
print("Starting GEN2TRCHANA03 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCHANA03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHANA03"].aws_instance.this[0]', 'i-0b6299457ee3e7366', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2TRCHANA03"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHANA03"].aws_ebs_volume.this["sdb"]', 'vol-0b375ac236eefa9fd', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2TRCHANA03"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCHANA03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b375ac236eefa9fd:i-0b6299457ee3e7366', var_file='terraform.tfvars', capture_output=False)
print("GEN2TRCHANA03 imports executed")

#import GEN2TRCDMZ02 instance
print("Starting GEN2TRCDMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZ02"].aws_instance.this[0]', 'i-050a83e610dc3c9e2', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZ02 imports executed")

#import GEN2TRCDMZ05 instance
print("Starting GEN2TRCDMZ05 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZ05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZ05"].aws_instance.this[0]', 'i-06380a872d99c7d40', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZ05 imports executed")

#import GEN2TRCRDS06 instance
print("Starting GEN2TRCRDS06 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS06"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS06"].aws_instance.this[0]', 'i-0037d1cc0f8131b03', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS06 imports executed")

#import GEN2TRCRDS07 instance
print("Starting GEN2TRCRDS07 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS07"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS07"].aws_instance.this[0]', 'i-05e8ee1ab111aa755', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS07 imports executed")

#import GEN2TRCRDS08 instance
print("Starting GEN2TRCRDS08 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS08"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS08"].aws_instance.this[0]', 'i-0c5a1eb47fa63e7f5', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS08 imports executed")

#import GEN2TRCRDS09 instance
print("Starting GEN2TRCRDS09 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDS09"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDS09"].aws_instance.this[0]', 'i-070bd00bab8d69828', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDS09 imports executed")

#import GEN2TRCRDSUAT01 instance
print("Starting GEN2TRCRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDSUAT01"].aws_instance.this[0]', 'i-0c04af18c723ece0e', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDSUAT01 imports executed")

#import GEN2TRCRDSUAT02 instance
print("Starting GEN2TRCRDSUAT02 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDSUAT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDSUAT02"].aws_instance.this[0]', 'i-02c9c03d1de407178', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDSUAT02 imports executed")

#import GEN2TRCRDSUAT03 instance
print("Starting GEN2TRCRDSUAT03 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCRDSUAT03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCRDSUAT03"].aws_instance.this[0]', 'i-026f6d6c5c99af90d', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCRDSUAT03 imports executed")

#import GEN2TRCDMZ04 instance
print("Starting GEN2TRCDMZ04 Imports")
tf.cmd('state rm', 'module.app["GEN2TRCDMZ04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2TRCDMZ04"].aws_instance.this[0]', 'i-039125d52188371d6', var_file='terraform.tfvars', capture_output=False)

print("GEN2TRCDMZ04 imports executed")

#import gen2trchanauat02 instance
print("Starting gen2trchanauat02 Imports")
tf.cmd('state rm', 'module.app["gen2trchanauat02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2trchanauat02"].aws_instance.this[0]', 'i-0a7f6811b9a484105', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2trchanauat02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchanauat02"].aws_ebs_volume.this["sdb"]', 'vol-0cbaf43a7e78daa01', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2trchanauat02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2trchanauat02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0cbaf43a7e78daa01:i-0a7f6811b9a484105', var_file='terraform.tfvars', capture_output=False)
print("gen2trchanauat02 imports executed")


#End of command execution
print("Finished executing commands!")
