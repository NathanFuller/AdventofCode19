if ARGV.empty?
  computer = File.open("2input.txt", 'r').read.split(',').map{ |x| x.to_i}
  computer[1] = 12
  computer[2] = 2
else
  computer = ARGV.map{ |x| x.to_i}
end


point = 0
while computer[point] != 99 do
  if computer[point] == 1
    computer[computer[point+3]] = computer[computer[point+1]] + computer[computer[point+2]]
  elsif computer[point] == 2
    computer[computer[point+3]] = computer[computer[point+1]] * computer[computer[point+2]]
  end
  point += 4
  print computer
end

print "\n"
print computer, "\n"
