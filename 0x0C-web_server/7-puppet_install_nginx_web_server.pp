<<<<<<< HEAD
# Puppet manifest to install nginx
package { 'nginx':
  ensure => installed,
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
=======
# Script to install nginx using puppet

package {'nginx':
	  ensure => 'present',
}

exec {'install':
	  command  => 'sudo apt-get update ; sudo apt-get -y install nginx',
		     provider => shell,
}

exec {'Holberton':
	  command  => 'echo "Holberton School" | sudo tee /var/www/html/index.html',
		     provider => shell,
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/www.youtube.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
	  provider => shell,
}

exec {'run':
	  command  => 'sudo service nginx restart',
		     provider => shell,
>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
}
