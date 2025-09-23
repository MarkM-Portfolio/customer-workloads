#!/usr/bin/python

from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2SFGDMZ01 instance
print("Starting GEN2SFGDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFGDMZ01"].aws_instance.this[0]', capture_output=False)

tf.import_cmd('module.app["GEN2SFGDMZ01"].aws_instance.this[0]', 'i-096ba60c31983dd48', var_file='terraform.tfvars', capture_output=False)

print("GEN2SFGDMZ01 imports executed")

#import GEN2SFGDMZ02 instance
print("Starting GEN2SFGDMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2SFGDMZ02"].aws_instance.this[0]', capture_output=False)

tf.import_cmd('module.app["GEN2SFGDMZ02"].aws_instance.this[0]', 'i-0e4accc2b543d3827', var_file='terraform.tfvars', capture_output=False)

print("GEN2SFGDMZ02 imports executed")

#import GEN2SFGSQL01 instance
print("Starting GEN2SFGSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_instance.this[0]', capture_output=False)

tf.import_cmd('module.app["GEN2SFGSQL01"].aws_instance.this[0]', 'i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdb"]', 'vol-08b5f6e0ca0633389', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-08b5f6e0ca0633389:i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdc"]', 'vol-08f3a362c0647cbea', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-08f3a362c0647cbea:i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdd"]', 'vol-02086c10413fa2a0f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-02086c10413fa2a0f:i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sde"]', 'vol-0af0c08c4905219a5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0af0c08c4905219a5:i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_ebs_volume.this["sdf"]', 'vol-01c0654a6c5cfe6f0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SFGSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-01c0654a6c5cfe6f0:i-0a87e7e91616435a6', var_file='terraform.tfvars', capture_output=False)
print("GEN2SFGSQL01 imports executed")

#import GEN2SFGRDS01 instance
print("Starting GEN2SFGRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SFGRDS01"].aws_instance.this[0]', capture_output=False)

tf.import_cmd('module.app["GEN2SFGRDS01"].aws_instance.this[0]', 'i-012b1356a74733939', var_file='terraform.tfvars', capture_output=False)

print("GEN2SFGRDS01 imports executed")


#End of command execution
print("Finished executing commands!")