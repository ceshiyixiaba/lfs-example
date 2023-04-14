#!/usr/bin/env ruby

(1..200).each do |i|
  if (i % 2).zero?
    name = "%003d.lfs" % i
  else
    name = "%003d.txt" % i
  end
  File.open(name, 'a') do |f|
    f.puts name
  end
  `git add -A`
  `git commit -m "add #{name}"`
end
