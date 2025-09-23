#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2RSIOST01 instance
print("Starting GEN2RSIOST01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSIOST01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSIOST01"].aws_instance.this[0]', 'i-0dd4c12184e23927c', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSIOST01 imports executed")

#import GEN2RSKONT01 instance
print("Starting GEN2RSKONT01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSKONT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSKONT01"].aws_instance.this[0]', 'i-053034e82f1c1865b', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RSKONT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSKONT01"].aws_ebs_volume.this["sdb"]', 'vol-04993fa3ea6691b51', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSKONT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSKONT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-04993fa3ea6691b51:i-053034e82f1c1865b', var_file='terraform.tfvars', capture_output=False)
print("GEN2RSKONT01 imports executed")

#import GEN2RSRDST01 instance
print("Starting GEN2RSRDST01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSRDST01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSRDST01"].aws_instance.this[0]', 'i-0631f1f2adba627a3', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSRDST01 imports executed")

#import GEN2RSSQLT01 instance
print("Starting GEN2RSSQLT01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_instance.this[0]', 'i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdb"]', 'vol-095f0cc3cac88b3e2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-095f0cc3cac88b3e2:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdc"]', 'vol-0e9c361dc334fc61e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0e9c361dc334fc61e:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdd"]', 'vol-0b71e344b02a9fd49', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0b71e344b02a9fd49:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sde"]', 'vol-0a4c46b145e687808', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0a4c46b145e687808:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdf"]', 'vol-0702cc4b2cadad0e0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0702cc4b2cadad0e0:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_ebs_volume.this["sdg"]', 'vol-0fe13f12d26ef0e36', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQLT01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0fe13f12d26ef0e36:i-0c10ce999ad6b7f81', var_file='terraform.tfvars', capture_output=False)
print("GEN2RSSQLT01 imports executed")

#import GEN2RSTM1T01 instance
print("Starting GEN2RSTM1T01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSTM1T01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSTM1T01"].aws_instance.this[0]', 'i-0f50b859ad127eb9d', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSTM1T01 imports executed")

#import GEN2RSBRKT01 instance
print("Starting GEN2RSBRKT01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSBRKT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSBRKT01"].aws_instance.this[0]', 'i-0b7904aeda5b525a9', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSBRKT01 imports executed")

#import GEN2RSIOS01 instance
print("Starting GEN2RSIOS01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSIOS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSIOS01"].aws_instance.this[0]', 'i-0e6d75e212c496458', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSIOS01 imports executed")

#import GEN2RSADFS01 instance
print("Starting GEN2RSADFS01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSADFS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSADFS01"].aws_instance.this[0]', 'i-0044aa7e413327c02', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSADFS01 imports executed")

#import GEN2RSBRK01 instance
print("Starting GEN2RSBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSBRK01"].aws_instance.this[0]', 'i-0b1c65e286d1c6f11', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSBRK01 imports executed")

#import GEN2RSKON01 instance
print("Starting GEN2RSKON01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSKON01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSKON01"].aws_instance.this[0]', 'i-0796885e411cd2460', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSKON01 imports executed")

#import GEN2RSKON02 instance
print("Starting GEN2RSKON02 Imports")
tf.cmd('state rm', 'module.app["GEN2RSKON02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSKON02"].aws_instance.this[0]', 'i-0bec07fbbddd3624e', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSKON02 imports executed")

#import GEN2RSRDS03 instance
print("Starting GEN2RSRDS03 Imports")
tf.cmd('state rm', 'module.app["GEN2RSRDS03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSRDS03"].aws_instance.this[0]', 'i-0b0c693abd3dffcd7', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSRDS03 imports executed")

#import GEN2RSTM101 instance
print("Starting GEN2RSTM101 Imports")
tf.cmd('state rm', 'module.app["GEN2RSTM101"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSTM101"].aws_instance.this[0]', 'i-0832c2f2257071322', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSTM101 imports executed")

#import GEN2RSRDS01 instance
print("Starting GEN2RSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSRDS01"].aws_instance.this[0]', 'i-0cc4e6305b0ba7414', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSRDS01 imports executed")

#import GEN2RSSQL02 instance
print("Starting GEN2RSSQL02 Imports")
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_instance.this[0]', 'i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdb"]', 'vol-048bfe1bfcebe03b2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-048bfe1bfcebe03b2:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdc"]', 'vol-0eb080804e165a89e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0eb080804e165a89e:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdd"]', 'vol-0196db7a2ae2cfac7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0196db7a2ae2cfac7:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sde"]', 'vol-054bd1d37f6d1efb5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-054bd1d37f6d1efb5:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdf"]', 'vol-0fe494f6b51d57648', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0fe494f6b51d57648:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdg"]', 'vol-06040281d1d90dfeb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-06040281d1d90dfeb:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdh"]', 'vol-017da563214a9ed72', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-017da563214a9ed72:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdi"]', 'vol-0911638f77c2d256f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0911638f77c2d256f:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_ebs_volume.this["sdj"]', 'vol-04c230fbc80c4c7d7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL02"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-04c230fbc80c4c7d7:i-06e75436b4c0665f6', var_file='terraform.tfvars', capture_output=False)
print("GEN2RSSQL02 imports executed")

#import GEN2RSRDS02 instance
print("Starting GEN2RSRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2RSRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSRDS02"].aws_instance.this[0]', 'i-02085886156b5c129', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSRDS02 imports executed")

#import GEN2RSSQL01 instance
print("Starting GEN2RSSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_instance.this[0]', 'i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdb"]', 'vol-04306295a366a1c52', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-04306295a366a1c52:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0ac01ffbc66f6b8e5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0ac01ffbc66f6b8e5:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdd"]', 'vol-078712206bf4d8bfb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-078712206bf4d8bfb:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sde"]', 'vol-02f50c170aceda177', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-02f50c170aceda177:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdf"]', 'vol-08ddc0aceba3b903e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-08ddc0aceba3b903e:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdg"]', 'vol-077b87a6a4bf3a24f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-077b87a6a4bf3a24f:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdh"]', 'vol-047c3f8e873ce2aaa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-047c3f8e873ce2aaa:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0e12a9da3d9e7b8a8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0e12a9da3d9e7b8a8:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_ebs_volume.this["sdj"]', 'vol-0304519e3a08268e7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-0304519e3a08268e7:i-06ff42a7db0b800c1', var_file='terraform.tfvars', capture_output=False)
print("GEN2RSSQL01 imports executed")

#import GEN2RSSUN01 instance
print("Starting GEN2RSSUN01 Imports")
tf.cmd('state rm', 'module.app["GEN2RSSUN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2RSSUN01"].aws_instance.this[0]', 'i-09f823413bc27781a', var_file='terraform.tfvars', capture_output=False)

print("GEN2RSSUN01 imports executed")


#End of command execution
print("Finished executing commands!")