#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2SALESSQL01 instance
print("Starting GEN2SALESSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_instance.this[0]', 'i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdb"]', 'vol-03574f40139e20f29', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-03574f40139e20f29:i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0730d1f158f8a84ef', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0730d1f158f8a84ef:i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdd"]', 'vol-0638836cc3b4917aa', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0638836cc3b4917aa:i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sde"]', 'vol-0656fa032b11828a5', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-0656fa032b11828a5:i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0388eaa5d14ad9da1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0388eaa5d14ad9da1:i-0ca17e0873d1191f1', var_file='terraform.tfvars', capture_output=False)
print("GEN2SALESSQL01 imports executed")

#import GEN2SALESSQL02 instance
print("Starting GEN2SALESSQL02 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_instance.this[0]', 'i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdb"]', 'vol-064d13a1a88d7a27a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-064d13a1a88d7a27a:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdc"]', 'vol-0d4ea77a9fb60dc24', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0d4ea77a9fb60dc24:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdd"]', 'vol-0770e689b0c6a0645', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-0770e689b0c6a0645:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sde"]', 'vol-002f2b880ec3c519e', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-002f2b880ec3c519e:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdf"]', 'vol-0b645426a1b87af17', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0b645426a1b87af17:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_ebs_volume.this["sdg"]', 'vol-0dbf039d39ef3e00a', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESSQL02"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0dbf039d39ef3e00a:i-0374609368e40b526', var_file='terraform.tfvars', capture_output=False)
print("GEN2SALESSQL02 imports executed")

#import GEN2DEMORDS01 instance
print("Starting GEN2DEMORDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2DEMORDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMORDS01"].aws_instance.this[0]', 'i-06afa45f7d38c5cf5', var_file='terraform.tfvars', capture_output=False)

print("GEN2DEMORDS01 imports executed")

#import GEN2SALESADFS01 instance
print("Starting GEN2SALESADFS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESADFS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESADFS01"].aws_instance.this[0]', 'i-072853e48725c364e', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESADFS01 imports executed")

#import GEN2DEMOSQL01 instance
print("Starting GEN2DEMOSQL01 Imports")
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_instance.this[0]', 'i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdb"]', 'vol-0072a6b0975809b2c', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0072a6b0975809b2c:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdc"]', 'vol-0eb030b06ba27dfa4', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdc"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdc"]', '/dev/sdc:vol-0eb030b06ba27dfa4:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdd"]', 'vol-02d2312925edb06ba', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdd"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdd"]', '/dev/sdd:vol-02d2312925edb06ba:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sde"]', 'vol-09d8492a0742b9eae', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sde"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sde"]', '/dev/sde:vol-09d8492a0742b9eae:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdf"]', 'vol-0467b9f0422bcc722', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdf"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdf"]', '/dev/sdf:vol-0467b9f0422bcc722:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_ebs_volume.this["sdg"]', 'vol-0a80bcb9ac19a0512', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdg"]', capture_output=False)
tf.import_cmd('module.app["GEN2DEMOSQL01"].aws_volume_attachment.this["sdg"]', '/dev/sdg:vol-0a80bcb9ac19a0512:i-07f7d47e5b951cb45', var_file='terraform.tfvars', capture_output=False)
print("GEN2DEMOSQL01 imports executed")

#import GEN2SALESAPP01 instance
print("Starting GEN2SALESAPP01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESAPP01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP01"].aws_instance.this[0]', 'i-0b13db1fe5b215993', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESAPP01 imports executed")

#import GEN2SALESAPP03 instance
print("Starting GEN2SALESAPP03 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESAPP03"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP03"].aws_instance.this[0]', 'i-0732a515ac3f8f11d', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SALESAPP03"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP03"].aws_ebs_volume.this["sdb"]', 'vol-02194841716ec9bb1', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESAPP03"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP03"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-02194841716ec9bb1:i-0732a515ac3f8f11d', var_file='terraform.tfvars', capture_output=False)
print("GEN2SALESAPP03 imports executed")

#import GEN2SALESAPP04 instance
print("Starting GEN2SALESAPP04 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESAPP04"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP04"].aws_instance.this[0]', 'i-07e5cb9a7b7dbbdfa', var_file='terraform.tfvars', capture_output=False)

tf.cmd('state rm', 'module.app["GEN2SALESAPP04"].aws_ebs_volume.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP04"].aws_ebs_volume.this["sdb"]', 'vol-0fef58d4314ab93af', var_file='terraform.tfvars', capture_output=False)
tf.cmd('state rm', 'module.app["GEN2SALESAPP04"].aws_volume_attachment.this["sdb"]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP04"].aws_volume_attachment.this["sdb"]', '/dev/sdb:vol-0fef58d4314ab93af:i-07e5cb9a7b7dbbdfa', var_file='terraform.tfvars', capture_output=False)
print("GEN2SALESAPP04 imports executed")

#import GEN2SALESEAM01 instance
print("Starting GEN2SALESEAM01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESEAM01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESEAM01"].aws_instance.this[0]', 'i-0e7033e2910d140a2', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESEAM01 imports executed")

#import GEN2SALESRDS01 instance
print("Starting GEN2SALESRDS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESRDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESRDS01"].aws_instance.this[0]', 'i-01317aa3cccac992c', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESRDS01 imports executed")

#import GEN2SALESIOS01 instance
print("Starting GEN2SALESIOS01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESIOS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESIOS01"].aws_instance.this[0]', 'i-01ec1c3832242f6e4', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESIOS01 imports executed")

#import GEN2SALESV101 instance
print("Starting GEN2SALESV101 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESV101"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESV101"].aws_instance.this[0]', 'i-02ccf45cce077688c', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESV101 imports executed")

#import GEN2SALESEAM02 instance
print("Starting GEN2SALESEAM02 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESEAM02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESEAM02"].aws_instance.this[0]', 'i-0aa2049fd769fe666', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESEAM02 imports executed")

#import GEN2SALESAPP02 instance
print("Starting GEN2SALESAPP02 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESAPP02"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESAPP02"].aws_instance.this[0]', 'i-062703aa389e5f519', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESAPP02 imports executed")

#import GEN2SALESINT01 instance
print("Starting GEN2SALESINT01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESINT01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESINT01"].aws_instance.this[0]', 'i-0a91494e4440095d3', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESINT01 imports executed")

#import GEN2SALESDMZ01instance
print("Starting GEN2SALESDMZ01 Imports")
tf.cmd('state rm', 'module.app["GEN2SALESDMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2SALESDMZ01"].aws_instance.this[0]', 'i-0c848189ebb2dc9bf', var_file='terraform.tfvars', capture_output=False)

print("GEN2SALESDMZ01 imports executed")


#End of command execution
print("Finished executing commands!")
