#!/usr/bin/env ruby

E = [] # Main array
c = [] # calories of one elf

File.open("input_1.txt", "r").each_line do |line|
  puts line
  if line != "\n"
    c << line.gsub("\n","")
  else
    E << c
    c = []
  end
end
E << c
puts "--------------------------------------"

MAX = []  # Max sum of calories
for i in E
  puts "elf: " + i.to_s
  sum = 0
  for y in i
    #puts "cal:" + y
    sum = sum + y.to_i
  end
  #puts "sum: " + sum.to_s
  MAX << sum

end

r = MAX.sort.reverse

sum3 = r[0] + r[1] + r[2]
puts "sum3: " + sum3.to_s

#puts "max_sum: " + MAX.to_s
#pp E
