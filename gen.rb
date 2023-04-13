#!/usr/bin/env ruby

(1..100).each do |i|
  if (i % 2).zero?
    name = "%003d.txt" % i
  else
    name = "%003d.lfs" % i
  end
  File.open(name, 'w') do |f|
    f.puts name
  end
end
