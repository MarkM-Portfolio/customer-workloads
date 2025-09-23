#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2CTADMZ03 instance
print("Starting GEN2CTADMZ03 Imports")
tf.cmd('state rm', 'module.app["GEN2CTADMZ03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTADMZ03"].aws_instance.this[0]', 'i-085410e731df31ade', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTADMZ03 imports executed")

#import GEN2CTAAPP01 instance
print("Starting GEN2CTAAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2CTAAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTAAPP01"].aws_instance.this[0]', 'i-0914e018b12ae541c', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTAAPP01 imports executed")

#import GEN2CTAAPP02 instance
print("Starting GEN2CTAAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2CTAAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTAAPP02"].aws_instance.this[0]', 'i-08bacd55641702b11', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTAAPP02 imports executed")

#import GEN2CTADMZ01 instance
print("Starting GEN2CTADMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2CTADMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTADMZ01"].aws_instance.this[0]', 'i-071fc4475f603669a', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTADMZ01 imports executed")

#import GEN2CTADMZ02 instance
print("Starting GEN2CTADMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2CTADMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTADMZ02"].aws_instance.this[0]', 'i-00884030951491abe', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTADMZ02 imports executed")

#import GEN2CTASQL01 instance
print("Starting GEN2CTASQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_instance.this[0]', 'i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdb"]', 'vol-07ff20b4fe4ff0de2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-07ff20b4fe4ff0de2:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdc"]', 'vol-01f1cbf619c6cb9ba', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-01f1cbf619c6cb9ba:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdd"]', 'vol-0567022229564b95c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0567022229564b95c:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sde"]', 'vol-0149b21fc84c3747c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0149b21fc84c3747c:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdf"]', 'vol-06c434c12690e96d6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-06c434c12690e96d6:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_ebs_volume.this["sdg"]', 'vol-0969b4f327aa88c17', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CTASQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0969b4f327aa88c17:i-0c6585f5a9798a983', var_file='terraform.tfvars', capture_output=False)
print("GEN2CTASQL01 imports executed")

#import GEN2CTABRK01 instance
print("Starting GEN2CTABRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2CTABRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTABRK01"].aws_instance.this[0]', 'i-05a97d135343efa63', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTABRK01 imports executed")

#import GEN2CTARDS01 instance
print("Starting GEN2CTARDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2CTARDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CTARDS01"].aws_instance.this[0]', 'i-0cc599b78c9a01952', var_file='terraform.tfvars', capture_output=False)

print("GEN2CTARDS01 imports executed")


#End of command execution
print("Finished executing commands!")
