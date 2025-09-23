#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import GEN2RKSRDS01 instance
print("Starting GEN2RKSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSRDS01"].aws_instance.this[0]', 'i-0860a7e4a3fbc4209', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSRDS01 imports executed")

#import GEN2RKSRDS02 instance
print("Starting GEN2RKSRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSRDS02"].aws_instance.this[0]', 'i-0699482e1e6a97ef7', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSRDS02 imports executed")

#import GEN2RKSRDS03 instance
print("Starting GEN2RKSRDS03 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSRDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSRDS03"].aws_instance.this[0]', 'i-0ad28e913c7233cd3', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSRDS03 imports executed")

#import GEN2RKSAPP03 instance
print("Starting GEN2RKSAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSAPP03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSAPP03"].aws_instance.this[0]', 'i-09011998ffeed2f99', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSAPP03 imports executed")

#import GEN2RKSAPP02 instance
print("Starting GEN2RKSAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSAPP02"].aws_instance.this[0]', 'i-0ec05137680b1ebc9', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSAPP02 imports executed")

#import GEN2RKSRDS04 instance
print("Starting GEN2RKSRDS04 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSRDS04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSRDS04"].aws_instance.this[0]', 'i-0c57b9073aa424f73', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSRDS04 imports executed")

#import GEN2RKSAPP04 instance
print("Starting GEN2RKSAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSAPP04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSAPP04"].aws_instance.this[0]', 'i-02a28d13a3f29a57e', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSAPP04 imports executed")

#import GEN2RKSAPP01 instance
print("Starting GEN2RKSAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSAPP01"].aws_instance.this[0]', 'i-00a77f548d6747753', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSAPP01 imports executed")

#import GEN2RKSHM01 instance
print("Starting GEN2RKSHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSHM01"].aws_instance.this[0]', 'i-0d1a456cbe522c47a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdb"]', 'vol-0b3faf0d00f18f01c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b3faf0d00f18f01c:i-0d1a456cbe522c47a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSHM01"].aws_ebs_volume.this["sdc"]', 'vol-0273ff496389114ec', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0273ff496389114ec:i-0d1a456cbe522c47a', var_file='terraform.tfvars', capture_output=False)
print("GEN2RKSHM01 imports executed")

#import GEN2RKSAPP05 instance
print("Starting GEN2RKSAPP05 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSAPP05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSAPP05"].aws_instance.this[0]', 'i-05ddf7f5dfa33f383', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSAPP05 imports executed")

#import GEN2RKSDMZ01 instance
print("Starting GEN2RKSDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSDMZ01"].aws_instance.this[0]', 'i-0721cc9c9c09dd1c4', var_file='terraform.tfvars', capture_output=False)

print("GEN2RKSDMZ01 imports executed")

#import gen2rkshana01 instance
print("Starting gen2rkshana01 Imports")
tf.cmd('state rm', 'module.app["gen2rkshana01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["gen2rkshana01"].aws_instance.this[0]', 'i-0f59f11e857544e4d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["gen2rkshana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2rkshana01"].aws_ebs_volume.this["sdb"]', 'vol-0051bcc14aba83d9c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["gen2rkshana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["gen2rkshana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0051bcc14aba83d9c:i-0f59f11e857544e4d', var_file='terraform.tfvars', capture_output=False)
print("gen2rkshana01 imports executed")

#import DRKS01BRK01 instance
print("Starting DRKS01BRK01 Imports")
tf.cmd('state rm', 'module.app["DRKS01BRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DRKS01BRK01"].aws_instance.this[0]', 'i-061f252ce1e7ed8a1', var_file='terraform.tfvars', capture_output=False)

print("DRKS01BRK01 imports executed")

#import GEN2RKSSQL01 instance
print("Starting GEN2RKSSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_instance.this[0]', 'i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0f652e988518a8490', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0f652e988518a8490:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdc"]', 'vol-09ec65f45e485e626', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-09ec65f45e485e626:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdd"]', 'vol-025e11f1736902344', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-025e11f1736902344:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sde"]', 'vol-0d0199121e678c552', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0d0199121e678c552:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0fafe96b1377170c0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0fafe96b1377170c0:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdg"]', 'vol-09fb95a5b285a2f1b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-09fb95a5b285a2f1b:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdh"]', 'vol-0e749ea1b015c518c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0e749ea1b015c518c:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0756fbca85d98811c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RKSSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0756fbca85d98811c:i-08f0fad0894626637', var_file='terraform.tfvars', capture_output=False)
print("GEN2RKSSQL01 imports executed")

#import drks01dcp01 instance
print("Starting drks01dcp01 Imports")
tf.cmd('state rm', 'module.app["drks01dcp01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["drks01dcp01"].aws_instance.this[0]', 'i-04933bf2c0f3f1a32', var_file='terraform.tfvars', capture_output=False)

print("drks01dcp01 imports executed")

#import DRKS01RDS05 instance
print("Starting DRKS01RDS05 Imports")
tf.cmd('state rm', 'module.app["DRKS01RDS05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DRKS01RDS05"].aws_instance.this[0]', 'i-0e1dc1957446adc25', var_file='terraform.tfvars', capture_output=False)

print("DRKS01RDS05 imports executed")

#import DRKS01RDS06 instance
print("Starting DRKS01RDS06 Imports")
tf.cmd('state rm', 'module.app["DRKS01RDS06"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DRKS01RDS06"].aws_instance.this[0]', 'i-0b752383ce6502347', var_file='terraform.tfvars', capture_output=False)

print("DRKS01RDS06 imports executed")


#End of command execution
print("Finished executing commands!")