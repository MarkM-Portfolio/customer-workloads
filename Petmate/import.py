#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2PETMBRK01 instance
print("Starting GEN2PETMBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2PETMBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2PETMBRK01"].aws_instance.this[0]', 'i-03c058f39b653c9d0', var_file='terraform.tfvars', capture_output=False)

print("GEN2PETMBRK01 imports executed")

# #import GEN2PETMINT01 instance
# print("Starting GEN2PETMINT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2PETMINT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMINT01"].aws_instance.this[0]', 'i-0bf65f47ec5ec1a91', var_file='terraform.tfvars', capture_output=False)

# print("GEN2PETMINT01 imports executed")

# #import GEN2PETMRDS01 instance
# print("Starting GEN2PETMRDS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2PETMRDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMRDS01"].aws_instance.this[0]', 'i-0182e6984625b6056', var_file='terraform.tfvars', capture_output=False)

# print("GEN2PETMRDS01 imports executed")

# #import GEN2PETMRDS02 instance
# print("Starting GEN2PETMRDS02 Imports")
# tf.cmd('state rm', 'module.app["GEN2PETMRDS02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMRDS02"].aws_instance.this[0]', 'i-0ad9d3c27253099b5', var_file='terraform.tfvars', capture_output=False)

# print("GEN2PETMRDS02 imports executed")

# #import GEN2PETMHMT01 instance
# print("Starting GEN2PETMHMT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2PETMHMT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMHMT01"].aws_instance.this[0]', 'i-0ca9750a92b778dd0', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2PETMHMT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMHMT01"].aws_ebs_volume.this["sdb"]', 'vol-0ad6f6a3cdf4fbc27', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2PETMHMT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2PETMHMT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0ad6f6a3cdf4fbc27:i-0ca9750a92b778dd0', var_file='terraform.tfvars', capture_output=False)
# print("GEN2PETMHMT01 imports executed")

#import GEN2PETMSMTP01 instance
print("Starting GEN2PETMSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2PETMSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2PETMSMTP01"].aws_instance.this[0]', 'i-0251756ef529f8475', var_file='terraform.tfvars', capture_output=False)

print("GEN2PETMSMTP01 imports executed")


#End of command execution
print("Finished executing commands!")