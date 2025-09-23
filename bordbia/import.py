#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2BBAPP01 instance
print("Starting GEN2BBAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBAPP01"].aws_instance.this[0]', 'i-03edbfe279afe9055', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBAPP01 imports executed")

#import GEN2BBAPPUAT01 instance
print("Starting GEN2BBAPPUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBAPPUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBAPPUAT01"].aws_instance.this[0]', 'i-0193a6381c285f0f4', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBAPPUAT01 imports executed")

#import GEN2BBAPP02 instance
print("Starting GEN2BBAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2BBAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBAPP02"].aws_instance.this[0]', 'i-00316af04af6c0f58', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBAPP02 imports executed")

#import GEN2BBAPPUAT02 instance
print("Starting GEN2BBAPPUAT02 Imports")
tf.cmd('state rm', 'module.app["GEN2BBAPPUAT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBAPPUAT02"].aws_instance.this[0]', 'i-07b33a4348ae3e68d', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBAPPUAT02 imports executed")

#import GEN2BBBRK01 instance
print("Starting GEN2BBBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBBRK01"].aws_instance.this[0]', 'i-0321b39c1cee1ebeb', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBBRK01 imports executed")

#import GEN2BBDMZ01 instance
print("Starting GEN2BBDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBDMZ01"].aws_instance.this[0]', 'i-0ed9f2f47ef9b5cc8', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBDMZ01 imports executed")

#import GEN2BBDMZUAT01 instance
print("Starting GEN2BBDMZUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBDMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBDMZUAT01"].aws_instance.this[0]', 'i-09034aa960d1923c8', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBDMZUAT01 imports executed")

#import GEN2BBRDS01 instance
print("Starting GEN2BBRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBRDS01"].aws_instance.this[0]', 'i-0057a8f058d83118e', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBRDS01 imports executed")

#import GEN2BBRDS02 instance
print("Starting GEN2BBRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2BBRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBRDS02"].aws_instance.this[0]', 'i-09060ea7541cad684', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBRDS02 imports executed")

#import GEN2BBRDSUAT01 instance
print("Starting GEN2BBRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBRDSUAT01"].aws_instance.this[0]', 'i-09cae89cd6ed1787f', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBRDSUAT01 imports executed")

#import GEN2BBSMTP01 instance
print("Starting GEN2BBSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSMTP01"].aws_instance.this[0]', 'i-0aba99158a63521b1', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBSMTP01 imports executed")

#import GEN2BBSQL01 instance
print("Starting GEN2BBSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_instance.this[0]', 'i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdb"]', 'vol-079c0598fb5dfda5d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-079c0598fb5dfda5d:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0c4305bfc0ce20702', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0c4305bfc0ce20702:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0e0b4064ecfe5bc6d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0e0b4064ecfe5bc6d:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sde"]', 'vol-0f89a6e55e6887330', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0f89a6e55e6887330:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0f7bc7d14d8294209', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0f7bc7d14d8294209:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdg"]', 'vol-044333873ee4eda94', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-044333873ee4eda94:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdh"]', 'vol-0405f2c8d66388089', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0405f2c8d66388089:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_ebs_volume.this["sdi"]', 'vol-01ed45519b5cfda8f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-01ed45519b5cfda8f:i-09c5d045dca7384fc', var_file='terraform.tfvars', capture_output=False)
print("GEN2BBSQL01 imports executed")

#import GEN2BBSQLUAT01 instance
print("Starting GEN2BBSQLUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_instance.this[0]', 'i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdb"]', 'vol-0037bfdc0d3a4c450', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0037bfdc0d3a4c450:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdc"]', 'vol-08b38b1748ca4a424', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-08b38b1748ca4a424:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdd"]', 'vol-01ba832a98525c09e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-01ba832a98525c09e:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sde"]', 'vol-0c8484d8d4ceb0568', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0c8484d8d4ceb0568:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdf"]', 'vol-041fc5d6606c49a7e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-041fc5d6606c49a7e:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdg"]', 'vol-0533b76cd4ee414db', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0533b76cd4ee414db:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_ebs_volume.this["sdh"]', 'vol-0fb1a282d276ba3ef', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSQLUAT01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0fb1a282d276ba3ef:i-08a6494a361526fe5', var_file='terraform.tfvars', capture_output=False)
print("GEN2BBSQLUAT01 imports executed")

#import GEN2BBSUN01 instance
print("Starting GEN2BBSUN01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBSUN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBSUN01"].aws_instance.this[0]', 'i-0b19f08134099e174', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBSUN01 imports executed")

#import GEN2BBV1UAT01 instance
print("Starting GEN2BBV1UAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBV1UAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBV1UAT01"].aws_instance.this[0]', 'i-0d2d48ec1f02ef760', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBV1UAT01 imports executed")

#import GEN2BBV101 instance
print("Starting GEN2BBV101 Imports")
tf.cmd('state rm', 'module.app["GEN2BBV101"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBV101"].aws_instance.this[0]', 'i-034ab6e7bf81f240d', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBV101 imports executed")

#import GEN2BBWEB01 instance
print("Starting GEN2BBWEB01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBWEB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEB01"].aws_instance.this[0]', 'i-0d8815ba99657631c', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBWEB01 imports executed")

#import GEN2BBWEB02 instance
print("Starting GEN2BBWEB02 Imports")
tf.cmd('state rm', 'module.app["GEN2BBWEB02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEB02"].aws_instance.this[0]', 'i-026ab332741af9ea0', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2BBWEB02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEB02"].aws_ebs_volume.this["sdb"]', 'vol-0157459f0421bdce7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2BBWEB02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEB02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0157459f0421bdce7:i-026ab332741af9ea0', var_file='terraform.tfvars', capture_output=False)
print("GEN2BBWEB02 imports executed")

#import GEN2BBWEBUAT01 instance
print("Starting GEN2BBWEBUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2BBWEBUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEBUAT01"].aws_instance.this[0]', 'i-03102fa724483cbdd', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBWEBUAT01 imports executed")

#import GEN2BBWEBUAT02 instance
print("Starting GEN2BBWEBUAT02 Imports")
tf.cmd('state rm', 'module.app["GEN2BBWEBUAT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2BBWEBUAT02"].aws_instance.this[0]', 'i-0ffd3bc298b26c03b', var_file='terraform.tfvars', capture_output=False)

print("GEN2BBWEBUAT02 imports executed")


#End of command execution
print("Finished executing commands!")