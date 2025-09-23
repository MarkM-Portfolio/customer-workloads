#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2ECORDS01 instance
print("Starting GEN2ECORDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2ECORDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ECORDS01"].aws_instance.this[0]', 'i-0a790058f87ba45fa', var_file='terraform.tfvars', capture_output=False)

print("GEN2ECORDS01 imports executed")

#import GEN2ECOSMTP01 instance
print("Starting GEN2ECOSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2ECOSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSMTP01"].aws_instance.this[0]', 'i-07d28de8e5a0c3a47', var_file='terraform.tfvars', capture_output=False)

print("GEN2ECOSMTP01 imports executed")

#import GEN2ECOSQLINT01 instance
print("Starting GEN2ECOSQLINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2ECOSQLINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQLINT01"].aws_instance.this[0]', 'i-0ceddd7ae9cd06f53', var_file='terraform.tfvars', capture_output=False)

print("GEN2ECOSQLINT01 imports executed")

#import GEN2ECOBRK01 instance
print("Starting GEN2ECOBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2ECOBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOBRK01"].aws_instance.this[0]', 'i-00b16fe446d7cdfd8', var_file='terraform.tfvars', capture_output=False)

print("GEN2ECOBRK01 imports executed")

#import GEN2ECOSQL01 instance
print("Starting GEN2ECOSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_instance.this[0]', 'i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0bd6c8306322d5daf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0bd6c8306322d5daf:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdc"]', 'vol-098e768d9f0a00637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-098e768d9f0a00637:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdd"]', 'vol-09a25771f23f544ef', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-09a25771f23f544ef:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sde"]', 'vol-06cfa01a195fe1317', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-06cfa01a195fe1317:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdf"]', 'vol-007eeb964a414db0c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-007eeb964a414db0c:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0ca0cea5d9ef4233a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0ca0cea5d9ef4233a:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdh"]', 'vol-05604d921c5f14426', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-05604d921c5f14426:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0a058404c0c1f0193', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2ECOSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0a058404c0c1f0193:i-0a316a2aa1204f818', var_file='terraform.tfvars', capture_output=False)
print("GEN2ECOSQL01 imports executed")


#End of command execution
print("Finished executing commands!")