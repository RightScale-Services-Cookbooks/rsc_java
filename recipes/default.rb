#
# Cookbook Name:: rsc_java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.override['java']['install_flavor'] = 'oracle'
node.override['java']['jdk_version'] = '8'
node.override['java']['oracle']['accept_oracle_download_terms'] = 'true'

include_recipe 'java::default'
