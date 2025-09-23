#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2CPISMTP01 instance
print("Starting GEN2CPISMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPISMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISMTP01"].aws_instance.this[0]', 'i-08b7081d387933a4a', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPISMTP01 imports executed")

#import GEN2CPIHMTUAT01 instance
print("Starting GEN2CPIHMTUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIHMTUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMTUAT01"].aws_instance.this[0]', 'i-06c61aff7b7a3745b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CPIHMTUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMTUAT01"].aws_ebs_volume.this["sdb"]', 'vol-0a6f393115232095d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPIHMTUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMTUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a6f393115232095d:i-06c61aff7b7a3745b', var_file='terraform.tfvars', capture_output=False)
print("GEN2CPIHMTUAT01 imports executed")

#import GEN2CPIINT01 instance
print("Starting GEN2CPIINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIINT01"].aws_instance.this[0]', 'i-0017c360c92a6751d', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIINT01 imports executed")

#import GEN2CPIINT03 instance
print("Starting GEN2CPIINT03 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIINT03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIINT03"].aws_instance.this[0]', 'i-0952896030d05d244', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIINT03 imports executed")

#import GEN2CPIINT04 instance
print("Starting GEN2CPIINT04 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIINT04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIINT04"].aws_instance.this[0]', 'i-0aaa0450732067fd4', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIINT04 imports executed")

#import GEN2CPIHMT01 instance
print("Starting GEN2CPIHMT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIHMT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMT01"].aws_instance.this[0]', 'i-070be31da9e11ffc5', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CPIHMT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMT01"].aws_ebs_volume.this["sdb"]', 'vol-0dab6d7935d4669fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPIHMT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIHMT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0dab6d7935d4669fa:i-070be31da9e11ffc5', var_file='terraform.tfvars', capture_output=False)
print("GEN2CPIHMT01 imports executed")

#import GEN2CPIWEBUAT01 instance
print("Starting GEN2CPIWEBUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIWEBUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIWEBUAT01"].aws_instance.this[0]', 'i-04b82db52e3538c01', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIWEBUAT01 imports executed")

#import GEN2CPIRDS01 instance
print("Starting GEN2CPIRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIRDS01"].aws_instance.this[0]', 'i-00745cbc7d03cf152', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIRDS01 imports executed")

#import GEN2CPIWEB01 instance
print("Starting GEN2CPIWEB01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIWEB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIWEB01"].aws_instance.this[0]', 'i-0b31abc6dea457b6e', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIWEB01 imports executed")

#import GEN2CPIRDS03 instance
print("Starting GEN2CPIRDS03 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIRDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIRDS03"].aws_instance.this[0]', 'i-005d7f5fb2af057e3', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIRDS03 imports executed")

#import GEN2CPIRDS02 instance
print("Starting GEN2CPIRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIRDS02"].aws_instance.this[0]', 'i-081d3e5bf9f5f8743', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIRDS02 imports executed")

#import GEN2CPIRDSUAT01 instance
print("Starting GEN2CPIRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIRDSUAT01"].aws_instance.this[0]', 'i-03fcdc1b1d564d5d7', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIRDSUAT01 imports executed")

#import GEN2CPIINT02 instance
print("Starting GEN2CPIINT02 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIINT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIINT02"].aws_instance.this[0]', 'i-0aa5cd31d44f7e0b1', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIINT02 imports executed")

#import GEN2CPISQL01 instance
print("Starting GEN2CPISQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_instance.this[0]', 'i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdb"]', 'vol-034381b2abb0e0571', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-034381b2abb0e0571:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdc"]', 'vol-00e051cfdb6f5e09d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-00e051cfdb6f5e09d:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdd"]', 'vol-01fa79e7ac3433393', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-01fa79e7ac3433393:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sde"]', 'vol-093cd546b4910219d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-093cd546b4910219d:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdf"]', 'vol-0c7c819e7de02a7bf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0c7c819e7de02a7bf:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdg"]', 'vol-0a750eda23d9912bc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0a750eda23d9912bc:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdh"]', 'vol-0f66b35cce2599cbe', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0f66b35cce2599cbe:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_ebs_volume.this["sdi"]', 'vol-080bf9915b0266f24', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2CPISQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-080bf9915b0266f24:i-058bef7e53a7e118f', var_file='terraform.tfvars', capture_output=False)
print("GEN2CPISQL01 imports executed")

#import GEN2CPIBRK01 instance
print("Starting GEN2CPIBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2CPIBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CPIBRK01"].aws_instance.this[0]', 'i-0d2d7790d4fec8782', var_file='terraform.tfvars', capture_output=False)

print("GEN2CPIBRK01 imports executed")


#End of command execution
print("Finished executing commands!")