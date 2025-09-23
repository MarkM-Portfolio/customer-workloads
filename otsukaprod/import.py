#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import GEN2OTSAPP01 instance
print("Starting GEN2OTSAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSAPP01"].aws_instance.this[0]', 'i-0cd9d4a0353fb9629', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSAPP01 imports executed")

#import GEN2OTSARV01 instance
print("Starting GEN2OTSARV01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSARV01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSARV01"].aws_instance.this[0]', 'i-0cf8817fba983db62', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSARV01"].aws_ebs_volume.this["sdb"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSARV01"].aws_ebs_volume.this["sdb"]', 'vol-0bb9cc893d73b664f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSARV01"].aws_volume_attachment.this["sdb"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSARV01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0bb9cc893d73b664f:i-0cf8817fba983db62', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSARV01 imports executed")

#import GEN2OTSAUDIT01 instance
print("Starting GEN2OTSAUDIT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSAUDIT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSAUDIT01"].aws_instance.this[0]', 'i-0cf6c35a28fac35f7', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSAUDIT01 imports executed")

#import GEN2OTSFILE01 instance
print("Starting GEN2OTSFILE01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSFILE01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSFILE01"].aws_instance.this[0]', 'i-0f1a239c793865562', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSFILE01"].aws_ebs_volume.this["sdb"]', capture_output=False)       
tf.import_cmd('module.app["GEN2OTSFILE01"].aws_ebs_volume.this["sdb"]', 'vol-0dd794f59e017d5bf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSFILE01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSFILE01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0dd794f59e017d5bf:i-0f1a239c793865562', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSFILE01"].aws_ebs_volume.this["sdc"]', capture_output=False)       
tf.import_cmd('module.app["GEN2OTSFILE01"].aws_ebs_volume.this["sdc"]', 'vol-037567e15b2989146', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSFILE01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSFILE01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-037567e15b2989146:i-0f1a239c793865562', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSFILE01 imports executed")

#import GEN2OTSHM01 instance
print("Starting GEN2OTSHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSHM01"].aws_instance.this[0]', 'i-0d6ed873da2bf1af8', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSHM01 imports executed")

#import GEN2OTSINT01 instance
print("Starting GEN2OTSINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSINT01"].aws_instance.this[0]', 'i-0f33a6d6796b7d566', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSINT01 imports executed")

#import GEN2OTSINT02 instance
print("Starting GEN2OTSINT02 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSINT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSINT02"].aws_instance.this[0]', 'i-048ca9d9256505e2e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSINT02"].aws_ebs_volume.this["sdb"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSINT02"].aws_ebs_volume.this["sdb"]', 'vol-059f2cca4abcdae1e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSINT02"].aws_volume_attachment.this["sdb"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSINT02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-059f2cca4abcdae1e:i-048ca9d9256505e2e', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSINT02 imports executed")

#import GEN2OTSINT04 instance
print("Starting GEN2OTSINT04 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSINT04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSINT04"].aws_instance.this[0]', 'i-0516f1b3f722cba34', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSINT04 imports executed")

#import GEN2OTSPRTG01 instance
print("Starting GEN2OTSPRTG01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSPRTG01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSPRTG01"].aws_instance.this[0]', 'i-0f4fa465ed06e9e44', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSPRTG01 imports executed")

#import GEN2OTSINT03 instance
print("Starting GEN2OTSINT03 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSINT03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSINT03"].aws_instance.this[0]', 'i-02b7ece36d362ef6d', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSINT03 imports executed")

#import GEN2OTSRDS01 instance
print("Starting GEN2OTSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS01"].aws_instance.this[0]', 'i-0cb1cf99d8d3dd9d2', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS01 imports executed")

#import GEN2OTSRDS02 instance
print("Starting GEN2OTSRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS02"].aws_instance.this[0]', 'i-045bcf3890d9b7aaf', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS02 imports executed")

#import GEN2OTSRDS03 instance
print("Starting GEN2OTSRDS03 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS03"].aws_instance.this[0]', 'i-0464f937a642dc8cd', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS03 imports executed")

#import GEN2OTSRDS04 instance
print("Starting GEN2OTSRDS04 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS04"].aws_instance.this[0]', 'i-0db39a0c45a4bbf52', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS04 imports executed")

#import GEN2OTSRDS05 instance
print("Starting GEN2OTSRDS05 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS05"].aws_instance.this[0]', 'i-0fc25725e50c787c7', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS05 imports executed")

#import GEN2OTSRDS06 instance
print("Starting GEN2OTSRDS06 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSRDS06"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSRDS06"].aws_instance.this[0]', 'i-0eb9d7291a9236e5e', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSRDS06 imports executed")

#import GEN2OTSSMTP01 instance
print("Starting GEN2OTSSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSMTP01"].aws_instance.this[0]', 'i-0a12ebbf32cc80374', var_file='terraform.tfvars', capture_output=False)

print("GEN2OTSSMTP01 imports executed")

#import GEN2OTSSQL01 instance
print("Starting GEN2OTSSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_instance.this[0]', 'i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0870a64d7fee814ae', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0870a64d7fee814ae:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0122a82053010c034', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0122a82053010c034:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0f66f3dc467ae52cf', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f66f3dc467ae52cf:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sde"]', 'vol-0124eae0c80ba4400', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sde"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0124eae0c80ba4400:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0a5b6f93379b6f6a3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0a5b6f93379b6f6a3:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)        
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0c723d886a909e635', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False) 
tf.import_cmd('module.app["GEN2OTSSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0c723d886a909e635:i-03ccf94e25c675e30', var_file='terraform.tfvars', capture_output=False)
print("GEN2OTSSQL01 imports executed")


#End of command execution
print("Finished executing commands!")