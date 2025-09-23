#!/usr/bin/python
#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import EU39WIN01 instance
print("Starting EU39WIN01 Imports")
tf.cmd('state rm', 'module.app["EU39WIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU39WIN01"].aws_instance.this[0]', 'i-045e6c7424cd02b42', var_file='terraform.tfvars', capture_output=False)

print("EU39WIN01 imports executed")


#End of command execution
print("Finished executing commands!")

 ##Replatform Servers
print("Starting DWAT01WIN01 Imports")
tf.cmd('state rm', 'module.replatform["DWAT01WIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01WIN01"].aws_instance.this[0]', 'i-0ad56da1374e077cd', var_file='terraform.tfvars', capture_output=False)

print("DWAT01WIN01 imports executed")
##
print("Starting DWAT01WIN02 Imports")
tf.cmd('state rm', 'module.replatform["DWAT01WIN02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01WIN02"].aws_instance.this[0]', 'i-0073d762c57e26844', var_file='terraform.tfvars', capture_output=False)

print("DWAT01WIN02 imports executed")
##
print("Starting DWAT01RDS01 Imports")
tf.cmd('state rm', 'module.replatform["DWAT01RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01RDS01"].aws_instance.this[0]', 'i-0ba407d89382eb2fd', var_file='terraform.tfvars', capture_output=False)

print("DWAT01RDS01 imports executed")


#import DWAT01DB01 instance
print("Starting DWAT01DB01 Imports")
tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_instance.this[0]', 'i-015dcbd1437fab109', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdb"]', 'vol-07c6a2bc2def4b5df', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-07c6a2bc2def4b5df:i-015dcbd1437fab109', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdc"]', 'vol-0723b78cd2c58f3b6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0723b78cd2c58f3b6:i-015dcbd1437fab109', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_ebs_volume.this["sdd"]', 'vol-0ce0bad8c4df38f63', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0ce0bad8c4df38f63:i-015dcbd1437fab109', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_ebs_volume.this["sde"]', 'vol-079a724e902e1738c', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.replatform["DWAT01DB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-079a724e902e1738c:i-015dcbd1437fab109', var_file='terraform.tfvars', capture_output=False)

print("DWAT01DB01 imports executed")


##
#import DWAT01DB02 instance
print("Starting DWAT01DB02 Imports")
tf.cmd('state rm', 'module.replatform["DWAT01DB02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.replatform["DWAT01DB02"].aws_instance.this[0]', 'i-0c8b76e4463cb8024', var_file='terraform.tfvars', capture_output=False)

print("DWAT01DB02 imports executed")
 



#End of command execution
print("Finished executing commands!")