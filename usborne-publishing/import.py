#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU68HWIN01 instance
print("Starting EU68HWIN01 Imports")
tf.cmd('state rm', 'module.app["EU68HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU68HWIN01"].aws_instance.this[0]', 'i-097fb04c441f3df1f', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU68HWIN01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU68HWIN01"].aws_ebs_volume.this["sdb"]', 'vol-0b64b67d0c1c492b9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU68HWIN01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU68HWIN01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b64b67d0c1c492b9:i-097fb04c441f3df1f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU68HWIN01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU68HWIN01"].aws_ebs_volume.this["sdc"]', 'vol-034fbca32fa61ef79', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU68HWIN01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU68HWIN01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-034fbca32fa61ef79:i-097fb04c441f3df1f', var_file='terraform.tfvars', capture_output=False)
print("EU68HWIN01 imports executed")

#import EU68RDS01 instance
print("Starting EU68RDS01 Imports")
tf.cmd('state rm', 'module.app["EU68RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU68RDS01"].aws_instance.this[0]', 'i-042d13116124eedbf', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU68RDS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU68RDS01"].aws_ebs_volume.this["sdb"]', 'vol-0003748602870a24d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU68RDS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU68RDS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0003748602870a24d:i-042d13116124eedbf', var_file='terraform.tfvars', capture_output=False)
print("EU68RDS01 imports executed")

#import eu68hana01 instance
print("Starting eu68hana01 Imports")
tf.cmd('state rm', 'module.app["eu68hana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["eu68hana01"].aws_instance.this[0]', 'i-0d682f1ac8ce4dedf', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["eu68hana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["eu68hana01"].aws_ebs_volume.this["sdb"]', 'vol-05e6be8a7e631477b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["eu68hana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["eu68hana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05e6be8a7e631477b:i-0d682f1ac8ce4dedf', var_file='terraform.tfvars', capture_output=False)
print("eu68hana01 imports executed")


#End of command execution
print("Finished executing commands!")