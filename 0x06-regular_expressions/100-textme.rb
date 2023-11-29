#!/usr/bin/env ruby

sender = ARGV[0].scan(/(?<=\[from:)[^ ]+(?=])/).flatten.join
receiver = ARGV[0].scan(/(?<=\[to:)[^ ]+(?=])/).flatten.join
flag = ARGV[0].scan(/(?<=\[flags:)[^ ]+(?=])/).flatten.join

puts "#{sender}, #{receiver}, #{flag}"
