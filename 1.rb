def getFuel(mass)
  return mass / 3 - 2
end

def getFuelforFuel(mass)
  mff = mass / 3 - 2
  if mff <= 0
    return 0
  else
    return mff + getFuelforFuel(mff)
  end
end

#First dragon: Mass of module. Knows how much fuel for it.
#Next dragon: Mass of that fuel. Knows how much fuel to carry *it*. 
#.
#.
#Last dragon: Mass of that fuel. Knows we don't need more for it.


total = 0

File.open("1input.txt", 'r').readlines.each do |mass|
  total += getFuelforFuel(mass.to_i)
end

puts total
