#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import EU55DB01 instance
print("Starting EU55DB01 Imports")
tf.cmd('state rm', 'module.app["EU55DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU55DB01"].aws_instance.this[0]', 'i-0952f77071bcb1fab', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU55DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU55DB01"].aws_ebs_volume.this["sdb"]', 'vol-0cff5afe334d0b912', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU55DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU55DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0cff5afe334d0b912:i-0952f77071bcb1fab', var_file='terraform.tfvars', capture_output=False)


print("EU55DB01 imports executed")

#import EU55RDS02 instance
print("Starting EU55RDS02 Imports")
tf.cmd('state rm', 'module.app["EU55RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU55RDS02"].aws_instance.this[0]', 'i-061432a25bdff39d7', var_file='terraform.tfvars', capture_output=False)

print("EU55RDS02 imports executed")


#End of command execution