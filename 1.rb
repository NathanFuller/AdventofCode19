def getFuel(mass)
  return mass / 3 - 2
end

total = 0

File.open("1input.txt", 'r').readlines.each do |mass|
  total += getFuel(mass.to_i)
end

puts total
