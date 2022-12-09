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


# PART 2
puts "--------------------------------------"

A = [] # Main array
#File.open("input_2_sample.txt", "r").each_line do |line|
File.open("input_2.txt", "r").each_line do |line|
  puts line
  A << line.gsub("\n","").split
end

pp A

REZ = []
puts A.length
for i in A
  if i[1] == "X"
    REZ << 1
  elsif i[1] == "Y"
    REZ << 2
  elsif i[1] == "Z"
    REZ << 3
  end

  if (i[0] == "A" and i[1] == "X") or (i[0] == "B" and i[1] == "Y") or (i[0] == "C" and i[1] == "Z")
    REZ << 3
  elsif (i[0] == "A" and i[1] == "Y") or (i[0] == "B" and i[1] == "Z") or (i[0] == "C" and i[1] == "X")
    REZ << 6
  elsif (i[0] == "A" and i[1] == "Z") or (i[0] == "B" and i[1] == "X") or (i[0] == "C" and i[1] == "Y")
    REZ << 0
  end
end

pp REZ

sum = 0
for i in REZ
  #puts i
  sum = sum + i
end

pp sum

# A X - Rock - 1
# B Y - Paper - 2
# C Z - Scissors - 3
#
# Lost - 0
# Draw - 3
# Win - 6















