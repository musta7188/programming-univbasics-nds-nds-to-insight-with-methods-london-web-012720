$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

index = 0

total = 0

while index < director_data[:movies].length do
  total += director_data[:movies][index][:worldwide_gross]

  index += 1
end

 total

end


def directors_totals(nds)

  index = 0
  result = {}

while index < nds.size do
  director = nds[index]

result[director[:name]] = gross_for_director(director)

index += 1

end

result

end
