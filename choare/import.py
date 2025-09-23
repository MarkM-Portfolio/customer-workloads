#!/usr/bin/python
from python_terraform import * 

tf = Terraform(working_dir='.')

# #import BHX2CHOADFS01 instance
# print("Starting BHX2CHOADFS01 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHOADFS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOADFS01"].aws_instance.this[0]', 'i-03eb1f0a70a46a1e8', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHOADFS01 imports executed")

# #import BHX2CHOAPP01 instance
# print("Starting BHX2CHOAPP01 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHOAPP01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOAPP01"].aws_instance.this[0]', 'i-0cbfb71a20980dc4e', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHOAPP01 imports executed")

#import BHX2CHODMZ01 instance
print("Starting BHX2CHODMZ01 Imports")
tf.cmd('state rm', 'module.app["BHX2CHODMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["BHX2CHODMZ01"].aws_instance.this[0]', 'i-0317e4a66bcde348e', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["BHX2CHODMZ01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CHODMZ01"].aws_ebs_volume.this["sdb"]', 'vol-0b93a3ce5804f36ca', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["BHX2CHODMZ01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["BHX2CHODMZ01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0b93a3ce5804f36ca:i-0317e4a66bcde348e', var_file='terraform.tfvars', capture_output=False)      
print("BHX2CHODMZ01 imports executed")

# #import BHX2CHODMZ02 instance
# print("Starting BHX2CHODMZ02 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHODMZ02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHODMZ02"].aws_instance.this[0]', 'i-09f458eb06651363b', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHODMZ02 imports executed")

# #import BHX2CHODMZ03 instance
# print("Starting BHX2CHODMZ03 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHODMZ03"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHODMZ03"].aws_instance.this[0]', 'i-0174578cafe2a511e', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHODMZ03 imports executed")

# #import BHX2CHORDS01 instance
# print("Starting BHX2CHORDS01 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHORDS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHORDS01"].aws_instance.this[0]', 'i-0bf6b15d80873e6ca', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHORDS01 imports executed")

# #import BHX2CHOSQL01 instance
# print("Starting BHX2CHOSQL01 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_instance.this[0]', 'i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)

# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdb"]', 'vol-05b9070e7df2df56a', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-05b9070e7df2df56a:i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)      
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0629789b4b55e3758', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0629789b4b55e3758:i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)      
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0ce1e8e089a183227', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0ce1e8e089a183227:i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)      
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sde"]', 'vol-00e473cd453d7208c', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-00e473cd453d7208c:i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)      
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0c587ab19126d39be', var_file='terraform.tfvars', capture_output=False)
# tf.cmd('state rm', 'module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0c587ab19126d39be:i-0eef41226328bec4c', var_file='terraform.tfvars', capture_output=False)      
# print("BHX2CHOSQL01 imports executed")

# #import BHX2CHOAPP02 instance
# print("Starting BHX2CHOAPP02 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHOAPP02"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOAPP02"].aws_instance.this[0]', 'i-0dad1300ec4289bc7', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHOAPP02 imports executed")

# #import BHX2CHOBRK01 instance
# print("Starting BHX2CHOBRK01 Imports")
# tf.cmd('state rm', 'module.app["BHX2CHOBRK01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.app["BHX2CHOBRK01"].aws_instance.this[0]', 'i-021610a32a74bd38e', var_file='terraform.tfvars', capture_output=False)

# print("BHX2CHOBRK01 imports executed")

# #import DCHO02V101 instance
# print("Starting DCHO02V101 Imports")
# tf.cmd('state rm', 'module.replatform["DCHO02V101"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.replatform["DCHO02V101"].aws_instance.this[0]', 'i-024f3708a30e5a4ce', var_file='terraform.tfvars', capture_output=False)

# print("DCHO02V101 imports executed")

# #import DCHO02IPOS01 instance
# print("Starting DCHO02IPOS01 Imports")
# tf.cmd('state rm', 'module.replatform["DCHO02IPOS01"].aws_instance.this[0]', capture_output=False)
# tf.import_cmd('module.replatform["DCHO02IPOS01"].aws_instance.this[0]', 'i-0edc0a57a77d92da4', var_file='terraform.tfvars', capture_output=False)

# print("DCHO02IPOS01 imports executed")


#End of command execution
print("Finished executing commands!")