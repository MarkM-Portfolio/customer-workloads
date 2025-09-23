#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

# #import EU57APP01 instance
# print("Starting EU57APP01 Imports")
# tf.cmd('state rm', 'module.app["EU57APP01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["EU57APP01"].aws_instance.this[0]', 'i-009143753cf2e6b18', var_file='terraform.tfvars', capture_output=False)

# print("EU57APP01 imports executed")

# #import EU57RDS01 instance
# print("Starting EU57RDS01 Imports")
# tf.cmd('state rm', 'module.app["EU57RDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["EU57RDS01"].aws_instance.this[0]', 'i-02e00d63140e8a8f6', var_file='terraform.tfvars', capture_output=False)

# print("EU57RDS01 imports executed")

# #import EU57DMZ01 instance
# print("Starting EU57DMZ01 Imports")
# tf.cmd('state rm', 'module.app["EU57DMZ01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["EU57DMZ01"].aws_instance.this[0]', 'i-05ac91cd02163c53e', var_file='terraform.tfvars', capture_output=False)

# print("EU57DMZ01 imports executed")

# #import EU57DB01 instance
# print("Starting EU57DB01 Imports")
# tf.cmd('state rm', 'module.app["EU57DB01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["EU57DB01"].aws_instance.this[0]', 'i-0637089ffd6a7f942', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["EU57DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["EU57DB01"].aws_ebs_volume.this["sdb"]', 'vol-0e43ea54f2780319e', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["EU57DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["EU57DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0e43ea54f2780319e:i-0637089ffd6a7f942', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["EU57DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["EU57DB01"].aws_ebs_volume.this["sdc"]', 'vol-0ce04ba858b7f9e78', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["EU57DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["EU57DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0ce04ba858b7f9e78:i-0637089ffd6a7f942', var_file='terraform.tfvars', capture_output=False)
# print("EU57DB01 imports executed")

#import EU57RDS02 instance
print("Starting EU57RDS02 Imports")
tf.cmd('state rm', 'module.app["EU57RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU57RDS02"].aws_instance.this[0]', 'i-03b8338e160970caf', var_file='terraform.tfvars', capture_output=False)
 
print("EU57RDS02 imports executed")


#End of command execution
print("Finished executing commands!")