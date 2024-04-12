# Installing flask
package { 'pip3':
  ensure   => 'installed',
  provider => 'pip3',
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['pip3'],
}
