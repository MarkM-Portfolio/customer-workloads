#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

 

#import GEN2MSIINT03 instance
print("Starting GEN2MSIINT03 Imports")
tf.cmd('state rm', 'module.app["GEN2MSIINT03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MSIINT03"].aws_instance.this[0]', 'i-051ca7a44856495ca', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MSIINT03"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MSIINT03"].aws_ebs_volume.this["sdb"]', 'vol-05b18f42e703ba5c3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MSIINT03"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MSIINT03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05b18f42e703ba5c3:i-051ca7a44856495ca', var_file='terraform.tfvars', capture_output=False)

print("GEN2MSIINT03 imports executed")



#End of command execution
# print("Finished executing commands!")