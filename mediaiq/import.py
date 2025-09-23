#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU58HWIN01 instance
print("Starting EU58HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU58HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU58HWIN01"].aws_instance.this[0]', 'i-013c531546746ea45', var_file='terraform.tfvars', capture_output=False)

print("EU58HWIN01 imports executed")

#import EU58RDS01 instance
print("Starting EU58RDS01 Imports")
tf.cmd('state rm', 'module.app["EU58RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU58RDS01"].aws_instance.this[0]', 'i-01b0305905a5cabe5', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU58RDS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU58RDS01"].aws_ebs_volume.this["sdb"]', 'vol-0744185715478856e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU58RDS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU58RDS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0744185715478856e:i-01b0305905a5cabe5', var_file='terraform.tfvars', capture_output=False)
print("EU58RDS01 imports executed")

#import EU46DMZ01 instance
print("Starting EU46DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU46DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU46DMZ01"].aws_instance.this[0]', 'i-04211256cf17616e4', var_file='terraform.tfvars', capture_output=False)

print("EU46DMZ01 imports executed")

#import EU46HWIN01 instance
print("Starting EU46HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU46HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU46HWIN01"].aws_instance.this[0]', 'i-0c6b1943d033782ce', var_file='terraform.tfvars', capture_output=False)

print("EU46HWIN01 imports executed")

#import EU46RDS01 instance
print("Starting EU46RDS01 Imports")
tf.cmd('state rm', 'module.app["EU46RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU46RDS01"].aws_instance.this[0]', 'i-0d2293f4294429943', var_file='terraform.tfvars', capture_output=False)

print("EU46RDS01 imports executed")

#import EU46INT01 instance
print("Starting EU46INT01 Imports")
tf.cmd('state rm', 'module.app["EU46INT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU46INT01"].aws_instance.this[0]', 'i-09eb282bd273647bd', var_file='terraform.tfvars', capture_output=False)

print("EU46INT01 imports executed")


#End of command execution
print("Finished executing commands!")