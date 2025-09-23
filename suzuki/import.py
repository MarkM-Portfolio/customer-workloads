#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2SZKAPP01 instance
print("Starting GEN2SZKAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP01"].aws_instance.this[0]', 'i-031c5e4c605ba26bd', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKAPP01 imports executed")

#import GEN2SZKAPP02 instance
print("Starting GEN2SZKAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP02"].aws_instance.this[0]', 'i-0dc0a111584358b01', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKAPP02 imports executed")

#import GEN2SZKHM01 instance
print("Starting GEN2SZKHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_instance.this[0]', 'i-0401946f5d7e244d9', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdb"]', 'vol-07631881a71b91800', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-07631881a71b91800:i-0401946f5d7e244d9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdc"]', 'vol-0a2a47213af699982', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0a2a47213af699982:i-0401946f5d7e244d9', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_ebs_volume.this["sdd"]', 'vol-0200c3432c6190b82', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0200c3432c6190b82:i-0401946f5d7e244d9', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKHM01 imports executed")

#import GEN2SZKAPP03 instance
print("Starting GEN2SZKAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKAPP03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP03"].aws_instance.this[0]', 'i-02689a28cabf9d47f', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKAPP03 imports executed")

#import GEN2SZKAPP04 instance
print("Starting GEN2SZKAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKAPP04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP04"].aws_instance.this[0]', 'i-0df29152c7c723f01', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKAPP04"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP04"].aws_ebs_volume.this["sdb"]', 'vol-0479a447525990bdb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKAPP04"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP04"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0479a447525990bdb:i-0df29152c7c723f01', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKAPP04 imports executed")

#import GEN2SZKAPP05 instance
print("Starting GEN2SZKAPP05 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKAPP05"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKAPP05"].aws_instance.this[0]', 'i-0c12e6bf368454a55', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKAPP05 imports executed")

#import GEN2SZKHM02 instance
print("Starting GEN2SZKHM02 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKHM02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHM02"].aws_instance.this[0]', 'i-00bf3535bee63ea91', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKHM02 imports executed")

#import GEN2SZKRDS01 instance
print("Starting GEN2SZKRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKRDS01"].aws_instance.this[0]', 'i-07732b8f14c383296', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKRDS01 imports executed")

#import GEN2SZKSMTP01 instance
print("Starting GEN2SZKSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSMTP01"].aws_instance.this[0]', 'i-094489cf1c7b828a2', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKSMTP01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSMTP01"].aws_ebs_volume.this["sdb"]', 'vol-0552262c87734dae2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSMTP01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSMTP01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0552262c87734dae2:i-094489cf1c7b828a2', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKSMTP01 imports executed")

#import GEN2SZKSQL01 instance
print("Starting GEN2SZKSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_instance.this[0]', 'i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0537bde7a25f21c60', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0537bde7a25f21c60:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdc"]', 'vol-01824fce1d3ec941d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-01824fce1d3ec941d:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0832a0d0f81670d15', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0832a0d0f81670d15:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sde"]', 'vol-03859d1368c4594e3', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-03859d1368c4594e3:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0510ade5d94acc83b', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0510ade5d94acc83b:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdg"]', 'vol-06561976285c83a14', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-06561976285c83a14:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdh"]', 'vol-09d035df6a1865003', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-09d035df6a1865003:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_ebs_volume.this["sdi"]', 'vol-0c5ab6981cf238981', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKSQL01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0c5ab6981cf238981:i-0eed0fc51dce9a907', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKSQL01 imports executed")

#import GEN2SZKUAPP01 instance
print("Starting GEN2SZKUAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP01"].aws_instance.this[0]', 'i-092ba177e2bfbfe4d', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKUAPP01 imports executed")

#import GEN2SZKUAPP02 instance
print("Starting GEN2SZKUAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP02"].aws_instance.this[0]', 'i-062ab3685852496b1', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKUAPP02 imports executed")

#import GEN2SZKUAPP03 instance
print("Starting GEN2SZKUAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUAPP03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP03"].aws_instance.this[0]', 'i-0d61176c33d171912', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKUAPP03 imports executed")

#import GEN2SZKUAPP04 instance
print("Starting GEN2SZKUAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUAPP04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP04"].aws_instance.this[0]', 'i-034bed8230c4470d2', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKUAPP04"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP04"].aws_ebs_volume.this["sdb"]', 'vol-01c3dab2d136d972e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUAPP04"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUAPP04"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-01c3dab2d136d972e:i-034bed8230c4470d2', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKUAPP04 imports executed")

#import GEN2SZKUHM01 instance
print("Starting GEN2SZKUHM01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHM01"].aws_instance.this[0]', 'i-0b3dc54a95f058047', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKUHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHM01"].aws_ebs_volume.this["sdb"]', 'vol-0c42f1ce9dae1cb3d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c42f1ce9dae1cb3d:i-0b3dc54a95f058047', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHM01"].aws_ebs_volume.this["sdc"]', 'vol-0d8f1f0a9777fb5c7', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0d8f1f0a9777fb5c7:i-0b3dc54a95f058047', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKUHM01 imports executed")

#import GEN2SZKUSQL01 instance
print("Starting GEN2SZKUSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_instance.this[0]', 'i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdb"]', 'vol-061dbdcf415bcbcad', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-061dbdcf415bcbcad:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdc"]', 'vol-07a1c12d21437ccc1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-07a1c12d21437ccc1:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdd"]', 'vol-004e2d3b83f8cd3df', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-004e2d3b83f8cd3df:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sde"]', 'vol-00b042d91abbc7c6d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-00b042d91abbc7c6d:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdf"]', 'vol-02596ecf544cdbc06', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-02596ecf544cdbc06:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_ebs_volume.this["sdg"]', 'vol-02dd5c0575a2f3fa2', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-02dd5c0575a2f3fa2:i-00cb9e45289d710fa', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKUSQL01 imports executed")

#import GEN2SZKURDS01 instance
print("Starting GEN2SZKURDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKURDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKURDS01"].aws_instance.this[0]', 'i-0d740b60474711097', var_file='terraform.tfvars', capture_output=False)

print("GEN2SZKURDS01 imports executed")

#import GEN2SZKHANADB01 instance
print("Starting GEN2SZKHANADB01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKHANADB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHANADB01"].aws_instance.this[0]', 'i-0b8b0a0d1aaebdcf4', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKHANADB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHANADB01"].aws_ebs_volume.this["sdb"]', 'vol-01729733a5d42bd7d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKHANADB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKHANADB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-01729733a5d42bd7d:i-0b8b0a0d1aaebdcf4', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKHANADB01 imports executed")

#import GEN2SZKUHANADB01 instance
print("Starting GEN2SZKUHANADB01 Imports")
tf.cmd('state rm', 'module.app["GEN2SZKUHANADB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHANADB01"].aws_instance.this[0]', 'i-01ff367b00d2b4530', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SZKUHANADB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHANADB01"].aws_ebs_volume.this["sdb"]', 'vol-09d8bf27d037a2e15', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SZKUHANADB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SZKUHANADB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-09d8bf27d037a2e15:i-01ff367b00d2b4530', var_file='terraform.tfvars', capture_output=False)
print("GEN2SZKUHANADB01 imports executed")


#End of command execution
print("Finished executing commands!")