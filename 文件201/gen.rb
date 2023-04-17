#!/usr/bin/env ruby

(1..201).each do |i|
  if (i % 2).zero?
    name = "文件-%003d.txt" % i
  else
    name = "文件-%003d.txt" % i
  end
  File.open(name, 'a') do |f|
    f.puts name
  end
  `git add -A`
  `git commit -m "add #{name}"`
end
