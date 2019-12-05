if ARGV.empty?
  computer = File.open("2input.txt", 'r').read.split(',').map{ |x| x.to_i}
else
  computer = ARGV.map{ |x| x.to_i}
end


def compute(memory, noun, verb)
  computer = memory.clone
  computer[1] = noun
  computer[2] = verb
  point = 0
  while computer[point] != 99 do
    if computer[point] == 1
      computer[computer[point+3]] = computer[computer[point+1]] + computer[computer[point+2]]
    elsif computer[point] == 2
      computer[computer[point+3]] = computer[computer[point+1]] * computer[computer[point+2]]
    end
    point += 4
  end
  return computer[0]
end

print "\n"


(0 .. 99).each do |n|
  (0 .. 99).each do |v|
    if compute(computer, n, v) == 19690720
      puts "-----------------------------FOUND! Noun: #{n} Verb: #{v}"
    end
  end
end
