#!/usr/bin/env ruby
<<<<<<< HEAD
# Textme
puts ARGV[0]
       .scan(/(?<=from:|to:|flags:).*?(?=\])/)
       .join(',')
=======

sender = ARGV[0].scan(/(?<=\[from:)[^ ]+(?=])/).flatten.join
receiver = ARGV[0].scan(/(?<=\[to:)[^ ]+(?=])/).flatten.join
flag = ARGV[0].scan(/(?<=\[flags:)[^ ]+(?=])/).flatten.join

puts "#{sender},#{receiver},#{flag}"
>>>>>>> 9209bedf33087ed8b366fa0c874c22360a6c675f
