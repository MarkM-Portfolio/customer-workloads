#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import gen2kthanauat01 instance
print("Starting gen2kthanauat01 Imports")
tf.cmd('state rm', 'module.ec2["gen2kthanauat01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["gen2kthanauat01"].aws_instance.this[0]', 'i-086e04ca9127b5289', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.ec2["gen2kthanauat01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["gen2kthanauat01"].aws_ebs_volume.this["sdb"]', 'vol-05b446d6ababf80d9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["gen2kthanauat01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["gen2kthanauat01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05b446d6ababf80d9:i-086e04ca9127b5289', var_file='terraform.tfvars', capture_output=False)
print("gen2kthanauat01 imports executed")

#import GEN2KTDMZUAT01 instance
print("Starting GEN2KTDMZUAT01 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTDMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTDMZUAT01"].aws_instance.this[0]', 'i-08f93910942af43f8', var_file='terraform.tfvars', capture_output=False)

print("GEN2KTDMZUAT01 imports executed")

#import GEN2KTHMUAT01 instance
print("Starting GEN2KTHMUAT01 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTHMUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTHMUAT01"].aws_instance.this[0]', 'i-07abf0af7a254c98a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.ec2["GEN2KTHMUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTHMUAT01"].aws_ebs_volume.this["sdb"]', 'vol-049ed6f9a0ac16049', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTHMUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTHMUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-049ed6f9a0ac16049:i-07abf0af7a254c98a', var_file='terraform.tfvars', capture_output=False)
print("GEN2KTHMUAT01 imports executed")

#import GEN2KTINTUAT01 instance
print("Starting GEN2KTINTUAT01 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTINTUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTINTUAT01"].aws_instance.this[0]', 'i-0c6077ccd4bd7acf0', var_file='terraform.tfvars', capture_output=False)

print("GEN2KTINTUAT01 imports executed")

#import GEN2KTINTUAT02 instance
print("Starting GEN2KTINTUAT02 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTINTUAT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTINTUAT02"].aws_instance.this[0]', 'i-0b6855f4f3d3265c4', var_file='terraform.tfvars', capture_output=False)

print("GEN2KTINTUAT02 imports executed")

#import GEN2KTRDSUAT01 instance
print("Starting GEN2KTRDSUAT01 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTRDSUAT01"].aws_instance.this[0]', 'i-069bf8acd57374276', var_file='terraform.tfvars', capture_output=False)

print("GEN2KTRDSUAT01 imports executed")

#import GEN2KTSQLUAT01 instance
print("Starting GEN2KTSQLUAT01 Imports")
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_instance.this[0]', 'i-02beb27d40806d6bb', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdb"]', 'vol-00685ee635b0cc57e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-00685ee635b0cc57e:i-02beb27d40806d6bb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdc"]', 'vol-025ebdfc44998abe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-025ebdfc44998abe5:i-02beb27d40806d6bb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_ebs_volume.this["sdd"]', 'vol-0c65d26eca6f4a7a0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.ec2["GEN2KTSQLUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0c65d26eca6f4a7a0:i-02beb27d40806d6bb', var_file='terraform.tfvars', capture_output=False)
print("GEN2KTSQLUAT01 imports executed")


#End of command execution
print("Finished executing commands!")