#!/usr/bin/python
<<<<<<< HEAD
from python_terraform import * 
=======
from python_terraform import *
>>>>>>> main

tf = Terraform(working_dir='.')

#import GEN2MCAPP01 instance
print("Starting GEN2MCAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2MCAPP01"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCAPP01"].aws_instance.this[0]', 'i-0ba5deb94c5defe8c', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCAPP01"].aws_instance.this[0]', 'i-0a946170144286bd2', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCAPP01 imports executed")

#import GEN2MCAPP02 instance
print("Starting GEN2MCAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2MCAPP02"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCAPP02"].aws_instance.this[0]', 'i-08bedc85ce3d1a5fe', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCAPP02"].aws_instance.this[0]', 'i-08addf8276bb039c8', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCAPP02 imports executed")

#import GEN2MCAPP03 instance
print("Starting GEN2MCAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2MCAPP03"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCAPP03"].aws_instance.this[0]', 'i-07efabe410b0af3b4', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCAPP03"].aws_instance.this[0]', 'i-048e512fa63cdd41c', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCAPP03 imports executed")

#import GEN2MCAPP04 instance
print("Starting GEN2MCAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2MCAPP04"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCAPP04"].aws_instance.this[0]', 'i-0be78a25165628874', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCAPP04"].aws_instance.this[0]', 'i-025932a1e0ac3a8a3', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCAPP04 imports executed")

#import GEN2MCAPP05 instance
print("Starting GEN2MCAPP05 Imports")
tf.cmd('state rm', 'module.app["GEN2MCAPP05"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCAPP05"].aws_instance.this[0]', 'i-0ceb2d7179fe9c090', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCAPP05"].aws_instance.this[0]', 'i-0794f631f102ad73c', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCAPP05 imports executed")

#import GEN2MCDMZ01 instance
print("Starting GEN2MCDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2MCDMZ01"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCDMZ01"].aws_instance.this[0]', 'i-0222976e2e443707a', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCDMZ01"].aws_instance.this[0]', 'i-0fe328037bee0a7f0', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCDMZ01 imports executed")

#import GEN2MCHM01 instance
print("Starting GEN2MCHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCHM01"].aws_instance.this[0]', 'i-045536582ce2ab779', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]', 'vol-09ebc2d5631365f96', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-09ebc2d5631365f96:i-045536582ce2ab779', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]', 'vol-067be8077552da40d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-067be8077552da40d:i-045536582ce2ab779', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]', 'vol-0533750b272b35b4b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0533750b272b35b4b:i-045536582ce2ab779', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCHM01"].aws_instance.this[0]', 'i-0cb8a674f31a5d62e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdb"]', 'vol-0fbb93cee309b1dad', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0fbb93cee309b1dad:i-0cb8a674f31a5d62e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdc"]', 'vol-02b7ec633ea8967a2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-02b7ec633ea8967a2:i-0cb8a674f31a5d62e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_ebs_volume.this["sdd"]', 'vol-0fe3539cac4e61487', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0fe3539cac4e61487:i-0cb8a674f31a5d62e', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main
print("GEN2MCHM01 imports executed")

#import GEN2MCRDS01 instance
print("Starting GEN2MCRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2MCRDS01"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCRDS01"].aws_instance.this[0]', 'i-0148c5aeb6190e7ae', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCRDS01"].aws_instance.this[0]', 'i-0e28d609620515a0b', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCRDS01 imports executed")

#import GEN2MCRDS02 instance
print("Starting GEN2MCRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2MCRDS02"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCRDS02"].aws_instance.this[0]', 'i-01937707fbe67c733', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCRDS02"].aws_instance.this[0]', 'i-03c31e29720c31626', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCRDS02 imports executed")

#import GEN2MCDMZ02 instance
print("Starting GEN2MCDMZ02 Imports")
tf.cmd('state rm', 'module.app["GEN2MCDMZ02"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCDMZ02"].aws_instance.this[0]', 'i-0debfa06af2ed3a19', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCDMZ02"].aws_instance.this[0]', 'i-04eab8580329e2e3f', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main

print("GEN2MCDMZ02 imports executed")

#import GEN2MCSQL01 instance
print("Starting GEN2MCSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_instance.this[0]', capture_output=False)
<<<<<<< HEAD
tf.import_cmd('module.app["GEN2MCSQL01"].aws_instance.this[0]', 'i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0b84589e79b0fa534', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b84589e79b0fa534:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdc"]', 'vol-06d9a68499daa65ba', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-06d9a68499daa65ba:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0d2c9010fba0822d1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d2c9010fba0822d1:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sde"]', 'vol-039d1c8697391bd7f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-039d1c8697391bd7f:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdf"]', 'vol-00bb2ce5c41beaa46', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-00bb2ce5c41beaa46:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0d8c047621901b30c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0d8c047621901b30c:i-0ad1f359bf4c57b9f', var_file='terraform.tfvars', capture_output=False)
=======
tf.import_cmd('module.app["GEN2MCSQL01"].aws_instance.this[0]', 'i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0b0b048e5dbf3b995', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b0b048e5dbf3b995:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdc"]', 'vol-06aa915a4aa2dde5a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-06aa915a4aa2dde5a:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdd"]', 'vol-054365ce40e1d8ede', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-054365ce40e1d8ede:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sde"]', 'vol-087fbfb800f5bc025', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-087fbfb800f5bc025:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdf"]', 'vol-056c230ff507325db', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-056c230ff507325db:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0370abb838d08097f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MCSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0370abb838d08097f:i-04735ae6e7eea07e8', var_file='terraform.tfvars', capture_output=False)
>>>>>>> main
print("GEN2MCSQL01 imports executed")


#End of command execution
print("Finished executing commands!")