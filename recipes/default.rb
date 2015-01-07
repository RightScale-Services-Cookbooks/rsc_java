#
# Cookbook Name:: rsc_java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.override['java']['install_flavor']                         = node['rsc_java']['install_flavor']
node.override['java']['jdk_version']                            = node['rsc_java']['jdk_version']
node.override['java']['oracle']['accept_oracle_download_terms'] = node['rsc_java']['oracle']['accept_oracle_download_terms']

include_recipe 'java::default'
