#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU01DB01 instance
print("Starting EU01DB01 Imports")
tf.cmd('state rm', 'module.app["EU01DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_instance.this[0]', 'i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sdb"]', 'vol-0528622b1aa6a0c8f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0528622b1aa6a0c8f:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sdc"]', 'vol-08574a36952b873a9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-08574a36952b873a9:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sdd"]', 'vol-0194785a2538e6e88', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0194785a2538e6e88:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sde"]', 'vol-0eb2358f5d5af0f25', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0eb2358f5d5af0f25:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sdf"]', 'vol-0906e128f58da2b61', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0906e128f58da2b61:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_ebs_volume.this["sdg"]', 'vol-0c0fd9a9ab25c76da', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU01DB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0c0fd9a9ab25c76da:i-0a84b5be72054332d', var_file='terraform.tfvars', capture_output=False)
print("EU01DB01 imports executed")

#import EU01DB02 instance
print("Starting EU01DB02 Imports")
tf.cmd('state rm', 'module.app["EU01DB02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_instance.this[0]', 'i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sdb"]', 'vol-07ed8d2c3145b2c66', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-07ed8d2c3145b2c66:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sdc"]', 'vol-05ca1af44d3f6a867', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-05ca1af44d3f6a867:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sdd"]', 'vol-09507d4cb1543f3fb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-09507d4cb1543f3fb:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sde"]', 'vol-0fbab2749d3091f69', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0fbab2749d3091f69:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sdf"]', 'vol-0843d1a39fdabfa3f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0843d1a39fdabfa3f:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_ebs_volume.this["sdg"]', 'vol-00068ea99c11f50df', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU01DB02"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU01DB02"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-00068ea99c11f50df:i-0d3528df53d48a775', var_file='terraform.tfvars', capture_output=False)
print("EU01DB02 imports executed")

#import EU01DMZ01 instance
print("Starting EU01DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU01DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01DMZ01"].aws_instance.this[0]', 'i-018418928d982887d', var_file='terraform.tfvars', capture_output=False)

print("EU01DMZ01 imports executed")

#import EU01RDS01 instance
print("Starting EU01RDS01 Imports")
tf.cmd('state rm', 'module.app["EU01RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01RDS01"].aws_instance.this[0]', 'i-0f64fbc60f34271b9', var_file='terraform.tfvars', capture_output=False)

print("EU01RDS01 imports executed")

#import EU01RDS02 instance
print("Starting EU01RDS02 Imports")
tf.cmd('state rm', 'module.app["EU01RDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01RDS02"].aws_instance.this[0]', 'i-090dc8fd41c259faa', var_file='terraform.tfvars', capture_output=False)

print("EU01RDS02 imports executed")

#import EU01RDS03 instance
print("Starting EU01RDS03 Imports")
tf.cmd('state rm', 'module.app["EU01RDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01RDS03"].aws_instance.this[0]', 'i-0c7f9d26040585003', var_file='terraform.tfvars', capture_output=False)

print("EU01RDS03 imports executed")

#import EU01RDS04 instance
print("Starting EU01RDS04 Imports")
tf.cmd('state rm', 'module.app["EU01RDS04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU01RDS04"].aws_instance.this[0]', 'i-0e27e072dee2e09e2', var_file='terraform.tfvars', capture_output=False)

print("EU01RDS04 imports executed")


#End of command execution
print("Finished executing commands!")