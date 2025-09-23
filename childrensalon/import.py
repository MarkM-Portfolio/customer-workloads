#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import BHX2CSDMZPROD01 instance
print("Starting BHX2CSDMZPROD01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSDMZPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSDMZPROD01"].aws_instance.this[0]', 'i-09519614e11860c37', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSDMZPROD01 imports executed")

#import BHX2CSBRK01 instance
print("Starting BHX2CSBRK01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSBRK01"].aws_instance.this[0]', 'i-0323fcc81e1541da9', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSBRK01 imports executed")

#import BHX2CSHMUAT01 instance
print("Starting BHX2CSHMUAT01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSHMUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMUAT01"].aws_instance.this[0]', 'i-0870db212eb679040', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2CSHMUAT01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMUAT01"].aws_ebs_volume.this["sdb"]', 'vol-0c02f7a18a5a50a41', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CSHMUAT01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMUAT01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c02f7a18a5a50a41:i-0870db212eb679040', var_file='terraform.tfvars', capture_output=False)
print("BHX2CSHMUAT01 imports executed")

#import BHX2CSDMZUAT01 instance
print("Starting BHX2CSDMZUAT01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSDMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSDMZUAT01"].aws_instance.this[0]', 'i-00f11218c7a0502a6', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSDMZUAT01 imports executed")

#import BHX2CSDMZPROD02 instance
print("Starting BHX2CSDMZPROD02 Imports")
tf.cmd('state rm', 'module.app["BHX2CSDMZPROD02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSDMZPROD02"].aws_instance.this[0]', 'i-07ad556e69928715c', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSDMZPROD02 imports executed")

#import BHX2CSRDSUAT01 instance
print("Starting BHX2CSRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSRDSUAT01"].aws_instance.this[0]', 'i-04b6dd18e10ab7446', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSRDSUAT01 imports executed")

#import BHX2CSHMPROD01 instance
print("Starting BHX2CSHMPROD01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSHMPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMPROD01"].aws_instance.this[0]', 'i-0b7d94f5a8a5d7266', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2CSHMPROD01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMPROD01"].aws_ebs_volume.this["sdb"]', 'vol-0a1aacc479bfacaeb', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CSHMPROD01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CSHMPROD01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a1aacc479bfacaeb:i-0b7d94f5a8a5d7266', var_file='terraform.tfvars', capture_output=False)
print("BHX2CSHMPROD01 imports executed")

#import BHX2CSRDSPROD01 instance
print("Starting BHX2CSRDSPROD01 Imports")
tf.cmd('state rm', 'module.app["BHX2CSRDSPROD01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSRDSPROD01"].aws_instance.this[0]', 'i-065dd9e5cda12940d', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSRDSPROD01 imports executed")

#import BHX2CSRDSPROD02 instance
print("Starting BHX2CSRDSPROD02 Imports")
tf.cmd('state rm', 'module.app["BHX2CSRDSPROD02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CSRDSPROD02"].aws_instance.this[0]', 'i-00b8858823ae383c2', var_file='terraform.tfvars', capture_output=False)

print("BHX2CSRDSPROD02 imports executed")

#import bhx2cshanauat01 instance
print("Starting bhx2cshanauat01 Imports")
tf.cmd('state rm', 'module.app["bhx2cshanauat01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanauat01"].aws_instance.this[0]', 'i-011b34b311f40e446', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["bhx2cshanauat01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanauat01"].aws_ebs_volume.this["sdb"]', 'vol-0737a260609c5ad3f', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["bhx2cshanauat01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanauat01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0737a260609c5ad3f:i-011b34b311f40e446', var_file='terraform.tfvars', capture_output=False)
print("bhx2cshanauat01 imports executed")

#import bhx2cshanaprod01 instance
print("Starting bhx2cshanaprod01 Imports")
tf.cmd('state rm', 'module.app["bhx2cshanaprod01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanaprod01"].aws_instance.this[0]', 'i-0670e68b85027e9f6', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["bhx2cshanaprod01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanaprod01"].aws_ebs_volume.this["sdb"]', 'vol-0a8bc9a285349eb04', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["bhx2cshanaprod01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["bhx2cshanaprod01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0a8bc9a285349eb04:i-0670e68b85027e9f6', var_file='terraform.tfvars', capture_output=False)
print("bhx2cshanaprod01 imports executed")


#End of command execution
print("Finished executing commands!")