#
# Cookbook Name:: devloft-chef-server
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "yum-repoforge" if platform_family?("rhel")
package "htop"
package "telnet"
package "nano"
