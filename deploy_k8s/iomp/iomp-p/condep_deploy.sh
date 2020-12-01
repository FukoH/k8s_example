#!/bin/sh

export NEED_VIPER=no

condep2 -v

echo "condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app no --force"

condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app no --force

echo "condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app yes --force"

condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app yes --force

echo "change cluster name"

condep2 set -c bp-appk8s

echo "condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app no --force"

condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app no --force

echo "condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app yes --force"

condep2 deploy -d CPAAS_MOAP_BAK/devk8s/iomp-p --app yes --force

if [ $? = 0 ] ;then
	exit 0
else
	exit 151
fi