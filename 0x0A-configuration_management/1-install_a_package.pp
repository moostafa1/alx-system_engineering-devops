<<<<<<< HEAD
# Using Puppet, install flask from pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
=======
#!/usr/bin/pup
# Install an especific version of flask (2.1.0)
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
}
