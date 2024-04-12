# install flask
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_Flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  require => Package['python3-pip'],
}
