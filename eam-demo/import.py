#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

# #import GEN2EAMADFS01 instance
# print("Starting GEN2EAMADFS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMADFS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMADFS01"].aws_instance.this[0]', 'i-03472201ec3c44c06', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMADFS01 imports executed")

# #import GEN2EAMBRK01 instance
# print("Starting GEN2EAMBRK01 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMBRK01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMBRK01"].aws_instance.this[0]', 'i-01da9344259e01920', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMBRK01 imports executed")

# #import GEN2EAMDMZ01 instance
# print("Starting GEN2EAMDMZ01 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMDMZ01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMDMZ01"].aws_instance.this[0]', 'i-03b25ab23254f5beb', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMDMZ01 imports executed")

# #import GEN2EAMRDS01 instance
# print("Starting GEN2EAMRDS01 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMRDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMRDS01"].aws_instance.this[0]', 'i-049cecb22e43c1c6d', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMRDS01 imports executed")

# #import GEN2EAMDMZ02 instance
# print("Starting GEN2EAMDMZ02 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMDMZ02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMDMZ02"].aws_instance.this[0]', 'i-03ee23af71e082a0e', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMDMZ02 imports executed")

#import GEN2EAMDB01 instance
print("Starting GEN2EAMDB01 Imports")
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_instance.this[0]', 'i-0eb0d5b8901e7459a', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdb"]', 'vol-045e020955465cbbc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-045e020955465cbbc:i-0eb0d5b8901e7459a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdc"]', 'vol-05cabfa9b38dd6d3d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-05cabfa9b38dd6d3d:i-0eb0d5b8901e7459a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_ebs_volume.this["sdd"]', 'vol-0fd775aeade042833', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0fd775aeade042833:i-0eb0d5b8901e7459a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_ebs_volume.this["sde"]', 'vol-022e97b85d3eddbdc', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2EAMDB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2EAMDB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-022e97b85d3eddbdc:i-0eb0d5b8901e7459a', var_file='terraform.tfvars', capture_output=False)
print("GEN2EAMDB01 imports executed")

# #import GEN2EAMINFOR01 instance
# print("Starting GEN2EAMINFOR01 Imports")
# tf.cmd('state rm', 'module.app["GEN2EAMINFOR01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["GEN2EAMINFOR01"].aws_instance.this[0]', 'i-0040b1163d51f5d7c', var_file='terraform.tfvars', capture_output=False)

# print("GEN2EAMINFOR01 imports executed")


# #End of command execution
# print("Finished executing commands!")