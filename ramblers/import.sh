#import EU57RDS02 instance
echo starting EU57RDS02 Imports
terraform state rm 'module.app["EU57RDS02"].aws_instance.this[0]'
terraform import -var-file="terraform.tfvars" 'module.app["EU57RDS02"].aws_instance.this[0]' i-03b8338e160970caf

echo EU57RDS02 imports executed

#End of command execution
echo Finished executing commands!