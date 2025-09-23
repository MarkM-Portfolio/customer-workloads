#!/usr/bin/python
from python_terraform import *

tf = Terraform(working_dir='.')

#import GEN2HIBBRK01 instance
print("Starting GEN2HIBBRK01 Imports")
tf.cmd('state rm', 'module.app["GEN2HIBBRK01"].aws_instance.this[0]', capture_output=False)
tf.import_cmd('module.app["GEN2HIBBRK01"].aws_instance.this[0]', 'i-051391c61e08fb160', var_file='terraform.tfvars', capture_output=False)

print("GEN2HIBBRK01 imports executed")