#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

#import EU41ACCUAT01 instance
print("Starting EU41ACCUAT01 Imports")
tf.cmd('state rm', 'module.app["EU41ACCUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41ACCUAT01"].aws_instance.this[0]', 'i-0b11a3792f22f4c4f', var_file='terraform.tfvars', capture_output=False)

print("EU41ACCUAT01 imports executed")

#import EU41DBPROD01 instance
print("Starting EU41DBPROD01 Imports")
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_instance.this[0]', 'i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sdb"]', 'vol-06c39a2eca0084215', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-06c39a2eca0084215:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sdc"]', 'vol-0da4d28ff9c6dfdc6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0da4d28ff9c6dfdc6:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sdd"]', 'vol-0d0b38947b617d460', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0d0b38947b617d460:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sde"]', 'vol-0fb60e373a3c838a7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0fb60e373a3c838a7:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sdf"]', 'vol-00277cd27a6e5ae8a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-00277cd27a6e5ae8a:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_ebs_volume.this["sdg"]', 'vol-036903d8fed27c7c3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBPROD01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU41DBPROD01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-036903d8fed27c7c3:i-04101e1fdb8bf0cd2', var_file='terraform.tfvars', capture_output=False)
print("EU41DBPROD01 imports executed")

#import EU41ACCPROD01 instance
print("Starting EU41ACCPROD01 Imports")
tf.cmd('state rm', 'module.app["EU41ACCPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41ACCPROD01"].aws_instance.this[0]', 'i-097069239e32811a7', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41ACCPROD01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41ACCPROD01"].aws_ebs_volume.this["sdb"]', 'vol-0584f3fe30293947c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41ACCPROD01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41ACCPROD01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0584f3fe30293947c:i-097069239e32811a7', var_file='terraform.tfvars', capture_output=False)
print("EU41ACCPROD01 imports executed")

#import EU41DBUAT01 instance
print("Starting EU41DBUAT01 Imports")
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_instance.this[0]', 'i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sdb"]', 'vol-0689cb9af2e39eaf7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0689cb9af2e39eaf7:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sdc"]', 'vol-0107827f44095f7d5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0107827f44095f7d5:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sdd"]', 'vol-00f2f9c1e698dcba8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-00f2f9c1e698dcba8:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sde"]', 'vol-0db70198c96ec300d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0db70198c96ec300d:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sdf"]', 'vol-019526b9e3ed4b636', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-019526b9e3ed4b636:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_ebs_volume.this["sdg"]', 'vol-0a56ad8b819037d37', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41DBUAT01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["EU41DBUAT01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0a56ad8b819037d37:i-0aa61a4d954a53749', var_file='terraform.tfvars', capture_output=False)
print("EU41DBUAT01 imports executed")

#import EU41DMZPROD01 instance
print("Starting EU41DMZPROD01 Imports")
tf.cmd('state rm', 'module.app["EU41DMZPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41DMZPROD01"].aws_instance.this[0]', 'i-0890c9b64935c37d7', var_file='terraform.tfvars', capture_output=False)

print("EU41DMZPROD01 imports executed")

#import EU41DMZUAT01 instance
print("Starting EU41DMZUAT01 Imports")
tf.cmd('state rm', 'module.app["EU41DMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41DMZUAT01"].aws_instance.this[0]', 'i-0d1cf329cf2d12273', var_file='terraform.tfvars', capture_output=False)

print("EU41DMZUAT01 imports executed")

#import EU41HWINPROD01 instance
print("Starting EU41HWINPROD01 Imports")
tf.cmd('state rm', 'module.app["EU41HWINPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD01"].aws_instance.this[0]', 'i-055969e2796fc4a9a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41HWINPROD01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD01"].aws_ebs_volume.this["sdb"]', 'vol-0b80c1fea6b298439', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41HWINPROD01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b80c1fea6b298439:i-055969e2796fc4a9a', var_file='terraform.tfvars', capture_output=False)
print("EU41HWINPROD01 imports executed")

#import EU41HWINPROD02 instance
print("Starting EU41HWINPROD02 Imports")
tf.cmd('state rm', 'module.app["EU41HWINPROD02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD02"].aws_instance.this[0]', 'i-0740da8daf98cd7d1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41HWINPROD02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD02"].aws_ebs_volume.this["sdb"]', 'vol-057db3e232daa542b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41HWINPROD02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-057db3e232daa542b:i-0740da8daf98cd7d1', var_file='terraform.tfvars', capture_output=False)
print("EU41HWINPROD02 imports executed")

#import EU41HWINPROD03 instance
print("Starting EU41HWINPROD03 Imports")
tf.cmd('state rm', 'module.app["EU41HWINPROD03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD03"].aws_instance.this[0]', 'i-0a430521615c9240c', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["EU41HWINPROD03"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD03"].aws_ebs_volume.this["sdb"]', 'vol-06be66d8ea72d3172', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["EU41HWINPROD03"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["EU41HWINPROD03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-06be66d8ea72d3172:i-0a430521615c9240c', var_file='terraform.tfvars', capture_output=False)
print("EU41HWINPROD03 imports executed")

#import EU41RDSPROD01 instance
print("Starting EU41RDSPROD01 Imports")
tf.cmd('state rm', 'module.app["EU41RDSPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41RDSPROD01"].aws_instance.this[0]', 'i-0c774aea387cefd59', var_file='terraform.tfvars', capture_output=False)

print("EU41RDSPROD01 imports executed")

#import EU41RDSPROD02 instance
print("Starting EU41RDSPROD02 Imports")
tf.cmd('state rm', 'module.app["EU41RDSPROD02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41RDSPROD02"].aws_instance.this[0]', 'i-0b0f5c72e24441638', var_file='terraform.tfvars', capture_output=False)

print("EU41RDSPROD02 imports executed")

#import EU41HWINUAT01 instance
print("Starting EU41HWINUAT01 Imports")
tf.cmd('state rm', 'module.app["EU41HWINUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41HWINUAT01"].aws_instance.this[0]', 'i-04635865511697da7', var_file='terraform.tfvars', capture_output=False)

print("EU41HWINUAT01 imports executed")

#import EU41RDSUAT01 instance
print("Starting EU41RDSUAT01 Imports")
tf.cmd('state rm', 'module.app["EU41RDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41RDSUAT01"].aws_instance.this[0]', 'i-080aa72adac60e993', var_file='terraform.tfvars', capture_output=False)

print("EU41RDSUAT01 imports executed")

#import EU41RDSPROD03 instance
print("Starting EU41RDSPROD03 Imports")
tf.cmd('state rm', 'module.app["EU41RDSPROD03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["EU41RDSPROD03"].aws_instance.this[0]', 'i-01852d9cbf3f2c0b1', var_file='terraform.tfvars', capture_output=False)

print("EU41RDSPROD03 imports executed")


#End of command execution
print("Finished executing commands!")