#!/usr/bin/python
#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2IDSAPPUAT01 instance
print("Starting GEN2IDSAPPUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSAPPUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSAPPUAT01"].aws_instance.this[0]', 'i-0a753a4f6b46c3196', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSAPPUAT01 imports executed")

#import GEN2IDSDMZ01 instance
print("Starting GEN2IDSDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSDMZ01"].aws_instance.this[0]', 'i-0de80076150332bb0', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSDMZ01 imports executed")

#import GEN2IDSDMZUAT01 instance
print("Starting GEN2IDSDMZUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSDMZUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSDMZUAT01"].aws_instance.this[0]', 'i-0563fbe15f6f86ea8', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSDMZUAT01 imports executed")

#import GEN2IDSRDS01 instance
print("Starting GEN2IDSRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSRDS01"].aws_instance.this[0]', 'i-04517825a2b0c4ba2', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSRDS01 imports executed")

#import GEN2IDSRDSUAT01 instance
print("Starting GEN2IDSRDSUAT01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSRDSUAT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSRDSUAT01"].aws_instance.this[0]', 'i-03c736c58dcb44c1e', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSRDSUAT01 imports executed")

#import GEN2MTSUNDB01 instance
print("Starting GEN2MTSUNDB01 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_instance.this[0]', 'i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdb"]', 'vol-03f764da5621eef4d', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-03f764da5621eef4d:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdc"]', 'vol-097f1fb3b30643379', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-097f1fb3b30643379:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdd"]', 'vol-0c584b0642d036d7c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0c584b0642d036d7c:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sde"]', 'vol-08e1162cdec9c1311', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-08e1162cdec9c1311:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdf"]', 'vol-07fe05947db591705', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-07fe05947db591705:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdg"]', 'vol-02e88db38151ab40c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-02e88db38151ab40c:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdh"]', 'vol-0863bd2c2e7ec4ff0', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdh"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdh"]', '/dev/sdh:vol-0863bd2c2e7ec4ff0:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_ebs_volume.this["sdi"]', 'vol-0ddd2b5be8a104dd8', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdi"]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDB01"].aws_volume_attachment.this["sdi"]', '/dev/sdi:vol-0ddd2b5be8a104dd8:i-0e1a2977919c0dd68', var_file='terraform.tfvars', capture_output=False)
print("GEN2MTSUNDB01 imports executed")

#import GEN2KMAPP01 instance
print("Starting GEN2KMAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2KMAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2KMAPP01"].aws_instance.this[0]', 'i-04f696d357db02805', var_file='terraform.tfvars', capture_output=False)

print("GEN2KMAPP01 imports executed")

#import GEN2KMRDS01 instance
print("Starting GEN2KMRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2KMRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2KMRDS01"].aws_instance.this[0]', 'i-091ea243b7c318499', var_file='terraform.tfvars', capture_output=False)

print("GEN2KMRDS01 imports executed")

#import GEN2MTSUNAPP02 instance
print("Starting GEN2MTSUNAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNAPP02"].aws_instance.this[0]', 'i-0c50dc5dfb03f03a2', var_file='terraform.tfvars', capture_output=False)

print("GEN2MTSUNAPP02 imports executed")

#import GEN2MTSUNAPP01 instance
print("Starting GEN2MTSUNAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNAPP01"].aws_instance.this[0]', 'i-07d7f178503d96053', var_file='terraform.tfvars', capture_output=False)

print("GEN2MTSUNAPP01 imports executed")

#import GEN2MTSUNDMZ01 instance
print("Starting GEN2MTSUNDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNDMZ01"].aws_instance.this[0]', 'i-008ae36fca41c323b', var_file='terraform.tfvars', capture_output=False)

print("GEN2MTSUNDMZ01 imports executed")

#import GEN2MTSUNRDS02 instance
print("Starting GEN2MTSUNRDS02 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNRDS02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNRDS02"].aws_instance.this[0]', 'i-0a5e3f1b3a032b94c', var_file='terraform.tfvars', capture_output=False)

print("GEN2MTSUNRDS02 imports executed")

#import GEN2IDSAPP01 instance
print("Starting GEN2IDSAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSAPP01"].aws_instance.this[0]', 'i-0d0fe71ed726d23ba', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSAPP01 imports executed")

#import GEN2MTSUNRDS01 instance
print("Starting GEN2MTSUNRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2MTSUNRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2MTSUNRDS01"].aws_instance.this[0]', 'i-0b5d69cf4e73f18d1', var_file='terraform.tfvars', capture_output=False)

print("GEN2MTSUNRDS01 imports executed")

#import GEN2IDSSMTP01 instance
print("Starting GEN2IDSSMTP01 Imports")
tf.cmd('state rm', 'module.app["GEN2IDSSMTP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2IDSSMTP01"].aws_instance.this[0]', 'i-03a6ace693635fe1d', var_file='terraform.tfvars', capture_output=False)

print("GEN2IDSSMTP01 imports executed")


#End of command execution
print("Finished executing commands!")