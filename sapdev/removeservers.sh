#!/usr/bin/bash

 

 

STATE_LIST=(`terraform state list | grep UPG01SQL01N`)

 

for i in ${STATE_LIST[@]}; do
	echo Removing "$i"
	terraform state rm "$i"
done

echo "DONE"

# STATE_LIST=(`terraform state list | grep module.domain_controller_ohio`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.beyond_Log_ohio`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.cyberark_ohio`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.monitoring_server`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.beyond_servers`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.ohio_dc`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.beyond_cc_servers`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.manage_engine_ohio`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.manage_engine_london`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done

# STATE_LIST=(`terraform state list | grep module.citrix_london`)

 

# for i in ${STATE_LIST[@]}; do
# 	echo Removing "$i"
# 	terraform state rm "$i"
# done



 
# echo "DONE"