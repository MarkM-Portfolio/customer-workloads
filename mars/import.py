#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import GEN2MARSRDS01 instance
print("Starting GEN2MARSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2MARSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSRDS01"].aws_instance.this[0]', 'i-0252be6e1a0edd12f', var_file='terraform.tfvars', capture_output=False)

print("GEN2MARSRDS01 imports executed")

#import GEN2MARSSQL01 instance
print("Starting GEN2MARSSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_instance.this[0]', 'i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0c385619e9ebbaed0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c385619e9ebbaed0:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdc"]', 'vol-059fd69cbfedea173', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-059fd69cbfedea173:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdd"]', 'vol-006384c55ca809367', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-006384c55ca809367:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sde"]', 'vol-0cb12a4de2f2755aa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0cb12a4de2f2755aa:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0d9557bdfd529a806', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0d9557bdfd529a806:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdg"]', 'vol-09c3d674b83342c93', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-09c3d674b83342c93:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdh"]', 'vol-01bd14048bed69af1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-01bd14048bed69af1:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0ef3568f6b7720aa6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0ef3568f6b7720aa6:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_ebs_volume.this["sdj"]', 'vol-03dcc702a1a20db18', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2MARSSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-03dcc702a1a20db18:i-0d7fa7d37f7d33a60', var_file='terraform.tfvars', capture_output=False)
print("GEN2MARSSQL01 imports executed")


#End of command execution
print("Finished executing commands!")