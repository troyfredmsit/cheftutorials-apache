#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
#
#
package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "<h1>Hello, world!</h1?
		<h1>Hostname: #{node['hostname']}</h1>	
		<h1>IP Address: #{node['ipaddress']}</h1>
		<h1>CPU: #{node['cpu']['0']['mhz']}</h1>
		<h1>Hostname: #{node['memory']['total']}</h1>


"
end

service 'httpd' do
	action [:enable, :start]

end

#service is one of the few fields that has no default
#
#
