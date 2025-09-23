#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import DAFM01HMP01 instance
print("Starting DAFM01HMP01 Imports")
tf.cmd('state rm', 'module.app["AFMOHHM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DAFM01HMP01"].aws_instance.this[0]', 'i-0f490f71bcee85a29', var_file='terraform.tfvars', capture_output=False)

print("DAFM01HMP01 imports executed")

#import DAFM01INTP01 instance
print("Starting DAFM01INTP01 Imports")
tf.cmd('state rm', 'module.app["AFMOHINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DAFM01INTP01"].aws_instance.this[0]', 'i-08accedc724c04974', var_file='terraform.tfvars', capture_output=False)

print("DAFM01INTP01 imports executed")

#import DAFM01INTP02 instance
print("Starting DAFM01INTP02 Imports")
tf.cmd('state rm', 'module.app["AFMOHINT02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DAFM01INTP02"].aws_instance.this[0]', 'i-02266fdaffc86b5ee', var_file='terraform.tfvars', capture_output=False)

print("DAFM01INTP02 imports executed")

#import DAFM01RDS01 instance
print("Starting DAFM01RDS01 Imports")
tf.cmd('state rm', 'module.app["AFMOHRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["DAFM01RDS01"].aws_instance.this[0]', 'i-00a83a6d1e621c6be', var_file='terraform.tfvars', capture_output=False)

print("DAFM01RDS01 imports executed")

#import DAFM01DCP01 instance
print("Starting DAFM01DCP01 Imports")
tf.cmd('state rm', 'module.domain_controller["AFMOHDC01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.domain_controller["DAFM01DCP01"].aws_instance.this[0]', 'i-06935df08bcae6a76', var_file='terraform.tfvars', capture_output=False)

print("DAFM01DCP01 imports executed")

#import DAFM01DCP02 instance
print("Starting DAFM01DCP02 Imports")
tf.cmd('state rm', 'module.domain_controller["AFMOHDC02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.domain_controller["DAFM01DCP02"].aws_instance.this[0]', 'i-00b2b27003f7d2828', var_file='terraform.tfvars', capture_output=False)

print("DAFM01DCP02 imports executed")

#import DAFM01HANAP01 instance
print("Starting DAFM01HANAP01 Imports")
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_instance.this[0]', 'i-06d190a11391e5c58', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_ebs_volume.this["sdb"]', 'vol-039732c153a41cb06', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-039732c153a41cb06:i-06d190a11391e5c58', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_ebs_volume.this["sdc"]', 'vol-062eadf3458ffff46', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-062eadf3458ffff46:i-06d190a11391e5c58', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_ebs_volume.this["sdd"]', 'vol-0df020eb29c185395', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0df020eb29c185395:i-06d190a11391e5c58', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_ebs_volume.this["sde"]', 'vol-033326e6dda414530', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.hana["AFMOHHANA01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.hana["DAFM01HANAP01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-033326e6dda414530:i-06d190a11391e5c58', var_file='terraform.tfvars', capture_output=False)
print("DAFM01HANAP01 imports executed")


#End of command execution
print("Finished executing commands!")