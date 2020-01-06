$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

index = 0

total = 0

place = director_data[:movies].length
while index < place do
  total += director_data[:movies][index][:worldwide_gross]

  index += 1
end

return total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

  index = 0
  result = {}


while index < nds.length do
  name = nds[index][:name]

  result[name] = 0

  index2 = 0
  while index2 < nds[index][:movies].length do
gross = nds[index][:movies][index2][:worldwide_gross]
    result[name] = directors_totals(gross)

    index2 += 1

  end
  index += 1
end

 return result

end
