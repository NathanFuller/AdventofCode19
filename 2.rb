if ARGV.empty?
  computer = File.open("2input.txt", 'r').read.split(',').map{ |x| x.to_i}
else
  computer = ARGV.map{ |x| x.to_i}
end

print computer

