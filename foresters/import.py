#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU82DMZ01 instance
print("Starting EU82DMZ01 Imports")
tf.cmd('state rm', 'module.app["EU82DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ01"].aws_instance.this[0]', 'i-066eafb1f8b68638e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU82DMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ01"].aws_ebs_volume.this["sdb"]', 'vol-09bda5959ab80296f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-09bda5959ab80296f:i-066eafb1f8b68638e', var_file='terraform.tfvars', capture_output=False)
print("EU82DMZ01 imports executed")

#import EU82DB01 instance
print("Starting EU82DB01 Imports")
tf.cmd('state rm', 'module.app["EU82DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_instance.this[0]', 'i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sdb"]', 'vol-059f7db9a6cfb5055', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-059f7db9a6cfb5055:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sdc"]', 'vol-0f12f8a8388414fee', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0f12f8a8388414fee:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sdd"]', 'vol-047411c9ee82c2483', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-047411c9ee82c2483:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sde"]', 'vol-0602da8b47068dd53', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0602da8b47068dd53:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sdf"]', 'vol-0d8b763d037026622', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0d8b763d037026622:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_ebs_volume.this["sdg"]', 'vol-06edc891cdf0e083b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU82DB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-06edc891cdf0e083b:i-02fdd7cc3a26ea0e3', var_file='terraform.tfvars', capture_output=False)
print("EU82DB01 imports executed")

#import EU82DMZ02 instance
print("Starting EU82DMZ02 Imports")
tf.cmd('state rm', 'module.app["EU82DMZ02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ02"].aws_instance.this[0]', 'i-012feed7cca1e0fe4', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU82DMZ02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ02"].aws_ebs_volume.this["sdb"]', 'vol-003b3ea38b98b9d57', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82DMZ02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82DMZ02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-003b3ea38b98b9d57:i-012feed7cca1e0fe4', var_file='terraform.tfvars', capture_output=False)
print("EU82DMZ02 imports executed")

#import EU82RDS01 instance
print("Starting EU82RDS01 Imports")
tf.cmd('state rm', 'module.app["EU82RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU82RDS01"].aws_instance.this[0]', 'i-09ecfc8ee018510a4', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU82RDS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82RDS01"].aws_ebs_volume.this["sdb"]', 'vol-0b7f495ff1d93e75c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU82RDS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU82RDS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b7f495ff1d93e75c:i-09ecfc8ee018510a4', var_file='terraform.tfvars', capture_output=False)
print("EU82RDS01 imports executed")


#End of command execution
print("Finished executing commands!")