<<<<<<< HEAD
# Puppet script to create ssh config file
=======
#!/usr/bin/env bash
# configuration changes automation using Puppet

>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/school',
}
