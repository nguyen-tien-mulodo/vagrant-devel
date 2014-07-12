#!/bin/sh
projectDependencies=$2
echo "deps $projectDependencies"
if [ -n "$projectDependencies" ]; then
	echo "project dependencies found $projectDependencies"
	echo "run project provisioner"
	/vagrant/provision/project_provision.sh $1 $2
else
	echo "no explicit project dependencies found run full provisioner"
	echo "run project provisioner"
	/vagrant/provision/full_provision.sh
fi