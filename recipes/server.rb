execute "apt-get update"

package "apache2"

file "/var/www/html/index.html" do
	content "<h1>Hello, world!</h1>
	
        IPADDRESS: #{node["ipaddress"]}
        HOSTNAME : #{node["hostname"]}
"
	action :create
end

service "apache2" do
	action [ :enable, :start ]
end
