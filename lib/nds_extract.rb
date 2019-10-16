require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  index_1 = 0
  while index_1 < nds.count do
    current_name = nds[index_1][:name]
    result[current_name] = 0
    director_data = nds[index_1]
    #index_2 = 0
    #while index_2 < nds[index_1][:movies].count do
    #  result[current_name] += nds[index_1][:movies][index_2][:worldwide_gross]
    #  index_2 += 1
    #end
    result[current_name] += gross_for_director(director_data)
    index_1 += 1
  end
  nil
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  temp_int
  index_2 = 0
  while index_2 < director_data[:movies].count do
    temp_int += director_data[:movies][index_2][:worldwide_gross]
    index_2 += 1 
  end
end
