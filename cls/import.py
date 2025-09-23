#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

# #import GEN2CLSUHM01 instance
# print("Starting GEN2CLSUHM01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUHM01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUHM01"].aws_instance.this[0]', 'i-08cc3a201cbbf33be', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2CLSUHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUHM01"].aws_ebs_volume.this["sdb"]', 'vol-0f474b79debb7ff40', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0f474b79debb7ff40:i-08cc3a201cbbf33be', var_file='terraform.tfvars', capture_output=False)
# print("GEN2CLSUHM01 imports executed")

# #import GEN2CLSUAPP01 instance
# print("Starting GEN2CLSUAPP01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUAPP01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUAPP01"].aws_instance.this[0]', 'i-0c9101276f3488154', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSUAPP01 imports executed")

# #import GEN2CLSUAPP02 instance
# print("Starting GEN2CLSUAPP02 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUAPP02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUAPP02"].aws_instance.this[0]', 'i-04e32b9915a5117f0', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSUAPP02 imports executed")

# #import GEN2CLSUAPP03 instance
# print("Starting GEN2CLSUAPP03 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUAPP03"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUAPP03"].aws_instance.this[0]', 'i-011cf28eb558c9091', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSUAPP03 imports executed")

# #import GEN2CLSUAPP04 instance
# print("Starting GEN2CLSUAPP04 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUAPP04"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUAPP04"].aws_instance.this[0]', 'i-03c1433545cf9bb40', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSUAPP04 imports executed")

# #import GEN2CLSUINT01 instance
# print("Starting GEN2CLSUINT01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUINT01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUINT01"].aws_instance.this[0]', 'i-0ef8a4b408754c7b9', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSUINT01 imports executed")

# #import GEN2CLSURDS01 instance
# print("Starting GEN2CLSURDS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSURDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSURDS01"].aws_instance.this[0]', 'i-048a024608e78fb5a', var_file='terraform.tfvars', capture_output=False)

# print("GEN2CLSURDS01 imports executed")

# #import GEN2CLSUSQL01 instance
# print("Starting GEN2CLSUSQL01 Imports")
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_instance.this[0]', 'i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0b90077e2ab4985e2', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b90077e2ab4985e2:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0164e6c3e3208971b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0164e6c3e3208971b:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0f967e1548ce65d95', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0f967e1548ce65d95:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sde"]', 'vol-066e09587c7fc9165', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-066e09587c7fc9165:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdf"]', 'vol-03e60297eb3a0022b', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-03e60297eb3a0022b:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0c63ce5a14546d1d3', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0c63ce5a14546d1d3:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_ebs_volume.this["sdh"]', 'vol-052d2f8990845f7ec', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
# tf.import_cmd('module.app["GEN2CLSUSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-052d2f8990845f7ec:i-02ef74afcdc06bb7f', var_file='terraform.tfvars', capture_output=False) 
# print("GEN2CLSUSQL01 imports executed")

# #import gen2clsuhana01 instance
# print("Starting gen2clsuhana01 Imports")
# tf.cmd('state rm', 'module.app["gen2clsuhana01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["gen2clsuhana01"].aws_instance.this[0]', 'i-0f40fe8726e18565c', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["gen2clsuhana01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["gen2clsuhana01"].aws_ebs_volume.this["sdb"]', 'vol-0ddcdab3a606f3ad4', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["gen2clsuhana01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["gen2clsuhana01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0ddcdab3a606f3ad4:i-0f40fe8726e18565c', var_file='terraform.tfvars', capture_output=False)
# print("gen2clsuhana01 imports executed")

# #End of command execution
# print("Finished executing commands!")
#!/usr/bin/python


#import GEN2CLSAPP01 instance
print("Starting GEN2CLSAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSAPP01"].aws_instance.this[0]', 'i-067fc014e1eeb6ad9', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSAPP01 imports executed")

#import GEN2CLSAPP02 instance
print("Starting GEN2CLSAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSAPP02"].aws_instance.this[0]', 'i-088c3a8ffb3690bd1', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSAPP02 imports executed")

#import GEN2CLSAPP03 instance
print("Starting GEN2CLSAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSAPP03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSAPP03"].aws_instance.this[0]', 'i-04e8198bdeadf0ca3', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSAPP03 imports executed")

#import GEN2CLSAPP04 instance
print("Starting GEN2CLSAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSAPP04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSAPP04"].aws_instance.this[0]', 'i-0f0961df7ad2564e1', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSAPP04 imports executed")

#import GEN2CLSAPP05 instance
print("Starting GEN2CLSAPP05 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSAPP05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSAPP05"].aws_instance.this[0]', 'i-00b1dcf73cf2384fb', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSAPP05 imports executed")

#import GEN2CLSHM01 instance
print("Starting GEN2CLSHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSHM01"].aws_instance.this[0]', 'i-0c96dc5c094290410', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CLSHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSHM01"].aws_ebs_volume.this["sdb"]', 'vol-0bbdcb6444d82ccf7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0bbdcb6444d82ccf7:i-0c96dc5c094290410', var_file='terraform.tfvars', capture_output=False)
print("GEN2CLSHM01 imports executed")

#import GEN2CLSINT01 instance
print("Starting GEN2CLSINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSINT01"].aws_instance.this[0]', 'i-0de91d66b7faee822', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSINT01 imports executed")

#import GEN2CLSRDS01 instance
print("Starting GEN2CLSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSRDS01"].aws_instance.this[0]', 'i-029220d0192828aba', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSRDS01 imports executed")

#import GEN2CLSSMTP01 instance
print("Starting GEN2CLSSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSMTP01"].aws_instance.this[0]', 'i-02e28e3f63ea38794', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSSMTP01 imports executed")

#import GEN2CLSSRS01 instance
print("Starting GEN2CLSSRS01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSSRS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSRS01"].aws_instance.this[0]', 'i-00769ea28bc98baa8', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSSRS01 imports executed")

#import GEN2CLSSQL01 instance
print("Starting GEN2CLSSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_instance.this[0]', 'i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0ff28f3379cfc1810', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0ff28f3379cfc1810:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdc"]', 'vol-03edac14329ac98b1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-03edac14329ac98b1:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdd"]', 'vol-04f1ab8c50b72fce2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-04f1ab8c50b72fce2:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sde"]', 'vol-0ac995142bc6b935a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0ac995142bc6b935a:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdf"]', 'vol-023611816d8a29bd6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-023611816d8a29bd6:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdg"]', 'vol-04ebeea281b5abf6d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-04ebeea281b5abf6d:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdh"]', 'vol-03864f15e5bfc6f8a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-03864f15e5bfc6f8a:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0c21ebb94d557cc46', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0c21ebb94d557cc46:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_ebs_volume.this["sdj"]', 'vol-072989e4e16d290fd', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdj"]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSSQL01"].aws_volume_attachment.this["sdj"]', '/dev/sdj:vol-072989e4e16d290fd:i-0442edd760e0b48b6', var_file='terraform.tfvars', capture_output=False)
print("GEN2CLSSQL01 imports executed")

#import GEN2CLSRDS02 instance
print("Starting GEN2CLSRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2CLSRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2CLSRDS02"].aws_instance.this[0]', 'i-04d4ed76e4162a5db', var_file='terraform.tfvars', capture_output=False)

print("GEN2CLSRDS02 imports executed")


#End of command execution
print("Finished executing commands!")