<<<<<<< HEAD
# Create a file using puppet
file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
=======
# Creating new file
file {'/tmp/school':
  ensure  => file,
  path    => '/tmp/school',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  content => 'I love Puppet'
}
>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
