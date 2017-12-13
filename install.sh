#!/bin/bash


install_mongdb(){
	mongo -version &> /dev/null
	[ $? -eq 0 ] && echo "mongodb已安装过" && return 0
	cat ./conf/mongodb-org-3.6.repo > /etc/yum.repos.d/mongodb-org-3.6.repo

	yum install -y mongodb-org > ./message.txt

	systemctl start mongod.service 
	systemctl enable mongod.service 

}

install_mongdb



#默认使用27017端口

