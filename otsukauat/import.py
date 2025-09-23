#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2OTSARVUAT01 instance
print("Starting GEN2OTSARVUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSARVUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSARVUAT01"].aws_instance.this[0]', 'i-080caf71bbbb2121b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSARVUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSARVUAT01"].aws_ebs_volume.this["sdb"]', 'vol-01a81b679ee9a49cb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSARVUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSARVUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-01a81b679ee9a49cb:i-080caf71bbbb2121b', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSARVUAT01 imports executed")

#import GEN2OTSHMUAT01 instance
print("Starting GEN2OTSHMUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_instance.this[0]', 'i-0b0388cd7a09146e0', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sde"]', 'vol-0453b47de7dbc15b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0453b47de7dbc15b6:i-0b0388cd7a09146e0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdb"]', 'vol-04c69e10d06a44bf2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-04c69e10d06a44bf2:i-0b0388cd7a09146e0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdd"]', 'vol-01817386031030630', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-01817386031030630:i-0b0388cd7a09146e0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_ebs_volume.this["sdc"]', 'vol-00af9463ea64c8a7f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHMUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-00af9463ea64c8a7f:i-0b0388cd7a09146e0', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSHMUAT01 imports executed")

#import GEN2OTSINTUAT01 instance
print("Starting GEN2OTSINTUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSINTUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSINTUAT01"].aws_instance.this[0]', 'i-081f9c225899d6cb8', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSINTUAT01 imports executed")

#import GEN2OTSRDSUAT01 instance
print("Starting GEN2OTSRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDSUAT01"].aws_instance.this[0]', 'i-0daf72f1693b4a9d9', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDSUAT01 imports executed")

#import GEN2OTSSQLUAT01 instance
print("Starting GEN2OTSSQLUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_instance.this[0]', 'i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdb"]', 'vol-015b8dbb8c946b887', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-015b8dbb8c946b887:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdc"]', 'vol-0d382ffbf5a9b91b5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0d382ffbf5a9b91b5:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdd"]', 'vol-0141e5781adaeaf07', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0141e5781adaeaf07:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdg"]', 'vol-0d5a58c199cc95f40', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0d5a58c199cc95f40:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdf"]', 'vol-0fac0975693a3c5ab', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0fac0975693a3c5ab:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sdh"]', 'vol-0f23921331b51f294', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0f23921331b51f294:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_ebs_volume.this["sde"]', 'vol-0b21edb529a3abcf2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQLUAT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0b21edb529a3abcf2:i-007ae38c783cf466e', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSSQLUAT01 imports executed")


#End of command execution
print("Finished executing commands!")