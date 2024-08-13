<<<<<<< HEAD
# Executes a bash command
exec { 'kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/usr/sbin']
=======
# kill a process
exec { 'pkill':
  command => 'pkill -9 -f killmenow',
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
}
