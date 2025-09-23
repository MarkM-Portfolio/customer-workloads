# #!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

# #import GEN2APPSRDS01 instance
# # print("Starting GEN2APPSRDS01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2APPSRDS01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSRDS01"].aws_instance.this[0]', 'i-01b2e543784b16568', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2APPSRDS01 imports executed")

# # #import GEN2APPSHM01 instance
# # print("Starting GEN2APPSHM01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_instance.this[0]', 'i-05fd0bc1f9aa08e66', var_file='terraform.tfvars', capture_output=False)

# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdb"]', 'vol-0e89f379397e4e540', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0e89f379397e4e540:i-05fd0bc1f9aa08e66', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdc"]', 'vol-044a496734a2ee295', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-044a496734a2ee295:i-05fd0bc1f9aa08e66', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_ebs_volume.this["sdd"]', 'vol-0cabd2b5556011f1f', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSHM01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0cabd2b5556011f1f:i-05fd0bc1f9aa08e66', var_file='terraform.tfvars', capture_output=False)
# # print("GEN2APPSHM01 imports executed")

# # #import GEN2GISBRK01 instance
# # print("Starting GEN2GISBRK01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2GISBRK01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISBRK01"].aws_instance.this[0]', 'i-0a2a159e2ccc73e20', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2GISBRK01 imports executed")

# # #import GEN2GISRDS01 instance
# # print("Starting GEN2GISRDS01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2GISRDS01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISRDS01"].aws_instance.this[0]', 'i-0a502641d6ad61526', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2GISRDS01 imports executed")

# # #import GEN2GISSQL01 instance
# # print("Starting GEN2GISSQL01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2GISSQL01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISSQL01"].aws_instance.this[0]', 'i-0d063c99fa86652e3', var_file='terraform.tfvars', capture_output=False)

# # tf.cmd('state rm', 'module.hana["GEN2GISSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISSQL01"].aws_ebs_volume.this["sdb"]', 'vol-037f12f2890b0cfff', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2GISSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-037f12f2890b0cfff:i-0d063c99fa86652e3', var_file='terraform.tfvars', capture_output=False)
# # print("GEN2GISSQL01 imports executed")

# # #import GEN2TECHBRK01 instance
# # print("Starting GEN2TECHBRK01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHBRK01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHBRK01"].aws_instance.this[0]', 'i-067acb7368036ba8c', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2TECHBRK01 imports executed")

# # #import GEN2TECHIOS01 instance
# # print("Starting GEN2TECHIOS01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHIOS01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHIOS01"].aws_instance.this[0]', 'i-06d46b2239143e7e7', var_file='terraform.tfvars', capture_output=False)

# # tf.cmd('state rm', 'module.hana["GEN2TECHIOS01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHIOS01"].aws_ebs_volume.this["sdb"]', 'vol-0c74af050fc5f78bb', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2TECHIOS01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHIOS01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0c74af050fc5f78bb:i-06d46b2239143e7e7', var_file='terraform.tfvars', capture_output=False)
# # print("GEN2TECHIOS01 imports executed")

# # #import GEN2TECHRDS01 instance
# # print("Starting GEN2TECHRDS01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHRDS01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHRDS01"].aws_instance.this[0]', 'i-01f879e1ec15c8f6b', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2TECHRDS01 imports executed")

# # #import GEN2TECHADFS01 instance
# # print("Starting GEN2TECHADFS01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHADFS01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHADFS01"].aws_instance.this[0]', 'i-05f91c83cc06bda2a', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2TECHADFS01 imports executed")

# # #import GEN2TECHDC01 instance
# # print("Starting GEN2TECHDC01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHDC01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHDC01"].aws_instance.this[0]', 'i-0ff9d94594c58f152', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2TECHDC01 imports executed")

# # #import GEN2TECHSQL01 instance
# # print("Starting GEN2TECHSQL01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHSQL01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHSQL01"].aws_instance.this[0]', 'i-0599011d1bcd38aac', var_file='terraform.tfvars', capture_output=False)

# # tf.cmd('state rm', 'module.hana["GEN2TECHSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHSQL01"].aws_ebs_volume.this["sdb"]', 'vol-081c23e7c4fcc27e1', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["GEN2TECHSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-081c23e7c4fcc27e1:i-0599011d1bcd38aac', var_file='terraform.tfvars', capture_output=False)
# # print("GEN2TECHSQL01 imports executed")

# # #import GEN2TECHSUN01 instance
# # print("Starting GEN2TECHSUN01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2TECHSUN01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2TECHSUN01"].aws_instance.this[0]', 'i-01b4dc4cf8685251a', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2TECHSUN01 imports executed")

# # #import GEN2APPSDC01 instance
# # print("Starting GEN2APPSDC01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2APPSDC01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2APPSDC01"].aws_instance.this[0]', 'i-0c91715db4b4ecef5', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2APPSDC01 imports executed")

# # #import gen2giseam01 instance
# # print("Starting gen2giseam01 Imports")
# # tf.cmd('state rm', 'module.hana["gen2giseam01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["gen2giseam01"].aws_instance.this[0]', 'i-03a9a400e75be20d1', var_file='terraform.tfvars', capture_output=False)

# # print("gen2giseam01 imports executed")

# # #import GEN2GISDC01 instance
# # print("Starting GEN2GISDC01 Imports")
# # tf.cmd('state rm', 'module.hana["GEN2GISDC01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["GEN2GISDC01"].aws_instance.this[0]', 'i-0119ad9ad3f8303bc', var_file='terraform.tfvars', capture_output=False)

# # print("GEN2GISDC01 imports executed")

# #import DAPPS01HANAP01 instance
# # print("Starting DAPPS01HANAP01 Imports")
# # tf.cmd('state rm', 'module.hana["DAPPS01HANAP01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["DAPPS01HANAP01"].aws_instance.this[0]', 'i-0bdb18c98e5c6a154', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["DAPPS01HANAP01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["DAPPS01HANAP01"].aws_ebs_volume.this["sdb"]', 'vol-0908a068b2d5dcc1d', var_file='terraform.tfvars', capture_output=False)
# # print("DAPPS01HANAP01 imports executed")




# # #import DEV01HANAD01 instance
# # print("Starting DEV01HANAD01 Imports")
# # tf.cmd('state rm', 'module.hana["DEV01HANAD01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["DEV01HANAD01"].aws_instance.this[0]', 'i-0912b2b23a22f78fe', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["DEV01HANAD01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["DEV01HANAD01"].aws_ebs_volume.this["sdb"]', 'vol-00ca9d2ae2f95fab1', var_file='terraform.tfvars', capture_output=False)
# # print("DEV01HANAD01 imports executed")



# # #import DEV01HANAD02 instance
# # print("Starting DEV01HANAD02 Imports")
# # tf.cmd('state rm', 'module.hana["DEV01HANAD02"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.hana["DEV01HANAD02"].aws_instance.this[0]', 'i-00cc3ff6e942a1e08', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.hana["DEV01HANAD02"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.hana["DEV01HANAD02"].aws_ebs_volume.this["sdb"]', 'vol-0fbec2661fe883d92', var_file='terraform.tfvars', capture_output=False)
# # print("DEV01HANAD02 imports executed")

# #import UPG01SQL01N instance
# # print("Starting UPG01SQL01 Imports")
# # tf.cmd('state rm', 'module.app["UPG01SQL01"].aws_instance.this[0]', capture_output=False)
# # tf.import_cmd('module.app["UPG01SQL01"].aws_instance.this[0]', 'i-04a73a058ef6278d3', var_file='terraform.tfvars', capture_output=False)
# # tf.cmd('state rm', 'module.app["UPG01SQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# # tf.import_cmd('module.app["UPG01SQL01"].aws_ebs_volume.this["sdb"]', 'vol-0fbec2661fe883d92', var_file='terraform.tfvars', capture_output=False)
# # print("UPG01SQL01 imports executed")

# #import UPG01SQL01N instance
# print("Starting UPG01SQL01N Imports")
# tf.cmd('state rm', 'module.app["UPG01SQL01N"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["UPG01SQL01N"].aws_instance.this[0]', 'i-09b992f32e4c4616a', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["UPG01SQL01N"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["UPG01SQL01N"].aws_ebs_volume.this["sdb"]', 'vol-0cb987611ef39a6a4', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["UPG01SQL01N"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["UPG01SQL01N"].aws_ebs_volume.this["sdc"]', 'vol-041235bf1785b0874', var_file='terraform.tfvars', capture_output=False)
# print("UPG01SQL01NN imports executed")





# #End of command execution

#import TECH-SPINDLETRAINING1 instance
print("Starting TECH-SPINDLETRAINING1 Imports")
tf.cmd('state rm', 'module.app["TECH-SPINDLETRAINING1"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["TECH-SPINDLETRAINING1"].aws_instance.this[0]', 'i-04ecfd9d58a6431ed', var_file='terraform.tfvars', capture_output=False)

 #import TECH-SPINDLETRAINING2 instance
print("Starting TECH-SPINDLETRAINING2 Imports")
tf.cmd('state rm', 'module.app["TECH-SPINDLETRAINING2"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["TECH-SPINDLETRAINING2"].aws_instance.this[0]', 'i-00e0111996c72e20e', var_file='terraform.tfvars', capture_output=False)

print("Finished executing commands!")