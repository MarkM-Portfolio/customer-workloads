#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import US10DMZ01 instance
print("Starting US10DMZ01 Imports")
tf.cmd('state rm', 'module.app["US10DMZ01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US10DMZ01"].aws_instance.this[0]', 'i-0ff9a05acd8fd9d03', var_file='terraform.tfvars', capture_output=False)

print("US10DMZ01 imports executed")

#import US10HWIN01 instance
print("Starting US10HWIN01 Imports")
tf.cmd('state rm', 'module.app["US10HWIN01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US10HWIN01"].aws_instance.this[0]', 'i-0383ff1e7b209a316', var_file='terraform.tfvars', capture_output=False)

print("US10HWIN01 imports executed")

#import US10RDS01 instance
print("Starting US10RDS01 Imports")
tf.cmd('state rm', 'module.app["US10RDS01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["US10RDS01"].aws_instance.this[0]', 'i-0024480b28b37018e', var_file='terraform.tfvars', capture_output=False)

print("US10RDS01 imports executed")


#End of command execution
print("Finished executing commands!")
